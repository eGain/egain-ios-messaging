//
//  Branding.swift
//  eGainMessagingExample
//
//  Created by Naveen Manoharan on 1/31/22.
//

import Foundation
import SwiftUI
import eGainMessaging

func setConfig(){
    launchViewIcon = "" // Add your icon to assets and enter the name here
    launchViewIconColor = Color(red: 27/255, green: 131/255, blue: 197/255, opacity: 1.0) //Type Color?
    launchViewIconWidth = 50.0 //CGFloat?
    launchViewIconHeight = 50.0 //CGFloat?
    launchViewIconXaxis = 150.0 //CGFloat?
    launchViewIconYaxis = 360.0 //CGFloat?
    welcomeViewDisable = false //Bool
    welcomeViewHeaderText = "Eight Bank Chat" //String?
    HeaderTextColor = UIColor(red: 49/255, green: 86/255, blue: 163/255, alpha: 1.0) //UIColor?
    welcomeViewBackButtonColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    welcomeViewBackgroundColor = UIColor(red: 240/255, green: 248/255, blue: 255/255, alpha: 1) //UIColor?
    welcomeViewUserNameColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    welcomeViewTextFirstLine = "How can we help" //String?
    welcomeViewTextSecondLine = "you today?" //String?
    welcomeViewTextFontColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    welcomeViewTextFontSize = .largeTitle //Font?
    welcomeViewTextFontWeight = .light  //Font.Weight?
    welcomeViewButtonText = "Chat with us" //String?
    welcomeViewButtonTextColor = Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1) //Color?
    welcomeViewButtonColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    welcomeViewEnableQuickLinks = true //Bool
    welcomeViewQuickLinks = [["name":"Visit Us", "value":"https://green.egdemo.info/eight/index.html", "type":"URL"], ["name":"eGain 21 Feature Guides", "value":"https://ebrain.egain.com/kb/featureguides/home", "type":"URL"], ["name":"What's New in eGain 21", "value":"https://ebrain.egain.com/kb/newin21/home", "type":"URL"],  ["name":"Contact Us", "value":"7374842630", "type":"Phone"]]
    welcomeViewQuickLinksColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    eGainLogoColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewHeaderText = "Eight Bank Chat" //String?
    messageViewEndChatButtonColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewBackButtonColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewDateColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewTextEditorPlaceholderColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewSendersChatBubbleColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewReceiversChatBubbleColor = Color(red: 66/255, green: 179/255, blue: 228/255, opacity: 1) //Color?
    messageViewAttachmentButtonColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewSendMessageText = "Send" //String?
    messageViewSendMessageTextColor = .white //Color?
    messageViewSendMessageTextGrayedOutColor = .white //Color?
    messageViewSendMessageButtonColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewSendMessageButtonGrayedOutColor = Color(red: 187/255, green: 222/255, blue: 237/255, opacity: 1.0) //Color?
    messageViewBackgroundColor = UIColor(red: 240/255, green: 248/255, blue: 255/255, alpha: 1) //Color?
    messageViewListpickerColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewRichlinkColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
    messageViewSenderChatFontColor = .white //Color?
    messageViewReceiverChatFontColor = .white //Color?
    messageViewTypingFontColor = Color(red: 49/255, green: 86/255, blue: 163/255, opacity: 1.0) //Color?
}
