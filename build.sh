if [ ${TRAVIS_PULL_REQUEST} = 'false' ] && [[ $TRAVIS_BRANCH = 'master'  ||  ${TRAVIS_BRANCH} = 'develop' ]]; then
    echo 'Checking Quality Gates'
    mvn -B clean verify sonar:sonar  -Dsonar.host.url=https://sonarcloud.io -Dsonar.projectKey=boomerkey  -Dsonar.organization=jzouhair-github -Dsonar.login=53f75ec996b4bd6151b4301bb93ce24b4cbb061a;
fi


