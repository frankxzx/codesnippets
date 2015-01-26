// 多线程例子
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: C60736E6-EA56-4723-963C-23F71C37CE5D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//当手指触摸屏幕的时候，从网络上下载一张图片到控制器的view上显示
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

        //1.获取一个全局串行队列
         dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
         //2.把任务添加到队列中执行
         dispatch_async(queue, ^{
        
                 //打印当前线程
                 NSLog(@"%@",[NSThread currentThread]);
               //3.从网络上下载图片
                 NSURL *urlstr=[NSURL URLWithString:@"http://h.hiphotos.baidu.com/baike/w%3D268/sign=30b3fb747b310a55c424d9f28f444387/1e30e924b899a9018b8d3ab11f950a7b0308f5f9.jpg"];
                 NSData *data=[NSData dataWithContentsOfURL:urlstr];
                 UIImage *image=[UIImage imageWithData:data];
                 //提示
                 NSLog(@"图片加载完毕");
        
                 //4.回到主线程，展示图片
         //        [self.imageView performSelectorOnMainThread:@selector(setImage:) withObject:image waitUntilDone:NO];
                 dispatch_async(dispatch_get_main_queue(), ^{
                         self.imageView.image=image;
                         //打印当前线程
                         NSLog(@"%@",[NSThread currentThread]);
                     });
             });
    }