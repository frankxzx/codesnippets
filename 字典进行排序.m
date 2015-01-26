// 字典进行排序
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 994D78EB-B55A-44C1-BE66-4775029333CB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//对dict所有key排序
    NSArray *keysArray = [[self allKeys] sortedArrayUsingSelector:@selector(compare:)];