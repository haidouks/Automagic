pipeline {
  agent any
  stages {
    stage('Download Artifacts') {
      steps {
        archiveArtifacts '*'
      }
    }
    stage('Unit Tests') {
      steps {
        powershell(script: 'Modules/Automagic/InvokeTests.ps1', returnStatus: true, encoding: 'UTF8')
      }
    }
    stage('NUnit') {
      steps {
        nunit(keepJUnitReports: true)
      }
    }
  }
}