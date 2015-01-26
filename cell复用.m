// cell复用
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: F165805F-9575-4ECE-B0C8-5F948C73F19C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (UITableViewCell *)tableView:(UITableView *)tableView

cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    static NSString *identifier = @"cell";
    
    
    
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        
        cell = [[[UITableViewCell  alloc]initWithStyle:UITableViewCellStyleDefault   reuseIdentifier:identifier] autorelease];
        
        UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(190, 0, 130, cell.frame.size.height)];
        
        label1.tag = 1;
        
        [cell.contentView addSubview:label3];
        
        [label3 release];
        
    }
    
    UILabel *label3 = (UILabel *)[cell.contentView viewWithTag:1];
    
    label1.text = @"44444";
    
    
    
    return cell;
    
}