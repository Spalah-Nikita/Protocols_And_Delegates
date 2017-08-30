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
#import "FoodMenuViewController.h"
#import "EnterNameViewController.h"
#import "Protocols.h"

static NSString *const paymentSegueIdentifier = @"PaymentTypeSegue";
static NSString *const menuSegueIdentifier = @"FoodMenuSegue";
static NSString *const clientNameSegueIdentifier = @"EnterNameSegue";

@interface ClientViewController () <ChoosePaymentTypeProtocol, FoodMenuProtocol, EditNameProtocol>

@property (weak, nonatomic) IBOutlet ClientContentView *contentView;

@end

@implementation ClientViewController


#pragma mark - Storyboard Actions

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:paymentSegueIdentifier])
    {
        PaymentTypeViewController *paymentVC = segue.destinationViewController;
        paymentVC.delegate = self;
    }
    else if ([segue.identifier isEqualToString:menuSegueIdentifier])
    {
        FoodMenuViewController *menuVC = segue.destinationViewController;
        menuVC.delegate = self;
    }
    else if ([segue.identifier isEqualToString:clientNameSegueIdentifier])
    {
        EnterNameViewController *nameVC = segue.destinationViewController;
        nameVC.delegate = self;
    }
}


#pragma mark - Choose Payment Type Protocol Methods

- (void)paymentTypeWasSelectedWithName:(NSString *)paymentName
{
    self.contentView.paymentTypeLabel.text = paymentName;
}


#pragma mark - Edit Name Protocol Methods

- (void)nameWasChanged:(NSString *)clientName
{
    self.contentView.clientNameLabel.text = clientName;
}


#pragma mark - Food Menu Protocol Methods

- (void)menuWasSelected:(NSString *)menuName
{
    self.contentView.menuLabel.text = menuName;
}

@end
