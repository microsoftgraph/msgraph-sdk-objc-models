// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleEligibilityScheduleInstance()
{
    NSDate* _endDateTime;
    NSString* _memberType;
    NSString* _roleEligibilityScheduleId;
    NSDate* _startDateTime;
}
@end

@implementation MSGraphUnifiedRoleEligibilityScheduleInstance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleEligibilityScheduleInstance";
    }
    return self;
}
- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (NSString*) memberType
{
    if([[NSNull null] isEqual:self.dictionary[@"memberType"]])
    {
        return nil;
    }   
    return self.dictionary[@"memberType"];
}

- (void) setMemberType: (NSString*) val
{
    self.dictionary[@"memberType"] = val;
}

- (NSString*) roleEligibilityScheduleId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleEligibilityScheduleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleEligibilityScheduleId"];
}

- (void) setRoleEligibilityScheduleId: (NSString*) val
{
    self.dictionary[@"roleEligibilityScheduleId"] = val;
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
