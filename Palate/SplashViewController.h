//
//  SplashViewController.h
//  Palate
//
//  Created by Rahul Madduluri on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Foundation/Foundation.h"
#import "QuartzCore/QuartzCore.h"

@interface SplashViewController : UIViewController <UIApplicationDelegate>

@property (nonatomic,strong) IBOutlet UIImageView *splashScreenView;

@property (weak, nonatomic) IBOutlet UIImageView *pentagon1;
@property (weak, nonatomic) IBOutlet UIImageView *pentagon2;
@property (weak, nonatomic) IBOutlet UIImageView *pentagon3;
@property (strong, nonatomic) IBOutlet UIImageView *pentagon4;

@property (weak, nonatomic) IBOutlet UIImageView *palateLogo;

-(void)splashAnimationDidStop:(NSString *)animationID finished: (NSNumber *)finished context: (void *)context;


@end
