//
//  ThemeTaste.h
//  Palate
//
//  Created by Spencer Congero on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Theme, User;

@interface ThemeTaste : NSManagedObject

@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) User *whichUser;
@property (nonatomic, retain) Theme *whichTheme;

@end
