// 加载一个自定义xib View 到self.view
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: AC6BEB70-0930-4751-84D9-11167BD42B2C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"RefuseOrderView" owner:self options:nil];
    refusedView = [nib objectAtIndex:0];
    CGRect Frame = [[UIScreen mainScreen] bounds];
    
    [refusedView setCenter:CGPointMake(Frame.size.width / 2, Frame.size.height / 2)];
    
    [self.view addSubview:refusedView];
