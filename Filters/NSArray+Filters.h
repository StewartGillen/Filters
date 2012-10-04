//
//  NSArray+Filters.h
//  Integers
//
//  Created by Stewart Gillen on 10/3/12.
//  Copyright (c) 2012 Stewart Gillen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Filters)

// Returns array of objects descending
- (NSArray *) filteredArrayDescendingWithLength:(NSUInteger)theLength;

@end
