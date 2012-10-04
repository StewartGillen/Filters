//
//  NSArray+Filters.m
//  Integers
//
//  Created by Stewart Gillen on 10/3/12.
//  Copyright (c) 2012 Stewart Gillen. All rights reserved.
//

#import "NSArray+Filters.h"

@implementation NSArray (Filters)

- (NSArray *) filteredArrayDescendingWithLength:(NSUInteger)theLength;
{
    // Create object queue
    NSMutableArray *anOrderedArray = [NSMutableArray arrayWithCapacity:self.count];
    
    // Iterate over objects in array, insert objects when they compare descending to the current object
    for (id anObject in self) {
        // Compare the current object in our ordered array and compare it with the last object. If it is not descending continue.
        if (anOrderedArray.count > (theLength - 1) && [anObject compare:[anOrderedArray objectAtIndex:(theLength - 1)]] != NSOrderedDescending)
            continue;
        // Insert the current object in order in the ordered array.
        for (NSUInteger anInsertIndex = 0; anInsertIndex < theLength; anInsertIndex++) {
            // Insert the object if there is not an object already inserted or if the object inserted is descening compared to the current object.
            if (anOrderedArray.count == anInsertIndex || [anObject compare:[anOrderedArray objectAtIndex:anInsertIndex]] == NSOrderedDescending) {
                [anOrderedArray insertObject:anObject atIndex:anInsertIndex];
                break;
            }
        }
    }
    
    // Return only the proved subset of objects
    return [anOrderedArray subarrayWithRange:NSMakeRange(0, theLength)];
}

@end
