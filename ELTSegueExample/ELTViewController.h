//
//  ELTViewController.h
//  ELTSegueExample
//
//  Created by Mark Menard on 1/17/13.
//  Copyright (c) 2013 Enable Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELTDismissingController.h"

@interface ELTViewController : UIViewController <ELTDismissingController>

- (IBAction)buttonAPressed:(id)sender;
- (IBAction)buttonBPressed:(id)sender;
- (IBAction)buttonCPressed:(id)sender;

@end
