//
//  FoodMenuViewController.m
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/31/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import "FoodMenuViewController.h"

@interface FoodMenuViewController ()

@end

@implementation FoodMenuViewController

- (IBAction)menuDidSelectAction:(UIButton *)button
{
    if ([self.delegate respondsToSelector:@selector(nameWasChanged:)])
    {
        [self.delegate menuWasSelected:button.titleLabel.text];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
