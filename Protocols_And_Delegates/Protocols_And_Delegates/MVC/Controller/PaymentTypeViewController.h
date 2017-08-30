//
//  PaymentTypeViewController.h
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/30/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Protocols.h"

@interface PaymentTypeViewController : UIViewController

@property (nonatomic, weak) id <ChoosePaymentTypeProtocol> delegate;

@end
