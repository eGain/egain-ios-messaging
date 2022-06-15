# SDK Configuration for iOS
The instructions in this section provide details to complete the SDK installation.

## Table of Contents
- [SDK Configuration for iOS](#sdk-configuration-for-ios)
  * [Configure Conversation Hub](#configure-conversation-hub)
  * [Choose default or custom options](#choose-default-or-custom-options)
    + [Option 1: Default "Out of the Box"](#option-1-default-out-of-the-box)
    + [Branding](#branding)
  * [Option 2: Customized SDK](#option-2-customized-sdk)
    + [Obtain Credentials](#obtain-credentials-1)
    + [Available methods](#available-methods)
    + [Methods Explanation](#methods-explanation)
      - [Initialize Chat](#initialize-chat)
      - [Send Message](#send-message)
      - [Upload Attachments](#upload-attachments)
      - [End Conversation](#end-conversation)
      - [Add Listener](#add-listener)
  * [SDK Workflow](#sdk-workflow)
  * [Supported Message Types](#supported-message-types)

## Configure Conversation Hub
Configure your Conversation Hub tenant using the steps listed under the section **Bring-Your-Own-Channel with eGain Virtual Assistant steps** and using this postman script **BYOC with eGain VA Conversation API Setup.postman_collection.json** from [here](https://ebrain.egain.com/kb/devcentral/content/EASY-8283/Bring-Your-Own-Channel).

To configure Conversation Hub the following credentials are required
- Tenant clientId and clientSecret
- Customer client app authentication credentails (username and password)
- Customer client app callback URL

Please contact your eGain customer representative to receive the above mentioned credentials

Once the configuration is complete, the following values are required to be passed to the mobile sdk
- clientId and clientSecret generated after the creation of client app
- channel type used while creating the channel
- account address used while creating the account

## Choose default or custom options
There are two ways in which you can use the SDK:

- **Option 1: Default version**
  - Out-of-the-Box UI (default)
- **Option 2: Customizable version**
  - This version allows you to use SDK methods and build your own UI around it.

### Option 1: Default "Out of the Box"
The default, "out-of-the-box" version provided by the SDK provides basic settings that can be configured to enhance your experience and allows customers to interact with eGain Conversation Hub using the chat button.  
The chat button serves as the entry point to begin chatting with the eGain Conversation Hub.

eGainMessaging provides a default chat button which can be added to any view of your application. The out of box UI is built using SwiftUI, which is also compatible with UIKit.

There are two types of conversation modes you can add to the application: a customer and a guest mode. 

To begin using the SDK, add the following line of code to create and display a chat button on the activity's view. Depending upon the mode chosen, the name and email of the user is included. 

> **_NOTE:_** `AppState` is required for navigation and it should be declared as shown in the code snippets. If you do not wish to have a bot greeting, you may choose to leave out the botGreeting field when creating a new button.

#### Customer Mode Conversation
To create a chat button which requires end users to provide their credentials to continue the chat, add the following authenticated construct to the application. 

> **_NOTE:_** `emailId` and `userName` are required parameters, if not passed then it is considered as guest mode conversation. 

> **_NOTE:_** By default `chatIconColor` would be set to .gray, `chatIconWidth` and `chatIconHeight` is set to 50. 

The allowed declarations are shown below:
```SWIFT
import SwiftUI
import eGainMessagingSDK
 
struct ContentView: View {
    @ObservedObject var appState = AppState()
    var body: some View {
        NavigationView{
            ZStack {
                LaunchView(clientId: "XXXXXX", clientSecret:"XXXXXX", channelType:"", accountAddress:"", emailId:"name@email.com",  userName: "name", botGreeting: "Hi")
                    .id(appState.rootViewId)
        }
        .ignoresSafeArea()
    }
    .environmentObject(appState)
}
```
> **_NOTE:_** eGainMessaging UI requires to be placed inside `NavigationView` (UINavigationController in UIKit). If your project already has `NavigationView`, then directly include the `LaunchView()`.

#### Guest Mode Conversation
To create a chat button which does not require end users to provide credentials to continue the chat, add the following unauthenticated construct to the application.  

> **_NOTE:_** `emailId` and `userName` should not be passed.

> **_NOTE:_** By default `chatIconColor` would be set to `.gray`, `chatIconWidth` and `chatIconHeight` is set to 50. 

The allowed declarations are shown below:
```swift

import SwiftUI
import eGainMessagingSDK
 
struct ContentView: View {
    @ObservedObject var appState = AppState()
    var body: some View {
        NavigationView{
            ZStack {
                LaunchView(clientId: "XXXXXX", clientSecret:"XXXXXX", channelType:"", accountAddress:"", botGreeting: "Hi")
                    .id(appState.rootViewId)
        }
        .ignoresSafeArea()
    }
    .environmentObject(appState)
}
```
#### Parameters
|Name |Type | Description|
|-|-|-|
|clientId	|String	|eGain Conversation Hub client ID |
|clientSecret	|String	|eGain Conversation Hub client secret|
| channelType| String | eGain Conversation Hub Channel|
| accountAddress| String |eGain Conversation Hub Account |
|emailId	|String | emailId of the end user |
| userName|	String | name of the end user|
| botGreeting	| String	|The first message which needs to be sent to the bot to start the conversation. If this parameter is not specified then the end user needs to initiate the conversation.|

### Branding
The UI of the SDK can be customized to configure the colors, text, and text sizes that are preferred. Use the provided <Branding.swift> file to see what can be changed and how to implement those changes.

1. Download branding.swift file from our repository.
2. Move the downloaded file to your project directory.
3. This file consists of `setConfig()` function which has all the UI components which can be branded, and their default values are available on the file.
4. Change the values of the UI components available in the function as needed.
5. Call this function on `onAppear()` when your app is loaded.
6. Customize this file as needed. 

> **_NOTE:_** If you want to use a custom launch icon, add it to the assets and set the Render As to Template Image (This enables to change the color of the icon). 

<img width="1440" alt="sc 7" src="https://user-images.githubusercontent.com/94654299/153062329-4d417bc3-68e1-4e18-a59a-ae1db2125274.png">

**Code Snippet**
```swift
import SwiftUI
import eGainMessagingSDK
 
struct ContentView: View {
    @ObservedObject var appState = AppState()
    var body: some View {
        NavigationView{
            ZStack {
                LaunchView(clientId: "XXXXXX", clientSecret:"XXXXXX", channelType:"", accountAddress:"", emailId:"name@email.com", userName: "name", botGreeting: "Hi")
                    .id(appState.rootViewId)
        }
        .ignoresSafeArea()
    }
    .onAppear{ 
        setConfig()   
    }
    .environmentObject(appState)
}
```

#### Sample Branding Flow
![branded_flow_ios](https://user-images.githubusercontent.com/94654299/154157261-221c64b7-fd1e-485c-8127-c06c60e76b6e.png)


## Option 2: Customized SDK

### Obtain Credentials
Credentials are used to verify you as a valid customer for the Conversation Hub. You need a unique ID (clientId) and password (clientSecret), accountAddress, and channelType to access the Conversation Hub. 
If you have not yet obtained credentials, contact you eGain representative.  

### Available methods
- initialize()
- sendMessage()
- upload()
- endConversation()
- addListener()

### Methods Explanation
SDK uses Websocket API for data transfer. 
The following methods `initialize()`, `sendMessage()`, `upload()` and `endConversation()` when called opens a socket connection, the `addListener()` method is 
listening to the incoming messages in the socket.

In all the above mentioned methods, `addListener()` is called inline to listen for responses for those methods.

#### Initialize Chat
This method is the entry point for the SDK. This method requires clientId, clientSecret, channelType, and accountAddress. This method checks whether the clientId and clientSecret are valid and a sessionId would be generated for this session. This sessionId is stored in the device using `UserDefaults()`. 

##### Customer Mode - Initialize Chat
```swift 
eGainMessaging().initialize(clientId: "XXXXXX", clientSecret: "XXXXXX", channelType:"", accountAddress:"", emailId:"user@email.com", userName: "user"){
    initializeResult in
    print(initializeResult)
}
```

##### Guest Mode - Initialize Chat
```swift
eGainMessaging().initialize(clientId: "XXXXXX", clientSecret: "XXXXXX", channelType:"", accountAddress:""){
    initializeResult in
    print(initializeResult)
}
```

#### Parameters - Initialize Chat
|Name |Type |Description |
|-|-|-|
|eGainClientId|	String|	eGain Conversation Hub client ID|
|eGainClientSecret|	String|	eGain Conversation Hub client secret|
|channelType | String |eGain Conversation Hub Channel |
|accountAddress| String|eGain Conversation Hub Account |
|botGreeting|	String|	The first message which needs to be sent to the bot to start the conversation.|
|userName|	String|	Name of customer|
|emailId|	String|	Email ID of customer|

##### Responses - Initialize Chat
When chat is initialized, but conversation has not started.
```swift
["sessionId": "413ff6be-146d-4c78-9ffa-2de15d2c24e1", "status": Conversation not started]
```

When chat is initialized and conversation has started.
```swift
["sessionId": "413ff6be-146d-4c78-9ffa-2de15d2c24e1", "status": Conversation started]
```

#### Send Message

This method is used to send message to conversation hub. 

##### Customer Mode - Send Message
```swift
eGainMessaging().sendMessage(message: "hi", emailId:"user@email.com"){
    sendMessageResult in
    print(sendMessageResult)
}
```

##### Guest Mode - Send Message
```swift
eGainMessaging().sendMessage(message: "hi", emailId:"user@email.com"){
    sendMessageResult in
    print(sendMessageResult)
}
```

#### Parameters - Send Message
|Name |Type |Description |
|-|-|-|
|message|	String|	Text message sent by customer|
|emailId|	String|	Email ID of customer|

##### Responses- Send Message
When the first message is sent, the conversation would be started and the following response is received.
```swift
["status": "Conversation started", "authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"]
```

For the consecutive messages, the following response is received.
```swift
["status": "Conversation continued", "authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"]
```
If the agent has already closed the conversation or the system has already closed the conversation, the following response in received
```java
["status": "Invalid sessionId", "authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"]
```

These responses are synchronous to the `sendMessage` call. Since the socket connection is open, all the incoming messages from bot or agent is received in the `sendMessage()` method. 

Please refer to the [documentation](#supported-message-types) for supported message types.
 
#### Upload Attachments
This method is used to upload files/images to conversation hub.

##### Customer Mode - Upload Attachments
```swift
eGainMessaging().upload(fileName: "filename.extension", emailId:"user@email.com"){
    uploadResult in
    print(uploadResult)
}
```

##### Guest Mode - Upload Attachments
```swift
eGainMessaging().upload(fileName: "filename.extension"){
    uploadResult in
    print(uploadResult)
}
```

##### Parameters - Upload Attachments
|Name |Type |Description|
|-|-|-|
|fileName|	String|	Name of the file|
|emailId|	String |Email ID of customer|

##### Responses - Upload Attachments
A S3 pre-signed URL would be received as response. Upload the corresponding file to this URL, which is uploaded to the agent.
```swift
[
	"uploadURL": "https://egain-pse-apps-oregon-development.s3.us-west-2.amazonaws.com/mh-websocket/dev/attachments/toMessagingHub/a22db903-7654-4c1d-9f83-dbd6bc7d3249/hello?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIARDJ5G4KV4RZO4XXU%2F20220122%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220122T231612Z&X-Amz-Expires=300&X-Amz-Security-Token=IQoJb3JpZ2luX2VjECcaCXVzLXdlc3QtMiJHMEUCIHCCAHV%2BZak0%2FHWRzbZrJrzPTY9aqYnaNAFvmMw4k9n%2FAiEAg380MNn3I2XhujMZlxfGq3%2FRhQaDL3FvGL6NBIFpcqcqrAIIUBABGgwwNzU4MjcxNzYxMDciDHiB4fDMyVZm18ZkjiqJAs%2BsDZ0Q537LqWOxpyRIogD9PQzlZ9TWGKQ5c%2Fj4M%2BsfPwIelYaoXwhT%2BgO2ByQKpjhYwhDgKnyiB3qOEA1mWI%2Ft2p3gmKBOvQn96MqQUfQumAv6NVKx6BOlw32tRJQexnifR7SfO6oT71625q68VQUWLzd54j5sRCKwxmgYPhIk1ggQQhjpUme00zEPhEfomlBk4gTklXpitWPrVU8pOWAzmAWyEhyuRpxoBlz%2BiQ8tTGa9YbyKusX0Dd1FE77N3jpCbLD3Rskr%2Be49KzoCG9BLG0YySraQV3ZIpE1PmXU5M3Casre9%2FUb5m2aC3X2vf3JkKGIxcGsjziXktUEyqUsksV%2FaLcdge54w9ZuyjwY6mgFHUEi12RaC2JT2qKTaEcdFYTUtVk3pwkCR%2B6Xzsq0TJGfxE%2FWk6hPEx0oKX9%2FEd8dHt5N1RrIUw%2FPD98Makq%2BILBUZZRi6dgOWvgVzLogKcIFzt%2FP6MMj8vIR9FQG4bV%2Biw2F7rfs%2FLigOIVcKc7jfcdq82AspIwIyYEumDlUYUduep36Kbv2kS%2B9df7FWKxhOOwUr3XOe1XM3&X-Amz-Signature=b0e37cbe2b8e512a150a7cdae32551e96fddf1e93286363db604e84043a274f0&X-Amz-SignedHeaders=host", 
	"fileName": "filename.extension", 
	"status": "Conversation continued",
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

#### End Conversation
This method is used to end the conversation. 

##### Customer Mode - End conversation
```swift
eGainMessaging().endConversation(emailId:"user@email.com"){
    endConversationResult in
    print(endConversationResult)
}
```

##### Guest Mode - End Conversation
```swift
eGainMessaging().endConversation(emailId:"user@email.com"){
    endConversationResult in
    print(endConversationResult)
}
```

##### Parameters - End Conversation
|Name |Type | Description
|-|-|-|
|emailId|	String	| Email ID of customer|

##### Responses - End Conversation
```swift
["status": "Conversation ended", "authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"]
```

If the agent has already closed the conversation or the system has already closed the conversation, the following response in received.
```java
["status": "Invalid sessionId", "authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"]
```

#### Add Listener
This method is used to receive responses from websocket. This method is not required to be used separately as it is being called inline by all other methods. 
```swift
eGainMessaging().addListener(){
    (addListenerResult) in
    print(addListenerResult)
}
```

## SDK Workflow
The SDK calls `initialize()` whenever the chat button is clicked. This is to check whether there is an available sessionId, else it will generate a new one and provide two responses (Conversation started / Conversation not started / Invalid sessionId) based on which the flow can be designed accordingly. After `initialize()`, call `sendMessage()` to start the conversation with conversation hub.

After this, `sendMessage()` can be called as many times as required. `upload()` should be called after `sendMessage()`.

Finally, in order to end the conversation call `endConversation()`. All these methods call `addListener()` by default to listen for response.

## Supported Message Types
Listed below are the different types of messages that can be received and their content. 

>**_NOTE:_** You can add a wrapper on top of `sendMessage()` and customize your app according to the responses listed below.

When bot or agent responds with a text message, the following response is received.

### Text
```swift
[	
	"eGainMessage": {
						"type":"text",
						"value":"Hello",
						"agentName":"name"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Listpicker
When bot or agent responds with a message of type listpicker, the following response is received.
```swift
[
	"eGainMessage": {
						"type":"richMessage.listpicker",
						"value":"{ \"type\": \"list\", \"version\": \"1\", \"title\": \"Check latest collection 						\", \"subtitle\": \"Only online\", \"list\": {   \"multipleSelection\": false,   \"sections\": [     {       \"multipleSelection\": false,  \"title\": \"Select Answer\",  \"order\": 0,  \"items\": [ {\"title\": \"Check trim T-shirt\",\"subtitle\": \"Available only online order.\",\"id\": \"100001\",\"actions\": [ { \"type\": \"postback\" }] }, {\"title\": \"Classic trench coat\",\"subtitle\": \"Available in stores and online\",\"id\": \"100002\",\"actions\": [ { \"type\": \"postback\" }] }       ]     }   ] }}",
						"agentName":"name"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Richlink
When bot or agent responds with a message of type richlink, the following response is received.
```swift
[
	"eGainMessage": {
						"type":"richMessage.richlink",
						"value":"{  \"version\": \"1\",  \"type\": \"web_url\",  \"imageid\": \"1\",  \"images\": [{  \"title\": \"Winter Jackets!!\",  \"url\": \"https://images-na.ssl-images-amazon.com/images/I/41yy1%2B08agL._SR38,50_.jpg\",  \"link\": \"https://aznadestzwa07.egdemo.info/purplenile/collection.html\",  \"imageid\": \"1\",  \"mimeType\": \"image/jpg\",  \"style\": \"icon\"}  ]}",
						"agentName":"name"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Escalation
When bot escalates the conversation to an agent, then the following response is received.
```swift
[
	"eGainMessage": {
						"type":"conversation.state",
						"value":"{\"status\":\"escalated\",\"content\":\"\"}",
						"agentName":"system"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Agent starts typing
When agent starts typing, the following response is received.
```swift
[
	"eGainMessage": {
						"type":"typing.start",
						"value":"",
						"agentName":"name"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Agent stops typing
When agent stops typing, the following response is received.
```swift
[	
	"eGainMessage": {
						"type":"typing.end",
						"value":"",
						"agentName":"name"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Download
When the agent is going send any attachments, the this URL is received which can be used to download the file and display on the device.
```swift
[
	"status": "Conversation continued", 
	"fileName": "featured-image-MH.jpeg", 
	"downloadURL": "https://egain-pse-apps-oregon-development.s3.us-west-2.amazonaws.com/mh-websocket/dev/attachments/fromMessagingHub/a22db903-7654-4c1d-9f83-dbd6bc7d3249/featured-image-MH.jpeg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIARDJ5G4KVSAK4ZSSV%2F20220122%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220122T232937Z&X-Amz-Expires=300&X-Amz-Security-Token=IQoJb3JpZ2luX2VjECgaCXVzLXdlc3QtMiJHMEUCIEo%2FrTBbyaY8iZRj3Uy3yPNHWDVLERXO0dlpxtYt5SUfAiEA0R8xSqtiahqbGYRWLQrDjMOPJxbevnhubOk8cVv9FskqrwIIURABGgwwNzU4MjcxNzYxMDciDBtNLktin8MO8zG8ASqMAk9FURO7KPhk0Aqw37WxhpPykwV9Jn9XlRa94NDSessX9ipHkZpKMUIbHRWVJ0XYD8CpWGA8KQoO0tscElfiDE5w3tpBb8o%2Bozfep%2F0pKfivuWBzrkNcBwmdA7dvhlwfUPnJvyZp8miSCkRAIZggvxBlkpnNVPtwqA2biZ95jYfQQ%2Fz3NS5wRAIgDfHux0wHdZ1hImvXJgJ1svtqXOoLb7YqkYyf71jzi2cJkn3JsdwZ0PB9G%2FBCUqItCzaKHTkHfqshAZvRuX13kXWPYH9F90KpL6JEnbu14%2FwWYFlDVo0LpR7j%2BlqhLZeoA9%2BkIoJaHV6SuFayBVkGDasmB7XSfgk8Lt2anbQcSXdlS9Iw4KayjwY6mgHapkV26XGruBMiNyIdSDGTWE4DTaHKu3TCZOfQaOKdlayjX%2FkRq60NCNzlLYvSZOaIyqO%2FZknTd7qlSc7QPNP3qLr2BObzMcM4U3ZxXqTyy%2F6D0rKBNePLq6xfblUVPW0ri1TY2WOfj8zDpsvteYqOeHfhG%2FJXoPAK%2FNm5t0AIDpcMfr1Cx0EERYAh1VmC%2Fe0q1RwmxSvDh3Dy&X-Amz-Signature=ed5004f5c9df5b7ee7755162abf0f59c0f0ccb7c67db5898f2e0885bc7ceef98&X-Amz-SignedHeaders=host",
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```

### Conversation ended
When the agent ends the chat, the following response is received, with which the chat can be closed on the user device.
```swift
[
	"eGainMessage": {
						"type":"text",
						"value":"agent.end.conversation",
						"agentName":"name"
					},
	"authorization": "413ff6be-146d-4c78-9ffa-2de15d2c24e1"
]
```
