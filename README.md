# App Center Sample App for macOS (Swift)

The macOS application in this repository and its corresponding tutorials will help you quickly and easily onboard to Visual Studio App Center.

## About this repository

The App Center SDK modules are already integrated within the application. Simply follow the tutorials to learn how to use each service.

### Build status (master branch)

| Build Service   | Status                                                                                                                                                                                                                                                               |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| App Center      | [![Build status](https://build.appcenter.ms/v0.1/apps/22f12fa6-2a82-47a5-be63-5ec1ad81be34/branches/master/badge)](https://appcenter.ms)                                                                                                                             |
| Azure Pipelines | [![Build Status](https://dev.azure.com/msmobilecenter/Mobile-Center/_apis/build/status/sampleapp/microsoft.appcenter-sampleapp-macos-swift?branchName=master)](https://dev.azure.com/msmobilecenter/Mobile-Center/_build/latest?definitionId=3727&branchName=master) |

## Build the sample app

After forking the repository, you'll need to install CocoaPods to build the app.

```sh
sudo gem install cocoapods
```

Next, install the dependencies.

```sh
pod install
```

Open the .xcworkspace. The app can now build and run. You can learn to use the sample app with App Center with the tutorials below.

## Codesigning

_Codesigning is optional, but recommended._

Codesigning will allow you to deploy this sample app to your device. The **Build** and **Distribute** tutorials recommend that you codesign.

To sign the app in Xcode:

1. Open **.xcworkspace** from the sample app's folder.
2. Go to **General** within the .xcworkspace file.
3. Under **Identity**, edit the **Bundle Identifier** to match the app ID.
4. Import and select the provisioning profile under **Signing (Debug)** and **Signing (Release)**.

## Tutorial links

Begin with the [Getting Started](https://docs.microsoft.com/en-us/appcenter/quickstarts/macos/getting-started) tutorial. After you've completed that, you can do the rest in the order below, or choose a specific tutorial to follow.

## Contents

| Tutorial                                                                                        | Description                                |
| ----------------------------------------------------------------------------------------------- | ------------------------------------------ |
| [Getting Started](https://docs.microsoft.com/en-us/appcenter/quickstarts/macos/getting-started) | Set up the app                             |
| [Build](https://docs.microsoft.com/en-us/appcenter/quickstarts/macos/build)                     | Build the app                              |
| [Distribute](https://docs.microsoft.com/en-us/appcenter/quickstarts/macos/distribute)           | Distribute application to a group of users |
| [Crashes](https://docs.microsoft.com/en-us/appcenter/quickstarts/macos/crashes)                 | Monitor application crashes                |
| [Analytics](https://docs.microsoft.com/en-us/appcenter/quickstarts/macos/analytics)             | View user analytics                        |
