// 汉字转码 utf8
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 72510B8C-D55A-4A87-B4AC-9D63474E36E2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    //汉字转码
    
    NSString *oriString = @"\u67aa\u738b";
    
    NSString *escapedString = [oriString
                               
                               stringByReplacingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    NSLog(@"----%@",escapedString);