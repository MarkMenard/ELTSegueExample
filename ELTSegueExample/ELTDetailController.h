//
//  ELTDetailController.h
//  ELTSegueExample
//
//  Created by Mark Menard on 1/17/13.
//  Copyright (c) 2013 Enable Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELTDismissingController.h"

@interface ELTDetailController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (strong, nonatomic) NSString *message;
@property (weak, nonatomic) id<ELTDismissingController> delegate;

- (IBAction)dismissButtonPressed;

@end
