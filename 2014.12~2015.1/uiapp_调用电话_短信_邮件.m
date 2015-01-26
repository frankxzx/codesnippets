// UIApp 调用电话 短信 邮件
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: E32F3BD6-B1B8-4FCA-B12D-6D5F91CE884D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 [ UIApp openURL: [ NSURL URLWithString:@"http://www.apple.com" ] ];

或者：



1.[ UIApp openURL: [ NSURL URLWithString:@"mailto:apple@mac.com?Subject=hello" ] ];

与此同时，iPhone还包含一些其他除了http://或者mailto:之外的URL：



sms:// 可以调用短信程序



tel:// 可以拨打电话



itms:// 可以打开MobileStore.app



audio-player-event:// 可以打开iPod



audio-player-event://?uicmd=show-purchased-playlist 可以打开iPod播放列表



video-player-event:// 可以打开iPod中的视频





get iphone uniqueIdentifier