//
//  PaymentTypeViewController.m
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/30/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import "PaymentTypeViewController.h"

@interface PaymentTypeViewController ()

@end

@implementation PaymentTypeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Actions

- (IBAction)buttonWasTapped:(UIButton*)button
{
    if ([self.delegate respondsToSelector:@selector(paymentTypeWasSelectedWithName:)])
    {
        [self.delegate paymentTypeWasSelectedWithName:button.titleLabel.text];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
