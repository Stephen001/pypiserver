library(
  identifier: "themelio@master",
  retriever: modernSCM(
    [
      $class: 'GitSCMSource',
      remote: 'https://github.com/rehfeldmedical/themelio.git',
      credentialsId: 'github'
    ]
  )
)

pipelines.template("pypiserver", env, { context ->
  stage("Build image") {
    container("docker") {
      sh "docker build -t pypiserver ."
    }
  }

  stage("Push image") {
    container("docker") {
      utils.tagAndPushImage("pypiserver", "pypiserver", "latest", "latest")
    }
  }
}, [:])
