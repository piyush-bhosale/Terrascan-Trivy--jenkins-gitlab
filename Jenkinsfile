pipeline {
   agent any
   environment {
       TERRASCAN_OUTPUT = "terrascan_report.json"
   }
   stages {
       stage('Clone Repository') {
           steps {
               git url: 'https://github.com/piyush-bhosale/terrascan.git', branch: 'main'
           }
       }
       stage('Install Dependencies') {
           steps {
               script {
                   // Ensure terrascan is available
                   sh 'which terrascan || echo "Terrascan is not installed!"'
               }
           }
       }
       stage('Run Terrascan') {
           steps {
               script {
                   echo "Running Terrascan..."
                   sh 'terrascan scan -o json > $TERRASCAN_OUTPUT || true'
               }
           }
       }
       stage('Archive Results') {
           steps {
               archiveArtifacts artifacts: "$TERRASCAN_OUTPUT", allowEmptyArchive: true
           }
       }
       stage('Display Terrascan Results') {
           steps {
               script {
                   def scanResults = readFile("$TERRASCAN_OUTPUT")
                   echo "Terrascan Report:\n${scanResults}"
               }
           }
       }
   }
   post {
       always {
           echo "Pipeline completed. Cleaning up workspace."
           cleanWs()
       }
   }
}
has context menu
