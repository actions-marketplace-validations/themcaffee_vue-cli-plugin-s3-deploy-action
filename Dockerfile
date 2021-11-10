FROM node:14

LABEL "com.github.actions.name"="vue cli plugin s3 deploy action"
LABEL "com.github.actions.description"="A Github action for vue-cli-plugin-s3-deploy"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/themcaffee/vue-cli-plugin-s3-deploy-action"
LABEL maintainer="themcaffee"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]