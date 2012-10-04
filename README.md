# Filters
=================

Returns a filtered array in descending order with a provided length.

Best and average case is O(n). Worse case is O(n^2) when the provided length is n and array is in ascending order of length n.



-[NSArray filteredArrayDescendingWithLength:]
----------------------------------------------

    - (NSArray *) filteredArrayDescendingWithLength:(NSUInteger)theLength;

NSArray+Filters.h and NSArray+Filters.m define a category on NSArray that included a method -[NSArray filteredArrayDescendingWithLength:]. This method will filter object in an array given an inputted length.


Unit Tests
-----------

FilterTests.h and FilterTests.m are unit tests testing filtering integers, decimals and strings. 