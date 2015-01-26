// 不同的textField之间换行
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: A87461D2-540F-414E-BBE4-AA88C1D3E7A8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//点击键盘的next按钮，在不同的textField之间换行

//首先给不同的textField赋不同的且相邻的tag值

- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    if ([textField returnKeyType] != UIReturnKeyDone)
        
    {
        
        NSInteger nextTag = [textField tag] + 1;
        
        UIView *nextTextField = [[self tableView] viewWithTag:nextTag];
        
        [nextTextField becomeFirstResponder];
        
    }
    
    else {
        
        [textField resignFirstResponder];
        
    }
    
    return YES;
    
}