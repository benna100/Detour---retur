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

@synthesize label=_label;
@synthesize textfield = _textfield;
@synthesize userName = _userName;

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

- (BOOL) textFieldShouldReturn:(UITextField *) theTextField{
    if(theTextField == self.textfield){
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)firstButton:(id)sender {
    self.userName = self.textfield.text;
    
    NSString *nameString = self.userName;
    
    if([nameString length] == 0){
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}




@end