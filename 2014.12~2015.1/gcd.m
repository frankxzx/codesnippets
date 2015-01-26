// GCD多线程
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 41F9AB0A-0027-4B50-AFE3-33E7B42E3AAB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//  后台执行：
                 dispatch_async(dispatch_get_global_queue(0, 0), ^{
                     // something
                 });
                 // 主线程执行：
                 dispatch_async(dispatch_get_main_queue(), ^{
                     // something
                 });
                 // 一次性执行：
                 static dispatch_once_t onceToken;
                 dispatch_once(&onceToken, ^{
                     // code to be executed once
                 });
                 // 延迟2秒执行：
                 double delayInSeconds = 2.0;
                 dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
                 dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
                     // code to be executed on the main queue after delay
                 });

