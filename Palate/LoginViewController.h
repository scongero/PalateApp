//
//  LoginViewController.h
//  Palate
//
//  Created by Rahul Madduluri on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>

//Pentagon Logo
@property (weak, nonatomic) IBOutlet UIImageView *pentagonLogo;

//Text Fields
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

//UISlider
@property (strong, nonatomic) IBOutlet UISlider *slideToUnlock;


//STU image
@property (strong, nonatomic) IBOutlet UIImageView *slideToUnlockLabel;



-(void)loginAnimationDidStop;


@end
