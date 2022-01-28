<img src="https://user-images.githubusercontent.com/94654299/151062447-895f64ed-9379-42d5-92ad-c0a491e6b71f.png" width="290" height="78">

## About eGain Messaging

Messaging is increasingly becoming the most popular way customers are choosing to engage with businesses. With so many messaging platforms and channels, it is important for a business to be able to provide an experience to customers and a consistent experience for their agents. eGain Conversation Hub provides a consistent messaging experience for customers and agents across all messaging channels (synchronous and asynchronous). Its features support popular messaging platforms and custom messaging channels.

The eGain Chat SDK exposes methods which partner-developers can use to build mobile apps to interact with eGain Conversation Hub. With a few modifications, partners can integrate their existing mobile apps with eGain Conversation Hub.

By adding our SDK directly to your app, you get:

- A quick and easy way to converse with customers utilizing our Conversation Hub's capabilities
- Multiple options to fully customize the SDK to the look and feel you want
- An always connected, ongoing conversation that increases customer satisfaction and engagement
- Network bandwidth, local storage, and battery usage optimizations

## eGain iOS SDK
The eGain iOS SDK is bundled into an eGainChat.framework file. This framework can be imported into any iOS projects and can be integrated. This framework allows you to use the out-of-the-box UI with all the inbuilt methods and enables chat for your application within minutes.

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

Size: 2.1 MB

### Permissions / Credentials
Customers need to acquire credentials to gain access to the SDK. Please contact your eGain representative to receive your Conversation Hub client id and client secret.

### Sample App (iOS)
You can find an example project with some basic implementations provided here. <link to sample app directory>

## Installation
1. Download the eGainChat.framework
2. Open Xcode and go to your project
3. Click on the project name.
  <img width="1440" alt="Screen Shot 2021-11-04 at 7 44 58 PM" src="https://user-images.githubusercontent.com/94654299/151059900-7cfea786-24b5-43ee-a7af-265ed964373a.png">

4. Under Frameworks, Libraries and Embedded Content, click the Plus icon.
  <img width="1440" alt="Screen Shot 2021-11-04 at 7 48 17 PM" src="https://user-images.githubusercontent.com/94654299/151059977-c9f4c661-1548-4ec9-a716-cb35862a3224.png">
  
5. In the Choose Frameworks and libraries to add dialog, navigate to where you have stored the downloaded SDK. Select it and click Open.
  <img width="1440" alt="Screen Shot 2021-11-04 at 7 50 00 PM" src="https://user-images.githubusercontent.com/94654299/151060012-847ec743-56cb-428e-812f-b647f09fbd11.png">

6. The Frameworks folder displays in the left panel.
  <img width="1440" alt="Screen Shot 2021-11-04 at 7 51 26 PM" src="https://user-images.githubusercontent.com/94654299/151060173-723602fc-95f9-44fb-9376-022ecee91c73.png">
  
7. Drag the eGainChat from the Frameworks folder and move it to the project folder as shown below
  <img width="1440" alt="Screen Shot 2021-11-04 at 7 53 24 PM" src="https://user-images.githubusercontent.com/94654299/151060214-b0e5a2b8-0cb0-4168-aad7-eb94905a04ac.png">
  
8. Select `Project → Targets → Build Settings → Search` for "Framework Search Path"
9. Add `$(PROJECT_DIR)` and choose Recursive option
  
### Next Steps: Continue the installation with the Configure SDK step.
