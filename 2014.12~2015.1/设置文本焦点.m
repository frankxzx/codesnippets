// 设置文本焦点
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 74A84BA1-CDFA-4BFC-B896-7D6134479EB8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 // 3. 设置文本焦点
    if ([_userNameTextField.text isEqualToString:@""]) {
        [_userNameTextField becomeFirstResponder];
    } else {
        [_passwordTextField becomeFirstResponder];
    }
