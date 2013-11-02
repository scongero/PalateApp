//
//  SplashViewController.m
//  Palate
//
//  Created by Rahul Madduluri on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import "SplashViewController.h"

#define PENTAGON_X 288
#define PENTAGON_Y 333
#define PENTAGON_WIDTH 96
#define PENTAGON_HEIGHT 81


@interface SplashViewController ()

@end

@implementation SplashViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (UIUserInterfaceIdiomPad)
    {
        //Set Frames for pentagon Logo
        self.pentagon1.frame = CGRectMake(100, 40, PENTAGON_WIDTH, PENTAGON_HEIGHT);
        self.pentagon2.frame = CGRectMake(150, 500, PENTAGON_WIDTH, PENTAGON_HEIGHT);
        self.pentagon3.frame = CGRectMake(800, -200, PENTAGON_WIDTH, PENTAGON_HEIGHT);
        self.pentagon4.frame = CGRectMake(1100, 1000, PENTAGON_WIDTH, PENTAGON_HEIGHT);
        
        
        //Make images initially transparent
        self.palateLogo.alpha=0;
        self.pentagon1.alpha=0;
        self.pentagon2.alpha=0;
        self.pentagon3.alpha=0;
        self.pentagon4.alpha=0;
        
    }
    
    //animation settings
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelegate:self];
    
    
    
    //Set Final Position for all images
    self.pentagon1.frame = CGRectMake(PENTAGON_X, PENTAGON_Y, PENTAGON_WIDTH, PENTAGON_HEIGHT);
    self.pentagon2.frame = CGRectMake(PENTAGON_X, PENTAGON_Y, PENTAGON_WIDTH, PENTAGON_HEIGHT);
    self.pentagon3.frame = CGRectMake(PENTAGON_X, PENTAGON_Y, PENTAGON_WIDTH, PENTAGON_HEIGHT);
    self.pentagon4.frame = CGRectMake(PENTAGON_X, PENTAGON_Y, PENTAGON_WIDTH, PENTAGON_HEIGHT);
    
    //Final transparency
    self.pentagon1.alpha = 1.0;
    self.pentagon2.alpha = 1.0;
    self.pentagon3.alpha = 1.0;
    self.pentagon4.alpha = 1.0;
    self.palateLogo.alpha = 1.0;
    
    //Add Subviews
    [self.splashScreenView addSubview:self.pentagon1];
    [self.splashScreenView addSubview:self.pentagon2];
    [self.splashScreenView addSubview:self.pentagon3];
    [self.splashScreenView addSubview:self.pentagon4];
    
    //Animation Stop Selector
    [UIView setAnimationDidStopSelector:@selector(splashAnimationDidStop:finished:context:)];
    
    //commit animations and add subview
    [UIView commitAnimations];
    
    [self.view addSubview:self.splashScreenView];
    
    
}


-(void)splashAnimationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context
{
    CATransition *transition = [CATransition animation];
    transition.duration = 4.0;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    
    [self.splashScreenView.layer addAnimation:transition forKey:nil];
    
    //Begin animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    self.pentagon1.alpha=0;
    self.pentagon2.alpha=0;
    self.pentagon3.alpha=0;
    self.pentagon4.alpha=0;
    self.palateLogo.alpha=0;
    
    [UIView commitAnimations];
    
    //Segue
    [self performSegueWithIdentifier:@"SplashToLogin" sender:self];
}



@end
