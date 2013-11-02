//
//  User.h
//  Palate
//
//  Created by Spencer Congero on 11/2/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Movie, MovieTaste, ThemeTaste, User;

@interface User : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) id profilePicture;
@property (nonatomic, retain) NSSet *tastebuds;
@property (nonatomic, retain) NSSet *themeTastes;
@property (nonatomic, retain) NSSet *whichMovies;
@property (nonatomic, retain) NSSet *movieTastes;
@end

@interface User (CoreDataGeneratedAccessors)

- (void)addTastebudsObject:(User *)value;
- (void)removeTastebudsObject:(User *)value;
- (void)addTastebuds:(NSSet *)values;
- (void)removeTastebuds:(NSSet *)values;

- (void)addThemeTastesObject:(ThemeTaste *)value;
- (void)removeThemeTastesObject:(ThemeTaste *)value;
- (void)addThemeTastes:(NSSet *)values;
- (void)removeThemeTastes:(NSSet *)values;

- (void)addWhichMoviesObject:(Movie *)value;
- (void)removeWhichMoviesObject:(Movie *)value;
- (void)addWhichMovies:(NSSet *)values;
- (void)removeWhichMovies:(NSSet *)values;

- (void)addMovieTastesObject:(MovieTaste *)value;
- (void)removeMovieTastesObject:(MovieTaste *)value;
- (void)addMovieTastes:(NSSet *)values;
- (void)removeMovieTastes:(NSSet *)values;

@end
