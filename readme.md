<img src="https://user-images.githubusercontent.com/94654299/151062447-895f64ed-9379-42d5-92ad-c0a491e6b71f.png" width="290" height="78">

## About eGain Messaging

Messaging is increasingly becoming the most popular way customers are choosing to engage with businesses. With so many messaging platforms and channels, it is important for a business to be able to provide an experience to customers and a consistent experience for their agents. eGain Conversation Hub provides a consistent messaging experience for customers and agents across all messaging channels (synchronous and asynchronous). Its features support popular messaging platforms and custom messaging channels.

The eGain Chat SDK exposes methods which partner-developers can use to build mobile apps to interact with eGain Conversation Hub. With a few modifications, partners can integrate their existing mobile apps with eGain Conversation Hub.

By adding our SDK directly to your app, you get:

- A quick and easy way to converse with customers utilizing our eGain Conversation Hub's capabilities
- Multiple options to fully customize the SDK to the look and feel you want
- An always connected, ongoing conversation that increases customer satisfaction and engagement
- Network bandwidth, local storage, and battery usage optimizations

![ios_01](https://user-images.githubusercontent.com/94654299/155618310-929c06af-a0b0-47ed-b98b-5f1b00934cac.png)

## eGain Mobile SDK for iOS
The eGain iOS SDK is bundled into an `eGainChat.framework` file. This framework can be imported into any iOS projects and can be integrated. This framework allows you to use the out-of-the-box UI with all the inbuilt methods and enables chat for your application within minutes.

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
1. Download the eGainChat.framework from the repository
2. Open Xcode and go to your project.
3. Click on the project name.
   <img width="1440" alt="sc 1" src="https://user-images.githubusercontent.com/94654299/153059234-dc01c22d-a602-4eb6-a24a-cf5f8ea1a97d.png">

4. Under Frameworks, Libraries and Embedded Content, click the **Plus icon**.
   <img width="1440" alt="sc 2" src="https://user-images.githubusercontent.com/94654299/153059275-20e6b1cf-0a3c-4765-8ca0-30e8f0b56526.png">
  
5. In the Choose Frameworks and libraries to add dialog, navigate to where you have stored the downloaded SDK. Select it and click **Open**.
   <img width="1440" alt="sc 3" src="https://user-images.githubusercontent.com/94654299/153059296-e23224ff-faa5-407d-b3f9-350c43cf034d.png">

6. The Frameworks folder displays with eGainMessaging framework in the left panel. 
   ![sc 5](https://user-images.githubusercontent.com/94654299/153060365-c02fa963-eb2b-4f5b-a757-3b52a69906d3.png)

7. Drag the eGainChat from the Frameworks folder and move it to the project folder.
   <img width="1440" alt="sc 5" src="https://user-images.githubusercontent.com/94654299/153059345-7157fa0d-753e-4bec-8f18-e1e5618dac8f.png">

8. Select **Project** → **Targets** → **Build Settings** → **Search for "Framework Search Paths"**.
9. Add `$(PROJECT_DIR)` and choose **Recursive option**.
   <img width="1440" alt="sc 6" src="https://user-images.githubusercontent.com/94654299/153059422-9d2a0fdb-2b03-4517-a412-c3d613d6bc7e.png">

  
### Next Steps: Continue the installation with the [Configure SDK step](https://github.com/eGain/egain-ios-messaging/tree/dev/eGainMessagingExample).
