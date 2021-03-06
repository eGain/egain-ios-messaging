<img src="https://user-images.githubusercontent.com/94654299/151062447-895f64ed-9379-42d5-92ad-c0a491e6b71f.png" width="290" height="78">

## Table of Contents
- [About eGain Messaging Mobile SDK](#about-egain-messaging-mobile-sdk)
- [eGain Mobile SDK for iOS](#egain-mobile-sdk-for-ios)
- [Prerequisites/Requirements](#prerequisitesrequirements)
  * [System Requirements](#system-requirements)
  * [SDK Size](#sdk-size)
  * [Permissions / Credentials](#permissions--credentials)
  * [Sample App (iOS)](#sample-app-ios)
- [Installation](#installation)
  * [Next Steps: Continue the installation with Configure SDK for iOS procedures](#nextsteps)

## About eGain Messaging Mobile SDK

Messaging is increasingly becoming the most popular way customers are choosing to engage with businesses. With so many messaging platforms and channels, it is important for a business to be able to provide an experience to customers and a consistent experience for their agents. eGain Conversation Hub provides a consistent messaging experience for customers and agents across all messaging channels (synchronous and asynchronous). Its features support popular messaging platforms and custom messaging channels.

The eGain Messaging SDK exposes methods which partner-developers can use to build mobile apps to interact with eGain Conversation Hub. With a few modifications, partners can integrate their existing mobile apps with eGain Conversation Hub.

By adding our SDK directly to your app, you get:

- A quick and easy way to converse with customers utilizing our eGain Conversation Hub's capabilities
- Multiple options to fully customize the SDK to the look and feel you want
- An always connected, ongoing conversation that increases customer satisfaction and engagement
- Network bandwidth, local storage, and battery usage optimizations

![default_flow_ios](https://user-images.githubusercontent.com/94654299/157335596-8e5013b9-f91d-4fcf-9a98-473dd78fd188.png)

## eGain Mobile SDK for iOS
The eGain iOS SDK is bundled into an `eGainMessagingSDK.xcframework` file. This framework can be imported into any iOS projects and can be integrated. This framework allows you to use the out-of-the-box UI with all the inbuilt methods and enables chat for your application within minutes.

The SDK for iOS can be installed through manual installation. To install SDK for iOS, please refer to the complete installation<add link> guide.
   
## Prerequisites/Requirements
### System Requirements
The SDK requires the following minimum versions:

- iOS 14.0 and up
- Compatible with Swift and Objective-C

We require using the latest available versions of:

- [Xcode](https://developer.apple.com/xcode/)

### SDK Size
The size of the SDK will vary depending upon the configuration.

Size: 3.5 MB

### Permissions / Credentials
Customers need to acquire credentials to gain access to the SDK. Please contact your eGain customer representative to receive your Conversation Hub clientId and clientSecret.

### Sample App (iOS)
You can find an example project with some basic implementations provided [here](https://github.com/eGain/egain-ios-messaging/tree/dev/Examples). 

## Installation
1. Download the eGainMessagingSDK.xcframework from the repository
2. Open Xcode and go to your project.
3. Click on the project name.
   <img width="1440" alt="Screen Shot 2022-04-20 at 9 37 15 PM" src="https://user-images.githubusercontent.com/94451874/164374454-94f90c97-e3b2-4f32-ba3a-75f0c1113c48.png">

4. Under Frameworks, Libraries and Embedded Content, click the **Plus icon**.
   <img width="1440" alt="Screen Shot 2022-04-20 at 9 37 24 PM" src="https://user-images.githubusercontent.com/94451874/164374496-cc90fa90-1a73-41ed-b5ea-49bccb7f9638.png">
  
5. In the Choose Frameworks and libraries to add dialog, navigate to where you have stored the downloaded SDK. Select it and click **Open**.
   <img width="1440" alt="Screen Shot 2022-04-20 at 9 38 21 PM" src="https://user-images.githubusercontent.com/94451874/164374535-55027760-ab10-489c-b3aa-9c7b9a356783.png">

6. The Frameworks folder displays with eGainMessagingSDK framework in the left panel. 
   <img width="1440" alt="Screen Shot 2022-04-20 at 9 38 31 PM" src="https://user-images.githubusercontent.com/94451874/164374580-f1446792-55b4-4cb1-8e84-dbac5e4e4dd8.png">
  
### Next Steps: Continue the installation with [Configure SDK](https://github.com/eGain/egain-ios-messaging/tree/dev/Examples)<a name="nextsteps"></a> for iOS procedures.
