//  NSString / NSData / char* 类型之间的转换
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 1DD81F78-CD6F-43E1-8DD5-EBA0D9AA119A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSString / NSData / char* 类型之间的转换

1. NSString转化为UNICODE String：
(NSString*)fname ＝ @“Test”;
char fnameStr[10];
memcpy(fnameStr, [fname cStringUsingEncoding:NSUnicodeStringEncoding], 2*([fname length]));

与strcpy相比，memcpy并不是遇到'\0'就结束，而是一定会拷贝完n个字节


2. NSString 转化为 char *
NSString * str＝ @“Test”;
const char * a =[str UTF8String];

3.char * 转化为 NSString

NSString *str=[NSString stringWithCString  encoding:NSUTF8StringEncoding];


4. char * 转化 NSData
方法一：
char * a = (char*)malloc(sizeof(byte)*16);
NSData *data = [NSData dataWithBytes: a   length:strlen(a)];
方法二：
转换为NSString： - (id)initWithUTF8String:(const char *)bytes
然后用NSString的 - (NSData *)dataUsingEncoding:(NSStringEncoding)encoding

5. NSData 转化 char *
NSData data ；
char* a=[data bytes];

6. NSData 转化 NSString;

NSData* data;

NSString* aStr= ［NSString alloc] initWithData:data   encoding:NSASCIIStringEncoding];


7. NSString 转化 NSData对象

NSData* xmlData = [@"testdata" dataUsingEncoding:NSUTF8StringEncoding];

http://blog.sina.com.cn/s/articlelist_1256141290_14_1.html


NSString 转化 NSURL

//NSURL *url = [NSURL URLWithString:[str   stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding ]];

NSString *urlString=[@"http://www.google.com/search?client=safari&rls=en&q=搜索&ie=UTF-8&oe=UTF-8" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

NSURL 转化 NSString

NSURL *url=[NSURL URLWithString:urlString];

NSString *s=[[url absoluteString] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];



NSArray *arr = [urlStr componentsSeparatedByString:@"&"];
NSURL *url = [NSURL URLWithString:[[arr objectAtIndex:0] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding ]];
NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
[request setHTTPMethod:@"POST"];

NSMutableArray *_array = [[NSMutableArray alloc] initWithCapacity:0];
for (int i = 1; i < [arr count]; ++i ){
    NSString *str = [arr objectAtIndex:i];
    [_array addObject:str];
}
[_array componentsJoinedByString:@"&"];
NSData *data = [[_array componentsJoinedByString:@"&"] dataUsingEncoding: NSASCIIStringEncoding];
[request setHTTPBody:data];

// 发送请求并获得服务器反馈的数据
NSData *urldata = [AESEnCDeCViewController Get:url];

// 第一种 转换NSData数据到char*字符串
char * test = (char*)[urldata bytes];
std::string old = deaes(test);

// 第二种 转换NSData到UTF8编码的NSString中再转换为char*字符串
//    NSString *desStr = [[NSString alloc] initWithData:urldata encoding:NSUTF8StringEncoding];
//    const char *desresult = [desStr UTF8String];
//    std::string old = deaes(desresult);

// 解密字字符串到明文
NSString *oldstr = [[NSString alloc] initWithCString:old.c_str()];



很多时候软件读取的中文网页编码集是gb2312，所以显示出来的是乱码。这时需要将NSString文字编码转换

1 NSURL *url = [NSURL URLWithString:urlStr];
2 NSData *data = [NSData dataWithContentsOfURL:url];
3 NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
4 NSString *retStr = [[NSString alloc] initWithData:data encoding:enc];

