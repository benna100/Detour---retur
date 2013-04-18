//
//  MREntitiesConverter.h
//  afvejeApp
//
//  Created by Udvikler on 18/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MREntitiesConverter : NSObject {
    NSMutableString* resultString;
}
@property (nonatomic, retain) NSMutableString* resultString;
- (NSString *)convertEntiesInString:(NSString *)s;
@end