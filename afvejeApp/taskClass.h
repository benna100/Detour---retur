//
//  taskClass.h
//  afvejeApp
//
//  Created by Udvikler on 18/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface taskClass : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *description;
@property (nonatomic) NSString *type;
@property (nonatomic) NSString *id;
@property (nonatomic) NSString *rating;
@property (nonatomic) BOOL *userCreated;

@end
