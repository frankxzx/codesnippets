// 获取设备唯一ID.
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 68C30F42-40C1-4312-900C-D07AD32655A7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
获取设备唯一ID.

现在IOS7的安装覆盖率已经超过80%了。IOS7不能使用获取的UDID的接口（涉及到隐私），之前有不少人采用取得MAC地址的方式，IOS7下这个接口也废弃了，现在可以的方式是用UUID，但是UUID一个不好的地方是每次调用一次，生成的就不一样，这个会导致一旦APP卸载重装，UUID就变了。



所以呢，在第一次使用的时候，创建生成一个UUID，然后把这个UUID和应用的ID一起保存到keychain(个人理解应该和windows的注册表类似)中，下次需要时，从keychain读取，这样就算APP卸载了，只要设备没进行reset，则UUID读出来还是不变的。



#import "SSKeychain.h"

void GetIOSUUID(string& sRetUUID)
{
    NSString *retrieveuuid = [SSKeychain passwordForService:@"com.91.dhdar"account:@"uuid"];
    if ( retrieveuuid == nil || [retrieveuuid isEqualToString:@""])
    {
        CFUUIDRef uuid = CFUUIDCreate(NULL);
        assert(uuid != NULL);
        CFStringRef uuidStr = CFUUIDCreateString(NULL, uuid);
        retrieveuuid = [NSString stringWithFormat:@"%@", uuidStr];
        [SSKeychain setPassword: retrieveuuid
                     forService:@"com.game.userinfo"account:@"uuid"];
    }
    if (retrieveuuid ~= nil)
    {
        sRetUUID = [retrieveuuid UTF8String];
    }
    else
    {
        sRetUUID = "null";
    }
    
}

需要用到SSKeychain，从这里下载

http://github.com/soffes/sskeychain



把SSKeychain 文件夹拷进去