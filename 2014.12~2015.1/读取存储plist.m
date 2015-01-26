// 读取存储plist
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 4CC7CD42-4C98-493A-BF83-362DB43BF873
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//创建.plist文件并存储



NSString *errorDesc;  //用来存放错误信息

NSMutableDictionary *rootObj = [NSMutableDictionary dictionaryWithCapacity:4]; //NSDictionary, NSData等文件可以直接转化为plist文件

NSDictionary *innerDict;

NSString *name;

Player *player;

NSInteger saveIndex;



for(int i = 0; i < [playerArray count]; i++) {
    
    player = nil;
    
    player = [playerArray objectAtIndex:i];
    
    if(player == nil)
        
        break;
    
    name = player.playerName;// This "Player1" denotes the player name could also be the computer name
    
    innerDict = [self getAllNodeInfoToDictionary:player];
    
    [rootObj setObject:innerDict forKey:name]; // This "Player1" denotes the person who start this game
    
}

player = nil;

NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:(id)rootObj format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorDesc];



红色部分可以忽略，只是给rootObj添加一点内容。这个plistData为创建好的plist文件，用其writeToFile方法就可以写成文件。下面是代码：



/*得到移动设备上的文件存放位置*/

NSString *documentsPath = [self getDocumentsDirectory];

NSString *savePath = [documentsPath stringByAppendingPathComponent:@"save.plist"];



/*存文件*/

if (plistData) {
    
    [plistData writeToFile:savePath atomically:YES];
    
}

else {
    
    NSLog(errorDesc);
    
    [errorDesc release];
    
}



- (NSString *)getDocumentsDirectory {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    return [paths objectAtIndex:0];
    
}



//读取plist文件并转化为NSDictionary



NSString *documentsPath = [self getDocumentsDirectory];

NSString *fullPath = [documentsPath stringByAppendingPathComponent:@"save.plist"];

NSMutableDictionary* plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:fullPath];

