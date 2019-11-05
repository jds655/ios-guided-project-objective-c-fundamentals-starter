//
//  LSIPersonContoller.h
//  StarWarsSearch-Objc
//
//  Created by Lambda_School_Loaner_214 on 11/5/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPersonContoller : NSObject

- (void)searchForPeopleWithSearchTerm:(NSString *)searchTerm
completion:(void (^)(NSArray *people, NSError *error))completion;

@end
