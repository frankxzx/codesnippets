// 将view设置成整个页面
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 369B074B-1179-436B-A532-F11BB4CA1035
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
UIView *view = [[UIView alloc]init];
view.frame = self.view.bounds;
[self.view addsubView:view];