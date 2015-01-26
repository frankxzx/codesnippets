// 判断ios系统版本，iPhone型号
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: C56B1733-E801-48C6-8DCB-701F2555C0B5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// 判断是否为iOS7系统
#define iOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)

// 判断设备是否为iPhone5
#define DEVICE_IS_IPHONE5 ([[UIScreen mainScreen] bounds].size.height == 568)
// 判断设备是否为iPhone6
#define DEVICE_IS_IPHONE6 (kAppWidth == 375)
// 判断设备是否为iPhone6Plus
#define DEVICE_IS_IPHONE6Plus (kAppWidth == 414)