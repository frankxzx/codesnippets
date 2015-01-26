// 利用Safari打开一个链接 利用UIWebView显示pdf文件、网页
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 9A3DBAD3-7AE2-44A1-8850-84639F044AA3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//利用Safari打开一个链接

NSURL *url = [NSURL URLWithString:@"http://www.cnblogs.com/tracy-e/"];

[[UIApplication sharedApplication] openURL:url];



//利用UIWebView显示pdf文件、网页。。。

webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];

[webView setDelegate:self];

[webView setScalesPageToFit:YES];

[webView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];

[webView setAllowsInlineMediaPlayback:YES];

[self.view addSubview:webView];

NSString *pdfPath = [[NSBundle mainBundle] pathForResource:@"ojc" ofType:@"pdf"];

NSURL *url = [NSURL fileURLWithPath:pdfPath];

NSURLRequest *request = [NSURLRequest requestWithURL:url
                         
                                         cachePolicy:NSURLRequestUseProtocolCachePolicy
                         
                                     timeoutInterval:5];

[webView loadRequest:request];





[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL
                                                     
                                                     URLWithString: @"http://www.cnblogs.com/tracy-e/"]]];



NSString *errorString = [NSString stringWithFormat:@"<html><center><font size=
                         
                         +5 color ='red'>An Error Occurred:<br>%@</fone></center></html>",error];
                         
                         [myWebView loadHTMLString:errorString baseURL:nil];