//
//  taskDataLayer.m
//  afvejeApp
//
//  Created by Udvikler on 11/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//



#import "taskDataLayer.h"



@implementation taskDataLayer


-(NSDictionary *) getAllTasks:(NSString *)url{
    
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:url]];
    
    NSError *error = [[NSError alloc] init];
    NSHTTPURLResponse *responseCode = nil;
    
    NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    
    if([responseCode statusCode] != 200){
        NSLog(@"Error getting %@, HTTP status code %i", url, [responseCode statusCode]);
        return nil;
    }
    
    NSString *JSONResponse = [[NSString alloc] initWithData:oResponseData encoding:NSUTF8StringEncoding];
    
    SBJsonParser* parser = [[SBJsonParser alloc] init];
    NSDictionary* myDict = [parser objectWithString: JSONResponse];
    return myDict;
    
}


-(NSDictionary *) getSpecificTask:(NSString *) taskId :(NSString *)url{

    taskId = [@"/" stringByAppendingString:taskId];
    NSString *urlWithId = [url stringByAppendingString:taskId];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:urlWithId]];
    NSError *error = [[NSError alloc] init];
    NSHTTPURLResponse *responseCode = nil;
    
    NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    
    if([responseCode statusCode] != 200){
        NSLog(@"Error getting %@, HTTP status code %i", urlWithId, [responseCode statusCode]);
        return nil;
    }
    
    
    NSString *JSONResponse = [[NSString alloc] initWithData:oResponseData encoding:NSUTF8StringEncoding];
    
    SBJsonParser* parser = [[SBJsonParser alloc] init];
    NSDictionary* myDict = [parser objectWithString: JSONResponse];
    NSLog(urlWithId);
    return myDict;

}




-(NSDictionary *) insertTask:(NSString *) completeUrl :(NSString *) title :(NSString *) description :(NSString *) type{
    
    NSString *jsonRequest = [NSString stringWithFormat:@"{\"Title\":\"%@\",\"Description\":\"%@\",\"Type\":\"%@\" }",title, description, type];
    
    NSLog(@"Request: %@", jsonRequest);
    
    NSURL *url = [NSURL URLWithString:completeUrl];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    
    NSData *requestData = [jsonRequest dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%d", [requestData length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody: requestData];
    
    NSURLResponse *response;
    NSError *err;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
    
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
    
    NSString *serverResponse = [[NSString alloc] initWithData:responseData encoding:NSASCIIStringEncoding];
    SBJsonParser* parser = [[SBJsonParser alloc] init];
    NSDictionary* myDict = [parser objectWithString: serverResponse];
    return myDict;
}




@end