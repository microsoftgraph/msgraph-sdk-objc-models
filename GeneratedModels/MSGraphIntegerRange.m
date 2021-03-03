// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIntegerRange()
{
    int64_t _end;
    int64_t _start;
}
@end

@implementation MSGraphIntegerRange

- (int64_t) end
{
    _end = [self.dictionary[@"end"] longLongValue];
    return _end;
}

- (void) setEnd: (int64_t) val
{
    _end = val;
    self.dictionary[@"end"] = @(val);
}

- (int64_t) start
{
    _start = [self.dictionary[@"start"] longLongValue];
    return _start;
}

- (void) setStart: (int64_t) val
{
    _start = val;
    self.dictionary[@"start"] = @(val);
}

@end
