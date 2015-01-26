// 为UINavigationBar设置背景图片
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 6B77C3B6-F70C-4D98-9AD2-87C996BCC6B5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*为UINavigationBar设置背景图片

在iPhone开发中, 有时候我们想给导航条添加背景图片, 实现多样化的导航条效果, 用其他方法往往无法达到理想的效果, 经过网上搜索及多次实验, 确定如下最佳实现方案:

为UINavigatonBar增加如下Category(类别:提供一种为某个类添加方法而又不必编写子类的途径,类别只能添加成员函数，不能添加数据成员):


*/
@implementation UINavigationBar (CustomImage)

- (void)drawRect:(CGRect)rect {
    
    UIImage *image = [UIImage imageNamed: @"NavigationBar.png"];
    
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
}

//例如, 在我的项目中, 添加如下代码:

/////////////////////////////////////////////////////////

/* input: The image and a tag to later identify the view */

@implementation UINavigationBar (CustomImage)

- (void)drawRect:(CGRect)rect {
    
    UIImage *image = [UIImage imageNamed: @"title_bg.png"];
    
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
}

@end

/////////////////////////////////////////////////////////

@implementation FriendsPageViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad {
    
    self.navigationBar.tintColor = [UIColor purpleColor];
    
    
    
    [self initWithRootViewController:[[RegPageViewController alloc] init]];
    
    [super viewDidLoad];
    
}

......

实现的效果如下图:





转载，原文地址 http://blog.csdn.net/wave_1102/archive/2009/11/04/4768212.aspx



为UINavigationBar添加自定义背景



@implementation UINavigationBar (UINavigationBarCategory)



- (void)drawRect:(CGRect)rect {
    
    //颜色填充
    
    //  UIColor *color = [UIColor redColor];
    
    //  CGContextRef context = UIGraphicsGetCurrentContext();
    
    //  CGContextSetFillColor(context, CGColorGetComponents( [color CGColor]));
    
    //  CGContextFillRect(context, rect);
    
    //  self.tintColor = color;
    
    //图片填充
    
    UIColor *color = [UIColor colorWithRed:46.0f/255.0f
                      
                                     green:87.0f/255.0f blue:29.0f/255.0f alpha:1.0f];
    
    
    
    UIImage *img    = [UIImage imageNamed: @"bg.png"];
    
    [img drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)]; 
    
    
    
    self.tintColor = color; 
    
} 





@end