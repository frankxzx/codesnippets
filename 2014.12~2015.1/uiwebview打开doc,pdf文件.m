// uiwebview打开doc,pdf文件
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: AC0000A3-4571-45A1-977D-19E9196E7B8D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//uiwebview打开doc,pdf文件

UIWebView *webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 55, 320, 300)];

webView.delegate = self;

webView.multipleTouchEnabled = YES;

webView.scalesPageToFit = YES;



NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);

NSString *documentsDirectory = [paths objectAtIndex:0];

NSString *docPath = [documentsDirectory stringByAppendingString:@"/doc2003_1.doc"];    NSLog(@"#######%@",docPath);



NSURL *url = [NSURL fileURLWithPath:docPath];

NSURLRequest *request = [NSURLRequest requestWithURL:url];

[webView loadRequest:request];



[self.view addSubview:webView];

[webView release];