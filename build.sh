# !/bin/sh
rm -rf bundle.zip webdriverio-sample-appium-tests-1.0.0.tgz
podman run --rm -v $PWD:/app -w /app node npm i
podman run --rm -v $PWD:/app -w /app node npm run bundle
zip -r9 bundle.zip webdriverio-sample-appium-tests-1.0.0.tgz
