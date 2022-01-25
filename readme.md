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

The SDK for iOS can be installed through manual installation. To install SDK for iOS, please refer to the complete installation guide.

## Prerequisites/Requirements
### System Requirements
The SDK requires the following minimum versions:

- iOS 14.0 and up
- Compatible with Swift and Objective-C

We require using the latest available versions of:

- Xcode <insert link>

### SDK Size
The size of the SDK will vary depending upon the configuration.

Size: 2.1 MB

### Permissions / Credentials
Customers need to acquire credentials to gain access to the SDK. Please contact your eGain representative to receive your Conversation Hub client id and client secret.

### Sample App (iOS)
You can find an example project with some basic implementations provided here <link to sample app directory>.

## Installation
1. Download the eGainChat.framework from <<Provide link for the zip file>>
2. Open Xcode and go to your project
3. Click on the project name.
4. Under Frameworks, Libraries and Embedded Content, click the Plus icon. <insert image>
5. In the Choose Frameworks and libraries to add dialog, navigate to where you have stored the downloaded SDK. Select it and click Open. <insert image>
6. The Frameworks folder displays in the left panel. <insert image>
7. Drag the eGainChat from the Frameworks folder and move it to the project folder as shown below <insert image>
8. Select Project → Targets → Build Settings → Search for "Framework Search Path"
9. Add $(PROJECT_DIR) and choose Recursive option
10. eGainChatSDK is now ready to be used in the project
