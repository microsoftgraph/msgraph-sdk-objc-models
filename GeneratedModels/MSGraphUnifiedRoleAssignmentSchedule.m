// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleAssignmentSchedule()
{
    NSString* _assignmentType;
    NSString* _memberType;
    MSGraphRequestSchedule* _scheduleInfo;
    MSGraphUnifiedRoleEligibilitySchedule* _activatedUsing;
}
@end

@implementation MSGraphUnifiedRoleAssignmentSchedule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleAssignmentSchedule";
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

- (MSGraphRequestSchedule*) scheduleInfo
{
    if(!_scheduleInfo){
        _scheduleInfo = [[MSGraphRequestSchedule alloc] initWithDictionary: self.dictionary[@"scheduleInfo"]];
    }
    return _scheduleInfo;
}

- (void) setScheduleInfo: (MSGraphRequestSchedule*) val
{
    _scheduleInfo = val;
    self.dictionary[@"scheduleInfo"] = val;
}

- (MSGraphUnifiedRoleEligibilitySchedule*) activatedUsing
{
    if(!_activatedUsing){
        _activatedUsing = [[MSGraphUnifiedRoleEligibilitySchedule alloc] initWithDictionary: self.dictionary[@"activatedUsing"]];
    }
    return _activatedUsing;
}

- (void) setActivatedUsing: (MSGraphUnifiedRoleEligibilitySchedule*) val
{
    _activatedUsing = val;
    self.dictionary[@"activatedUsing"] = val;
}


@end
