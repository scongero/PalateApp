//
//  LoginViewController.m
//  Palate
//
//  Created by Rahul Madduluri on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import "LoginViewController.h"

//Constants
#define MINIMUM_FONT_SIZE 20
#define PENTAGON_INITIAL_POSITION_X 20
#define PENTAGON_INITIAL_POSITION_Y 20
#define PENTAGON_FINAL_POSITION_X 20
#define PENTAGON_FINAL_POSITION_Y 591
#define PENTAGON_WIDTH 97
#define PENTAGON_HEIGHT 67
#define PENTAGON_FINAL_WIDTH 48
#define PENTAGON_FINAL_HEIGHT 45


@interface LoginViewController ()

@end

@implementation LoginViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //make textfields transparent; set font size; set delegate
    self.usernameTextField.backgroundColor = [UIColor clearColor];
    self.usernameTextField.borderStyle = UITextBorderStyleNone;
    self.usernameTextField.minimumFontSize = MINIMUM_FONT_SIZE;
    self.usernameTextField.delegate = self;
    
    self.passwordTextField.backgroundColor = [UIColor clearColor];
    self.passwordTextField.borderStyle = UITextBorderStyleNone;
    self.passwordTextField.minimumFontSize = MINIMUM_FONT_SIZE;
    self.passwordTextField.delegate = self;
    self.passwordTextField.secureTextEntry = YES;
    
    
    //UISliderView Initialization
    self.slideToUnlock.userInteractionEnabled = NO;
    self.slideToUnlock.alpha = 0;
    UIImage *pentagonSliderImage = [UIImage imageNamed:@"resized palate pentagon.png"];
    
    UIImage *stetchLeftTrack= [[UIImage imageNamed:@"Nothing.png"]
                               stretchableImageWithLeftCapWidth:30.0 topCapHeight:0.0];
	UIImage *stetchRightTrack= [[UIImage imageNamed:@"Nothing.png"]
                                stretchableImageWithLeftCapWidth:30.0 topCapHeight:0.0];
    
	[self.slideToUnlock setThumbImage:pentagonSliderImage forState:UIControlStateNormal];
	[self.slideToUnlock setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
	[self.slideToUnlock setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    
    
    
}



- (IBAction)unlockItValueChanged:(id)sender {
    self.slideToUnlockLabel.alpha = 1.0 - self.slideToUnlock.value;
    if (self.slideToUnlock.value == 1.0)
    {
        // Put here what happens when it is unlocked
        NSLog(@"SHOULDWORK");
        self.slideToUnlock.hidden = YES;
        self.slideToUnlockLabel.hidden = YES;
        [self performSegueWithIdentifier:@"LoginToMain" sender:self];
    }

}

- (IBAction)unlockIt:(id)sender {
    if (self.slideToUnlock.value ==1.0) {  // if user slide far enough, stop the operation
    }
    else {
        // user did not slide far enough, so return back to 0 position
        [UIView beginAnimations: @"SlideCanceled" context: nil];
        [UIView setAnimationDelegate: self];
        [UIView setAnimationDuration: 0.35];
        // use CurveEaseOut to create "spring" effect
        [UIView setAnimationCurve: UIViewAnimationCurveEaseOut];
        self.slideToUnlock.value = 0.0;
        self.slideToUnlockLabel.alpha = 1.0;
        [UIView commitAnimations];
        
        
    }

}









//Animation finished
-(void)loginAnimationDidStop
{
    self.pentagonLogo.alpha = 0;
    self.slideToUnlock.alpha = 1.0;
    //initialize and enable slider
    
    
    self.slideToUnlock.userInteractionEnabled = YES;
    
}



//Animate
-(void)logoAnimation
{
    
    [UIView animateWithDuration:.1 animations:^{
        self.pentagonLogo.frame = CGRectMake(PENTAGON_FINAL_POSITION_X, PENTAGON_FINAL_POSITION_Y, PENTAGON_WIDTH, PENTAGON_HEIGHT);
        
        
        //animation stop selector
        //[UIView setAnimationDidStopSelector:@selector(loginAnimationDidStop:finished:context:)];
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:1.5 animations:^{
            self.pentagonLogo.frame = CGRectMake(PENTAGON_FINAL_POSITION_X, PENTAGON_FINAL_POSITION_Y, PENTAGON_FINAL_WIDTH, PENTAGON_FINAL_HEIGHT);
            
            
        }completion:^(BOOL finished) {
            //animation stop selector
            [self loginAnimationDidStop];
        }];
        
    }];
    
    
    
    
    
    
}

//UITextField Delegate Method
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}


-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.passwordTextField)
    {
        
        [self logoAnimation];
        
        
        
    }
}



@end
