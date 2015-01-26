// CALayer设置阴影
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 408EB5F5-2328-4D0D-960F-973AD625BB2F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //设置阴影的颜色
    self.customView.layer.shadowColor=[UIColor blackColor].CGColor;
    //设置阴影的偏移量，如果为正数，则代表为往右边偏移
    self.customView.layer.shadowOffset=CGSizeMake(15, 5);
    //设置阴影的透明度(0~1之间，0表示完全透明)
    self.customView.layer.shadowOpacity=0.6;
}