// 单例
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 910050C6-D387-4B49-BA4E-5BF3D59C9EFC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+(instancetype)sharedlocationGPS
{
    static locationGPS * _sharedGps = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedGps = [[locationGPS alloc] init];
    });
    return _sharedGps;
}