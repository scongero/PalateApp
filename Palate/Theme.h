//
//  Theme.h
//  Palate
//
//  Created by Spencer Congero on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Movie, ThemeTaste;

@interface Theme : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * weight;
@property (nonatomic, retain) NSSet *themeTaste;
@property (nonatomic, retain) Movie *whichMovies;
@end

@interface Theme (CoreDataGeneratedAccessors)

- (void)addThemeTasteObject:(ThemeTaste *)value;
- (void)removeThemeTasteObject:(ThemeTaste *)value;
- (void)addThemeTaste:(NSSet *)values;
- (void)removeThemeTaste:(NSSet *)values;

@end
