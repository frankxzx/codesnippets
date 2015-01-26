// 设置导航栏全局样式 导航栏字体颜色
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 130C55C5-0565-452D-AF95-596C40839A43
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//设置导航栏全局样式
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [[UINavigationBar appearance] setTitleTextAttributes:attrs];
    
    [[UINavigationBar appearance] setTintColor:[UIColor orangeColor]];
    