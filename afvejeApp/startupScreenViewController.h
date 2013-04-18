//
//  startupScreenViewController.h
//  afvejeApp
//
//  Created by Udvikler on 25/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "taskDataLayer.h"

@interface startupScreenViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelTest;
@property (readwrite) IBOutlet UIButton *createDetourButton;
@property (weak, nonatomic) IBOutlet UIButton *joinDetourButton;

@end
