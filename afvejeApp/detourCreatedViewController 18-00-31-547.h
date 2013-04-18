//
//  detourCreatedViewController.h
//  afvejeApp
//
//  Created by Udvikler on 04/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detourCreatedViewController : UIViewController{
    NSString *taskTitle;
}
@property (weak, nonatomic) IBOutlet UILabel *detourInfo;
@property (nonatomic) NSString *taskTitle;
@property (nonatomic) NSString *taskDescription;
@property (nonatomic) NSString *taskType;
@property (weak, nonatomic) IBOutlet UILabel *taskTitleTextField;
@property (weak, nonatomic) IBOutlet UILabel *taskDescriptionTextField;
@property (weak, nonatomic) IBOutlet UILabel *taskTypeTextField;

@end
