//
//  ELTDismissingController.h
//  ELTSegueExample
//
//  Created by Mark Menard on 1/17/13.
//  Copyright (c) 2013 Enable Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ELTDismissingController

@required -(void)dismissPresentedController:(UIViewController *)presentedController;

@end
