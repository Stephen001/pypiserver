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
  stages.template("Build image", "docker", {
    sh "docker build -t pypiserver ."
  })
  stages.template("Push image", "docker", {
    utils.tagAndPushImage("pypiserver", "pypiserver", "latest", "latest")
  })
})
