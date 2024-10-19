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
                   // Ensure Terrascan is available or print a warning
                   sh 'which terrascan || echo "Terrascan is not installed!"'
               }
           }
       }
       stage('Run Terrascan') {
           steps {
               script {
                   echo "Running Terrascan..."
                   // Perform the scan and export the output to a file
                   sh 'terrascan scan -o json > $TERRASCAN_OUTPUT || true'
               }
           }
       }
       stage('Display Report') {
           steps {
               script {
                   // Display the contents of the Terrascan report in the Jenkins console
                   echo "Terrascan Report:"
                   sh "cat $TERRASCAN_OUTPUT"
               }
           }
       }
   }
   post {
       always {
           echo "Pipeline completed. Cleaning up workspace."
           cleanWs()  // Optional: Cleans the workspace after the build completes
       }
   }
}
