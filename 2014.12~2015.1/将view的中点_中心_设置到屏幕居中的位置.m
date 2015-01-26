// 将view的中点 中心 设置到屏幕居中的位置
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 55DCCBD6-90FD-4816-BF08-B36EDEDFF0F9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
  UIView *receiveOrderView = [nib objectAtIndex:0];
    CGRect tmpFrame = [[UIScreen mainScreen] bounds];
    [receiveOrderView setCenter:CGPointMake(tmpFrame.size.width / 2, tmpFrame.size.height / 2)];