//
//  FiltersTests.m
//  FiltersTests
//
//  Created by Stewart Gillen on 10/3/12.
//  Copyright (c) 2012 Stewart Gillen. All rights reserved.
//

#import "FiltersTests.h"
#import "NSArray+Filters.h"

@implementation FiltersTests

// Test four integers

- (void) testAscendingIntegerArray;
{
    NSArray *anIntegerArray = @[@(0), @(1), @(2), @(3), @(4)];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @(4), @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @(3), @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @(2), @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @(1), @"Fourth object in array is incorrect");
}

- (void) testDecendingIntegerArray;
{
    NSArray *anIntegerArray = @[@(4), @(3), @(2), @(1), @(0)];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @(4), @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @(3), @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @(2), @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @(1), @"Fourth object in array is incorrect");
}

- (void) testRandomIntegerArray;
{
    NSArray *anIntegerArray = @[@(1), @(4), @(0), @(3), @(2)];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @(4), @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @(3), @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @(2), @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @(1), @"Fourth object in array is incorrect");
}

// Test four decimals

- (void) testAscendingDecimalArray;
{
    NSArray *anIntegerArray = @[@(0.), @(.1), @(.2), @(.3), @(.4)];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @(.4), @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @(.3), @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @(.2), @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @(.1), @"Fourth object in array is incorrect");
}

- (void) testDecendingDecimalArray;
{
    NSArray *anIntegerArray = @[@(.4), @(.3), @(.2), @(.1), @(0.)];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @(.4), @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @(.3), @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @(.2), @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @(.1), @"Fourth object in array is incorrect");
}

- (void) testRandomDecimalArray;
{
    NSArray *anIntegerArray = @[@(.1), @(.4), @(0.), @(.3), @(.2)];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @(.4), @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @(.3), @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @(.2), @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @(.1), @"Fourth object in array is incorrect");
}

// Test four strings

- (void) testAscendingStringArray;
{
    NSArray *anIntegerArray = @[@"a", @"b", @"c", @"d", @"z"];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @"z", @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @"d", @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @"c", @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @"b", @"Fourth object in array is incorrect");
}

- (void) testDecendingStringArray;
{
    NSArray *anIntegerArray = @[@"z", @"d", @"c", @"b", @"a"];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @"z", @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @"d", @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @"c", @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @"b", @"Fourth object in array is incorrect");
}

- (void) testRandomStringArray;
{
    NSArray *anIntegerArray = @[@"b", @"z", @"a", @"d", @"c"];
    NSArray *aFilterArray = [anIntegerArray filteredArrayDescendingWithLength:4];
    STAssertEquals(aFilterArray.count, (NSUInteger) 4, @"Count of objects is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:0], @"z", @"First object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:1], @"d", @"Second object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:2], @"c", @"Third object in array is incorrect");
    STAssertEqualObjects([aFilterArray objectAtIndex:3], @"b", @"Fourth object in array is incorrect");
}

@end
