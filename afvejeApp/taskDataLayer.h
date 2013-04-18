//
//  taskDataLayer.h
//  afvejeApp
//
//  Created by Udvikler on 11/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "AFHTTPClient.h"
#import "AFHTTPRequestOperation.h"
#import "AFJSONRequestOperation.h"
#import "AFImageRequestOperation.h"
#import "SBJson.h"
#import "MREntitiesConverter.h"

@interface taskDataLayer : NSObject

-(NSDictionary *) getAllTasks:(NSString *)url;
-(NSDictionary *) insertTask:(NSString *) completeUrl :(NSString *) title :(NSString *) description :(NSString *) type;
-(NSDictionary *) getSpecificTask:(NSString *) taskId :(NSString *)url;
@end