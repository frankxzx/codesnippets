// 设置圆角 和边的宽度 
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 33135A00-5340-47C7-B52F-8C9FF5AF079D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置边框的宽度为20
    self.customView.layer.borderWidth=5;
    //设置边框的颜色
    self.customView.layer.borderColor=[UIColor blackColor].CGColor;
    
    //设置layer的圆角
    self.customView.layer.cornerRadius=20;
    //设置超过子图层的部分裁减掉
    //UI框架中使用的方法
    //    self.customView.clipsToBounds=YES;
    self.customView.layer.masksToBounds=YES;
    
    //在view的图层上添加一个image，contents表示接受内容
    self.customView.layer.contents=(id)[UIImage imageNamed:@"me"].CGImage;
}