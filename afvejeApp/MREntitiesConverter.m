//
//  MREntitiesConverter.m
//  afvejeApp
//
//  Created by Udvikler on 18/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "MREntitiesConverter.h"

@implementation MREntitiesConverter
@synthesize resultString;
- (id)init
{
    if([super init]) {
        resultString = [[NSMutableString alloc] init];
    }
    return self;
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)s {
    [self.resultString appendString:s];
}
- (NSString *)convertEntiesInString:(NSString *)s {
    if(s == nil) {
        NSLog(@"ERROR : Parameter string is nil");
    }
    NSString* xmlStr = [NSString stringWithFormat:@"<d>%@</d>", s];
    NSData *data = [xmlStr dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    NSXMLParser* xmlParse = [[NSXMLParser alloc] initWithData:data];
    [xmlParse setDelegate:self];
    [xmlParse parse];
    NSString* returnStr = [[NSString alloc] initWithFormat:@"%@",resultString];
    return returnStr;
}
@end