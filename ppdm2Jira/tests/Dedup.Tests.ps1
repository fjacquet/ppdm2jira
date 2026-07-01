BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
}

Describe 'Resolve-ppdm2JiraAction' {
    It 'returns Comment with the existing key when an open issue is found' {
        InModuleScope ppdm2Jira {
            Mock Find-ppdm2JiraOpenIssue { 'OPS-7' }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action | Should -Be 'Comment'
            $a.Key    | Should -Be 'OPS-7'
        }
    }
    It 'returns Create when no open issue is found, searching by sanitised label' {
        InModuleScope ppdm2Jira {
            $script:label = $null
            Mock Find-ppdm2JiraOpenIssue { $script:label = $Label; $null }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action     | Should -Be 'Create'
            $a.Key        | Should -BeNullOrEmpty
            $script:label | Should -Be 'ppdm_prod1_a1'
        }
    }
    It 'also searches by the jobId correlation label when the incident has a jobId' {
        InModuleScope ppdm2Jira {
            $script:lbl = $null; $script:corr = $null
            Mock Find-ppdm2JiraOpenIssue { $script:lbl = $Label; $script:corr = $CorrelationLabel; $null }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:act-7'; instanceId = 'prod1'; ppdmLinks = [pscustomobject]@{ jobId = 'act-7' } }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action    | Should -Be 'Create'
            $script:lbl  | Should -Be 'ppdm_prod1_act-7'
            $script:corr | Should -Be 'ppdm_job_prod1_act-7'
        }
    }
}

Describe 'Get-ppdm2JiraCorrelationLabel' {
    It 'returns null when the incident has no jobId' {
        InModuleScope ppdm2Jira {
            $inc = [pscustomobject]@{ instanceId = 'prod1'; ppdmLinks = [pscustomobject]@{ id = 'al-1' } }
            Get-ppdm2JiraCorrelationLabel -Incident $inc | Should -BeNullOrEmpty
        }
    }
    It 'builds a sanitised job label from instanceId + jobId' {
        InModuleScope ppdm2Jira {
            $inc = [pscustomobject]@{ instanceId = 'prod1'; ppdmLinks = [pscustomobject]@{ jobId = 'job-42' } }
            Get-ppdm2JiraCorrelationLabel -Incident $inc | Should -Be 'ppdm_job_prod1_job-42'
        }
    }
}

Describe 'Merge-ppdm2JiraCorrelatedIncidents' {
    It 'collapses an alert and activity sharing a jobId into one activity-primary incident' {
        InModuleScope ppdm2Jira {
            $alert    = [pscustomobject]@{ source='alert';    instanceId='prod1'; dedupKey='ppdm:prod1:al-3';  body='alr'; ppdmLinks=[pscustomobject]@{ jobId='act-7' } }
            $activity = [pscustomobject]@{ source='activity'; instanceId='prod1'; dedupKey='ppdm:prod1:act-7'; body='act'; ppdmLinks=[pscustomobject]@{ jobId='act-7' } }
            $merged = Merge-ppdm2JiraCorrelatedIncidents -Incidents @($alert, $activity)
            $merged.Count     | Should -Be 1
            $merged[0].source | Should -Be 'activity'
            $merged[0].body   | Should -BeLike '*ppdm:prod1:al-3*'   # dropped event recorded for traceability
        }
    }
    It 'keeps incidents with different jobIds separate' {
        InModuleScope ppdm2Jira {
            $a = [pscustomobject]@{ source='activity'; instanceId='prod1'; dedupKey='ppdm:prod1:act-1'; body='a'; ppdmLinks=[pscustomobject]@{ jobId='act-1' } }
            $b = [pscustomobject]@{ source='activity'; instanceId='prod1'; dedupKey='ppdm:prod1:act-2'; body='b'; ppdmLinks=[pscustomobject]@{ jobId='act-2' } }
            (Merge-ppdm2JiraCorrelatedIncidents -Incidents @($a, $b)).Count | Should -Be 2
        }
    }
    It 'passes through an incident that has no jobId' {
        InModuleScope ppdm2Jira {
            $x = [pscustomobject]@{ source='alert'; instanceId='prod1'; dedupKey='ppdm:prod1:al-9'; body='x'; ppdmLinks=[pscustomobject]@{ id='al-9' } }
            (Merge-ppdm2JiraCorrelatedIncidents -Incidents @($x)).Count | Should -Be 1
        }
    }
}
