// 根据屏幕高度 判断iphone型号
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: E56900BE-D225-4A53-B505-E69BF2E0C77E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// 屏幕尺寸的枚举类型
typedef NS_ENUM(NSUInteger, ScreenSizeType) {
    iPhone4Size,    // 480
    iPhone5Size,    // 568
    iPhone6Size,    // 667
    iPhone6pSize,   // 736
};

然后写一个静态函数获取当前的尺寸类型：

+(ScreenSizeType)getScreenSizeType {
    if (kScreenBounds.size.height == 736) {
        return iPhone6pSize;
    } else if (kScreenBounds.size.height == 667) {
        return iPhone6Size;
    } else if (kScreenBounds.size.height == 568) {
        return iPhone5Size;
    }
    return iPhone4Size;
}

然后再通过宏获取这个类型：

#define kScreenSizeType [PublicFunction getScreenSizeType]

最后，使用的时候这样：

int a = kScreenSizeType == iPhone6pSize ? 1 : 0;
