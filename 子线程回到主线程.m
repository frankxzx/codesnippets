// 子线程回到主线程
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 79FAB116-DEC7-4664-B125-5FCF2948A399
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
dispatch_async( dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    // 执⾏耗时的异步操作...
    dispatch_async(dispatch_get_main_queue(), ^{
        
        // 回到主线程,执⾏UI刷新操作
    });
});