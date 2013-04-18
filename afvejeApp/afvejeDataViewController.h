//
//  afvejeDataViewController.h
//  afvejeApp
//
//  Created by Udvikler on 25/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface afvejeDataViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;
- (IBAction)firstButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (copy, nonatomic) NSString *userName;

@end
