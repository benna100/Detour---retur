//
//  detourCreatedViewController.m
//  afvejeApp
//
//  Created by Udvikler on 04/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "detourCreatedViewController.h"
#import "createDetourViewController.h"

@interface detourCreatedViewController ()

@end

@implementation detourCreatedViewController
@synthesize detourInfo;
@synthesize taskTitleTextField;
@synthesize taskDescriptionTextField;
@synthesize taskTypeTextField;
//@synthesize taskTitle1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	//createDetourViewController *detour = [[createDetourViewController alloc] init];
    //[self setTitle:taskTitle];
    //detourInfo.text = @"dummy info";
    
    NSString *titleText = @"Opgave titlen: ";
    NSString *descriptionText = @"Opgave beskrivelsen: ";
    NSString *typeText = @"Opgave typen: ";
    
    NSString *taskTitle = self.taskTitle;
    NSString *taskDescription = self.taskDescription;
    NSString *taskType = self.taskType;
    
    NSString *totalTitle = [titleText stringByAppendingString:taskTitle];
    NSString *totalDescription = [descriptionText stringByAppendingString:taskDescription];
    NSString *totalType = [typeText stringByAppendingString:taskType];
    
    detourInfo.text = totalTitle;
    taskDescriptionTextField.text = totalDescription;
    taskTypeTextField.text = totalType;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
