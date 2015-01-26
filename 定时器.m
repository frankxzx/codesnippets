// 定时器
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 1B22064C-82CE-4DB3-8933-BDC48040027B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:15.0f target:self selector:@selector(sendUpdatetoken) userInfo:nil repeats:YES];
    BMGlobalMessage.timer = timer;
    [[NSRunLoop currentRunLoop] run];