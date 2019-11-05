//
//  LSIPerson.h
//  StarWarsSearch-Objc
//
//  Created by Lambda_School_Loaner_214 on 11/5/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPerson : NSObject

@property NSString *name;
@property NSString *birthYear;
@property NSString *height;
@property NSString *eyeColor;

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(NSString *)height
                    eyecolor:(NSString *)eyecolor;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
