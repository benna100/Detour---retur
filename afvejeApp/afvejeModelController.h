//
//  afvejeModelController.h
//  afvejeApp
//
//  Created by Udvikler on 25/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <UIKit/UIKit.h>

@class afvejeDataViewController;

@interface afvejeModelController : NSObject <UIPageViewControllerDataSource>

- (afvejeDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(afvejeDataViewController *)viewController;

@end
