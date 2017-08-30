//
//  EnterNameViewController.m
//  Protocols_And_Delegates
//
//  Created by Nikita Vintonovich on 8/31/17.
//  Copyright © 2017 Nikita Vintonovich. All rights reserved.
//

#import "EnterNameViewController.h"

@interface EnterNameViewController () <UITextFieldDelegate>

@end

@implementation EnterNameViewController


#pragma mark - UI Actions

- (IBAction)backAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - Text Field Delegates

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([self.delegate respondsToSelector:@selector(nameWasChanged:)])
    {
        [self.delegate nameWasChanged:textField.text];
    }
}

@end
