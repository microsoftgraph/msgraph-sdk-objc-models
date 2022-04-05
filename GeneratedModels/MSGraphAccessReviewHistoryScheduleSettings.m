// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewHistoryScheduleSettings()
{
    MSGraphPatternedRecurrence* _recurrence;
    NSString* _reportRange;
}
@end

@implementation MSGraphAccessReviewHistoryScheduleSettings

- (MSGraphPatternedRecurrence*) recurrence
{
    if(!_recurrence){
        _recurrence = [[MSGraphPatternedRecurrence alloc] initWithDictionary: self.dictionary[@"recurrence"]];
    }
    return _recurrence;
}

- (void) setRecurrence: (MSGraphPatternedRecurrence*) val
{
    _recurrence = val;
    self.dictionary[@"recurrence"] = val;
}

- (NSString*) reportRange
{
    return self.dictionary[@"reportRange"];
}

- (void) setReportRange: (NSString*) val
{
    self.dictionary[@"reportRange"] = val;
}

@end
