//
//  FoodMenuViewController.h
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/31/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Protocols.h"

@interface FoodMenuViewController : UIViewController

@property (nonatomic, weak) id <FoodMenuProtocol> delegate;

@end
