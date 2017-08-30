//
//  ViewController.m
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/30/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import "ClientViewController.h"
#import "ClientContentView.h"
#import "PaymentTypeViewController.h"
#import "Protocols.h"

static NSString *const paymentSegueIdentifier = @"PaymentTypeSegue";

@interface ClientViewController () <ChoosePaymentTypeProtocol>

@property (weak, nonatomic) IBOutlet ClientContentView *contentView;

@end

@implementation ClientViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - Storyboard Actions

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:paymentSegueIdentifier])
    {
        PaymentTypeViewController *paymentVC = segue.destinationViewController;
        paymentVC.delegate = self;
    }
}


#pragma mark - Choose Payment Type Protocol Methods

- (void)paymentTypeWasSelectedWithName:(NSString *)paymentName
{
    self.contentView.paymentTypeLabel.text = paymentName;
}

@end
