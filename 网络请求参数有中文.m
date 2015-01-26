// 网络请求参数有中文
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 34BF8D02-B5B3-4263-BFA2-E0FD71C97427
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2


NSURL *url = [NSURL URLWithString: [str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];