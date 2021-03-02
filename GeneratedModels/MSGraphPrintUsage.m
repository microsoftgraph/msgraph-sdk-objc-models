// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintUsage()
{
    int64_t _completedBlackAndWhiteJobCount;
    int64_t _completedColorJobCount;
    int64_t _incompleteJobCount;
    MSDate* _usageDate;
}
@end

@implementation MSGraphPrintUsage

- (int64_t) completedBlackAndWhiteJobCount
{
    _completedBlackAndWhiteJobCount = [self.dictionary[@"completedBlackAndWhiteJobCount"] longLongValue];
    return _completedBlackAndWhiteJobCount;
}

- (void) setCompletedBlackAndWhiteJobCount: (int64_t) val
{
    _completedBlackAndWhiteJobCount = val;
    self.dictionary[@"completedBlackAndWhiteJobCount"] = @(val);
}

- (int64_t) completedColorJobCount
{
    _completedColorJobCount = [self.dictionary[@"completedColorJobCount"] longLongValue];
    return _completedColorJobCount;
}

- (void) setCompletedColorJobCount: (int64_t) val
{
    _completedColorJobCount = val;
    self.dictionary[@"completedColorJobCount"] = @(val);
}

- (int64_t) incompleteJobCount
{
    _incompleteJobCount = [self.dictionary[@"incompleteJobCount"] longLongValue];
    return _incompleteJobCount;
}

- (void) setIncompleteJobCount: (int64_t) val
{
    _incompleteJobCount = val;
    self.dictionary[@"incompleteJobCount"] = @(val);
}

- (MSDate*) usageDate
{
    if(!_usageDate){
        _usageDate = [MSDate ms_dateFromString: self.dictionary[@"usageDate"]];
    }
    return _usageDate;
}

- (void) setUsageDate: (MSDate*) val
{
    _usageDate = val;
    self.dictionary[@"usageDate"] = [val ms_toString];
}


@end
