//
//  Movie.h
//  Palate
//
//  Created by Spencer Congero on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MovieTaste, Theme, User;

@interface Movie : NSManagedObject

@property (nonatomic, retain) NSNumber * criticScore;
@property (nonatomic, retain) NSNumber * identification;
@property (nonatomic, retain) NSString * posterURL;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet *whichThemes;
@property (nonatomic, retain) MovieTaste *movieTaste;
@property (nonatomic, retain) NSSet *whichUsers;
@end

@interface Movie (CoreDataGeneratedAccessors)

- (void)addWhichThemesObject:(Theme *)value;
- (void)removeWhichThemesObject:(Theme *)value;
- (void)addWhichThemes:(NSSet *)values;
- (void)removeWhichThemes:(NSSet *)values;

- (void)addWhichUsersObject:(User *)value;
- (void)removeWhichUsersObject:(User *)value;
- (void)addWhichUsers:(NSSet *)values;
- (void)removeWhichUsers:(NSSet *)values;

@end
