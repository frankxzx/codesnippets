// 通过NSURLSession 网络请求
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 76A0E13B-3758-4D3F-998F-4505FABFDC0B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)fetchAllPods:(void (^)(NSArray *pods))callback page:(NSUInteger)page
{
    NSString *urlString = [NSString stringWithFormat:@"http://localhost:4567/specs?page=%d", page];
    NSURL *url = [NSURL URLWithString:urlString];
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:
      ^(NSData *data, NSURLResponse *response, NSError *error) {
          //解析json
          id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
          //判断是否已经解析为字典
          if ([result isKindOfClass:[NSDictionary class]]) {
              NSArray *pods = result[@"result"];
              callback(pods);
              NSNumber* numberOfPages = result[@"number_of_pages"];
              NSUInteger nextPage = page + 1;
              if (nextPage < numberOfPages.unsignedIntegerValue) {
                  [self fetchAllPods:callback page:nextPage];
              }
          }
      }] resume];
}