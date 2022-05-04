node {
    checkout scm
    def customImage = docker.build("my-image:wohoo")
        customImage.inside {
        sh 'make unit_test'
    }
}