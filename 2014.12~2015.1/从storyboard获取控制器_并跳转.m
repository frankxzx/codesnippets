// 从storyboard获取控制器 并跳转
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 6AC2CA00-752D-4D86-9FB8-667F1B67D912
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    PresonSettingViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AboutUS"];
        [self.navigationController pushViewController:vc animated:YES];