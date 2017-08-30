//
//  Protocols.h
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/30/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChoosePaymentTypeProtocol <NSObject>

- (void)paymentTypeWasSelectedWithName:(NSString*)paymentName;

@end
