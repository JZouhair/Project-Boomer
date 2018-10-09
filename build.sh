if [ ${TRAVIS_PULL_REQUEST} = 'false' ] && [[ $TRAVIS_BRANCH = 'master'  ||  ${TRAVIS_BRANCH} = 'develop' ]]; then
    echo 'Checking Quality Gates'
    mvn -B clean verify sonar:sonar  -Dsonar.host.url=https://sonarcloud.io -Dsonar.projectKey=boomerkey  -Dsonar.organization=jzouhair-github -Dsonar.login=1362f79ceac8f5e40f409c38b02696ba8427da72;
fi


