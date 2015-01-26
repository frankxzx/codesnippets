// 键盘遮挡textfield的问题
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: BCA3F0BD-9B22-43FD-91EE-DA0D0F89AD18
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//键盘覆盖输入框

//当键盘调出时将输入框覆盖时，可以用下方法：

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField

{
    
    [self.view setFrame:CGRectMake(0, -100, 320, 480) ];
    
    return YES;
    
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField

{
    
    [self.view setFrame:CGRectMake(0, 0, 320, 480)];
    
    return YES;
    
}