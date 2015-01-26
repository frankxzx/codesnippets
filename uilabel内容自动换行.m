// UILabel内容自动换行
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 06358F4F-5BA3-47F1-BC6D-C3C730A8C948
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//  UILabel内容自动换行
    UIFont *fontName = [UIFont systemFontOfSize:16.0f];
    //定义字体大小
    CGSize sizeName = [orderFood.food_name
                       sizeWithFont:fontName constrainedToSize:CGSizeMake(130.0f,MAXFLOAT) lin
                       eBreakMode:UILineBreakModeWordWrap];
    //orderFood.food_name为字符串，即UILabel要显示的内容；fontName 字体大小；CGSizeMake(130.0f,MAXFLOAT) UILabel显示内容的宽度130.0f，MAXFLOAT为显示内容所允许的最大高度，最终得到的sizeName，其width,heightwei值为显示内容所需显示的实际宽度与高度；UILineBreakModeWordWrap以单词为单位换行，以单词为单位截断。
    //定义显示内容的UILabel，宽度为130，高度为经过sizeName.height。
    UILabel *lbFoodName = [[UILabel alloc]initWithFrame:
                           CGRectMake(94, 2, 130, sizeName.height)];
    [lbFoodName setText:orderFood.food_name];
    [lbFoodName setBackgroundColor:[UIColor clearColor]];
    [lbFoodName setFont:[UIFont systemFontOfSize:16.0f]];
    [lbFoodName setNumberOfLines:0];
    //注意这里UILabel的numberoflines(即最大行数限制)设置成0，即不做行数限制。
    [lbFoodName setLineBreakMode:
     UILineBreakModeWordWrap];  
    //将UILabel加入到tvCell 的View中显示。  
    [tvCell.contentView addSubview:lbFoodName];
