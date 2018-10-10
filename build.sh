if [ ${TRAVIS_PULL_REQUEST} = 'false' ] && [[ $TRAVIS_BRANCH = 'master'  ||  ${TRAVIS_BRANCH} = 'develop' ]]; then
    echo 'Checking Quality Gates'
    mvn -B clean verify sonar:sonar\
     -Dsonar.host.url=${SONAR_URL}\ 
     -Dsonar.projectKey=${SONAR_PROJECT}\ 
     -Dsonar.organization= ${SONAR_ORGANIZATION}\ 
     -Dsonar.login==${SONAR_LOGIN} 
fi


