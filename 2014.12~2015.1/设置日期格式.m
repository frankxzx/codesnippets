// 设置日期格式
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 62B163D0-0B38-4B23-B5E7-56EA534F29DA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Configuring a date formatter

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setGeneratesCalendarDates:YES];
    
    [dateFormatter setLocale:[NSLocale currentLocale]];
    
    [dateFormatter setCalendar:[NSCalendar autoupdatingCurrentCalendar]];
    
    [dateFormatter setTimeZone:[NSTimeZone defaultTimeZone]];
    
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    
    DOB.placeholder = [NSString stringWithFormat:@"Example: %@",[dateFormatter stringFromDate:[NSDate date]]];
    
}