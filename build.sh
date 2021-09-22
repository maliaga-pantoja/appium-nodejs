# !/bin/sh
rm -rf bundle.zip webdriverio-sample-appium-tests-1.0.0.tgz
podman run --rm -v $PWD:/app -w /app node npm i
podman run --rm -v $PWD:/app -w /app node npm run bundle
./node_modules/.bin/npm-bundle bundle.tgz
zip -r9 bundle.zip bundle.tgz
