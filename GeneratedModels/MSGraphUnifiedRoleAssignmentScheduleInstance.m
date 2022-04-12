// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleAssignmentScheduleInstance()
{
    NSString* _assignmentType;
    NSDate* _endDateTime;
    NSString* _memberType;
    NSString* _roleAssignmentOriginId;
    NSString* _roleAssignmentScheduleId;
    NSDate* _startDateTime;
    MSGraphUnifiedRoleEligibilityScheduleInstance* _activatedUsing;
}
@end

@implementation MSGraphUnifiedRoleAssignmentScheduleInstance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleAssignmentScheduleInstance";
    }
    return self;
}
- (NSString*) assignmentType
{
    if([[NSNull null] isEqual:self.dictionary[@"assignmentType"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignmentType"];
}

- (void) setAssignmentType: (NSString*) val
{
    self.dictionary[@"assignmentType"] = val;
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

- (NSString*) roleAssignmentOriginId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleAssignmentOriginId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleAssignmentOriginId"];
}

- (void) setRoleAssignmentOriginId: (NSString*) val
{
    self.dictionary[@"roleAssignmentOriginId"] = val;
}

- (NSString*) roleAssignmentScheduleId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleAssignmentScheduleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleAssignmentScheduleId"];
}

- (void) setRoleAssignmentScheduleId: (NSString*) val
{
    self.dictionary[@"roleAssignmentScheduleId"] = val;
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

- (MSGraphUnifiedRoleEligibilityScheduleInstance*) activatedUsing
{
    if(!_activatedUsing){
        _activatedUsing = [[MSGraphUnifiedRoleEligibilityScheduleInstance alloc] initWithDictionary: self.dictionary[@"activatedUsing"]];
    }
    return _activatedUsing;
}

- (void) setActivatedUsing: (MSGraphUnifiedRoleEligibilityScheduleInstance*) val
{
    _activatedUsing = val;
    self.dictionary[@"activatedUsing"] = val;
}


@end
