pipeline {
    agent none
    stages {
        // stage ("Download Github repo") {
        //     agent any
        //     steps {
        //         git branch: "main", url: "https://github.com/Zia-Saeed/Full-Fledge-Blog-Website"
        //     }
        // }
        // stage ("Build project Image") {
        //     agent {
        //         docker {
        //             image "python:3.11-slim"
        //         }
        //     }
        //     steps {
        //         sh """
        //             python -m venv venv
        //             . venv/bin/activate
        //             pip install --no-cache-dir -r requirements.txt
        //         """
        //     }
        // }
        stage ("Run python image") {
            agent {
                docker {
                    image "python:3.11-slim"
                    args "-p 5000:5000"
                }
            }
            steps {
                sh """
                    python -m venv venv
                    . venv/bin/activate
                    pip install --no-cache-dir -r requirements.txt
                    pip install gunicorn
                    gunicorn --bind 0.0.0.0:5000 main:app
                """
            }
        }
    }
}
