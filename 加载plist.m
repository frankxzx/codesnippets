// 加载plist
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 778A10E4-7239-4398-9502-FBC915373890
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//将plist文件中的数据赋给数组

NSString *thePath = [[NSBundle mainBundle] pathForResource:@"States" ofType:@"plist"];

NSArray *array = [NSArray arrayWithContentsOfFile:thePath];