if [ ${TRAVIS_PULL_REQUEST} = 'false' ] && [[ $TRAVIS_BRANCH = 'master'  ||  ${TRAVIS_BRANCH} = 'develop' ]]; then
    echo 'Checking Quality Gates'
    mvn -B clean verify sonar:sonar  -Dsonar.host.url=https://sonarcloud.io -Dsonar.projectKey=JZouhair_sonarCloud-Test -Dsonar.organization=jzouhair-github -Dsonar.login=${SONAR_LOGIN};
elif [ ${TRAVIS_PULL_REQUEST} != 'false' ]; then
    echo 'Build and analyze pull request'
    mvn -B clean verify sonar:sonar -Dsonar.host.url=https://sonarcloud.io -Dsonar.projectKey=JZouhair_sonarCloud-Test -Dsonar.organization=jzouhair-github -Dsonar.login=${SONAR_LOGIN} -Dsonar.github.oauth=a354487a8611ee9dc18215995f1a2c54a596eeed -Dsonar.pullrequest.github.repository=jzouhair/devops -Dsonar.pullrequest.provider=GitHub -Dsonar.pullrequest.branch=${TRAVIS_BRANCH} -Dsonar.pullrequest.key=${TRAVIS_PULL_REQUEST};
fi