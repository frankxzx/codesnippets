// 关闭键盘
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: A0E48B54-A4A6-4937-BBED-27D63035435A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark UITextField代理方法
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"keyboard return");
    if (textField == _userNameTextField) {
        [_passwordTextField becomeFirstResponder];
    } else {
        //登录
        [self loginButtonClick:nil];
    }
    
    return YES;
}