// 当自定义cell上有一个label ，在复用cell的时候出现的问题
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 38FB1B5D-004A-4202-A322-5C6A987991A8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }else{
        UILabel *label = (UILabel*)[cell viewWithTag:200];
        [label removeFromSuperview];
    }
    
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 20)];
    nameLabel.text = @"这是一个自定义的 name";
    nameLabel.tag = 200;
    [cell addSubview:nameLabel];
    
    return cell;
}
把[label removeFromSuperview];这样解决，的确不会出现字体变粗的情况了，但是，新问题出现了。UITableViewCell 的重用机制体现何在？每个cell上都重新删除再添加，相当于每个cell都是独立的，这样就不能体现出UITableViewCell真正的优点了，它的优点就是重用机制，你只要添加一次再重新赋值就好了，为什么还要每次都重新添加，这样感觉即浪费资源又不能体现规范性还没有优点。


2、自定义UITableViewCell

如果你的 cell 上很复杂，系统cell上的View根本不够用，那么就考虑自定义cell吧。

不推荐在- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath此方法中，

把所有需要的view 都添加到 cell 上。

推荐方法：

继承UITableViewCell创建自定义的CustomCell，代码如下：

CustomCell


#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 20)];
        [self addSubview:_nameLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end

使用：


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomCell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.nameLabel.text = @"这是一个自定义的 name";
    return cell;
}
    
