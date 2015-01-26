// bundle创建
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: B07E9B4D-486D-48E0-AF10-F2061B7D8C6D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (NSBundle *)resourceBundle:(NSString *)bundleName
{

    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleName ofType:@"bundle"]; //显然这里你也可以通过其他的方式取得，总之找到bundle的完整路径即可。
    
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    
    return bundle;
}
- (UIImage *)doubanImageForName:(NSString *)imageName
{
    NSBundle *bundle = [[self class] resourceBundle:@"Douban"];
    <p>
    return [UIImage imageWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"images/%@", imageName] ofType:@"png"]];//我这里是有一个<span style="font-size:9pt;line-height:1.5;">Douban.bundle的bundle文件，这个bundle文件下面有一个images文件夹。你想要的图片就在这个文件夹下面。</span>
    </p>
}