//
//  ELTViewController.m
//  ELTSegueExample
//
//  Created by Mark Menard on 1/17/13.
//  Copyright (c) 2013 Enable Labs. All rights reserved.
//

#import "ELTViewController.h"
#import "ELTDetailController.h"

@interface ELTViewController ()

@end

@implementation ELTViewController

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

- (IBAction)buttonAPressed:(id)sender {
    NSLog(@"Button A Pressed");
    ELTDetailController *detailController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailController"];
    detailController.message = @"Button A Pressed";
    detailController.delegate = self;
    [self presentViewController:detailController animated:YES completion:nil];
}

- (IBAction)buttonBPressed:(id)sender {
    NSLog(@"Button B Pressed");
    [self performSegueWithIdentifier:@"ButtonBPressedSegue" sender:self];
}

- (IBAction)buttonCPressed:(id)sender {
    NSLog(@"Button C Pressed");
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ELTDetailController *detailController = [segue destinationViewController];
    detailController.delegate = self;
    if ([segue.identifier isEqualToString:@"ButtonBPressedSegue"]) {
        detailController.message = @"Button B Pressed";
    } else if ([segue.identifier isEqualToString:@"ButtonCPressedSegue"]) {
        detailController.message = @"Button C Pressed";
    }
}

-(void) dismissPresentedController:(UIViewController *)presentedController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
