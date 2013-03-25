//
//  afvejeDataViewController.m
//  afvejeApp
//
//  Created by Udvikler on 25/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "afvejeDataViewController.h"

@interface afvejeDataViewController ()

@end

@implementation afvejeDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
