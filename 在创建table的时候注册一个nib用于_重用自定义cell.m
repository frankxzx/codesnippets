// 在创建table的时候注册一个nib用于 重用自定义cell
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: FD835E12-93F1-47B6-B0CA-8FBB44D1FC13
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
  [orderListTableView registerNib:[BMOrderListTableViewCell nib] forCellReuseIdentifier:@"orderListCell"];