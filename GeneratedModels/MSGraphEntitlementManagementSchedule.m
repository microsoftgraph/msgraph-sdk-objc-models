// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEntitlementManagementSchedule()
{
    MSGraphExpirationPattern* _expiration;
    MSGraphPatternedRecurrence* _recurrence;
    NSDate* _startDateTime;
}
@end

@implementation MSGraphEntitlementManagementSchedule

- (MSGraphExpirationPattern*) expiration
{
    if(!_expiration){
        _expiration = [[MSGraphExpirationPattern alloc] initWithDictionary: self.dictionary[@"expiration"]];
    }
    return _expiration;
}

- (void) setExpiration: (MSGraphExpirationPattern*) val
{
    _expiration = val;
    self.dictionary[@"expiration"] = val;
}

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

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

@end
