//
//  startupScreenViewController.m
//  afvejeApp
//
//  Created by Udvikler on 25/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "startupScreenViewController.h"

@implementation startupScreenViewController

@synthesize createDetourButton;
@synthesize joinDetourButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    self.labelTest.text = @"Velkommen til Afveje appen";
    self.createDetourButton.titleLabel.text = @"Opret afvej";
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.labelTest.text = @"Velkommen til Afveje appen";
    [createDetourButton setTitle:@"Opret afvej" forState:UIControlStateNormal];
    [joinDetourButton setTitle:@"Tag på afvej" forState:UIControlStateNormal];
    
    NSLog(@"startup screen");
    
    
    taskDataLayer *data = [[taskDataLayer alloc] init];
    NSString *url = [[NSString alloc] init];
    url = @"http://172.21.231.203:3000/tasks";
    NSDictionary *url2 =[data getAllTasks:url];
    
    
    //[data getAllTasks];
    
    NSLog(@"Out of classstartup");
    
    //self.createDetourButton.titleLabel.text = @"Opret afvej";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    //self.createDetourButton.titleLabel.text = @"Opret afvej";
}

@end
