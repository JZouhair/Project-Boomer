if [ ${TRAVIS_PULL_REQUEST} = 'false' ] && [[ $TRAVIS_BRANCH = 'master'  ||  ${TRAVIS_BRANCH} = 'develop' ]]; then
    echo 'Checking Quality Gates'
    mvn -B clean verify sonar:sonar  -Dsonar.host.url=https://sonarcloud.io -Dsonar.projectKey=JZouhair_sonarCloud-Test -Dsonar.organization=JZouhair-github -Dsonar.login=3acb4bc4935c13818fb1e43374dea683e06eaca9;
fi


