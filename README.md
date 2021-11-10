# vue-cli-plugin-s3-deploy-action
A Github action for [themcaffee/vue-cli-plugin-s3-deploy](https://github.com/themcaffee/vue-cli-plugin-s3-deploy) ☁️

## An example Github Action
```yaml
name: Upload Vue App to S3

on:
  push:
    branches:
    - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2
    - name: Deploy
      uses: themcaffee/vue-cli-plugin-s3-deploy-action@master
      env:
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        BASE_DIRECTORY: /web
```


Thanks to [multiplegeorges](https://github.com/multiplegeorges/vue-cli-plugin-s3-deploy) and [jackdcasey](https://github.com/jackdcasey/vue-cli-plugin-s3-deploy-action) for the base of the project.