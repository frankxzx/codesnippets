// label自定计算高度
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: D82720AF-ED30-43DC-A238-89B9C458F38C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark UILabel 自动高度计算
- (void) labelAutoHeight:(UILabel *) contentLabel:(NSString *) text {
    
    UIFont *font = [UIFont systemFontOfSize:12];
    contentLabel.font = font;
    [contentLabel setNumberOfLines:0];
    contentLabel.lineBreakMode = UILineBreakModeWordWrap;
    contentLabel.backgroundColor = [UIColor greenColor];
    contentLabel.tag = 102;
    CGSize size = CGSizeMake(320,2000);
    CGSize labelsize = [text sizeWithFont:font constrainedToSize:size lineBreakMode:UILineBreakModeWordWrap];
    [contentLabel setFrame:CGRectMake(20, 30, 320, labelsize.height)];
}

// 调用方式
<p>
[<span>self</span> <span>labelAutoHeight</span>:contentLabel:text];
</p>