//
//  detourSetupViewController.h
//  afvejeApp
//
//  Created by Udvikler on 04/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detourSetupViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *intervalTextField;
@property (weak, nonatomic) IBOutlet UIPickerView *intervalPickerView;
@property (nonatomic, retain) NSArray *pickerViewArray;
- (IBAction)intervalTextFieldClick:(id)sender;

@end
