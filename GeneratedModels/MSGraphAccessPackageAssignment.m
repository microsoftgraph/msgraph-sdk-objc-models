// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignment()
{
    NSDate* _expiredDateTime;
    MSGraphEntitlementManagementSchedule* _schedule;
    MSGraphAccessPackageAssignmentState* _state;
    NSString* _status;
    MSGraphAccessPackage* _accessPackage;
    MSGraphAccessPackageAssignmentPolicy* _assignmentPolicy;
    MSGraphAccessPackageSubject* _target;
}
@end

@implementation MSGraphAccessPackageAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessPackageAssignment";
    }
    return self;
}
- (NSDate*) expiredDateTime
{
    if(!_expiredDateTime){
        _expiredDateTime = [NSDate ms_dateFromString: self.dictionary[@"expiredDateTime"]];
    }
    return _expiredDateTime;
}

- (void) setExpiredDateTime: (NSDate*) val
{
    _expiredDateTime = val;
    self.dictionary[@"expiredDateTime"] = [val ms_toString];
}

- (MSGraphEntitlementManagementSchedule*) schedule
{
    if(!_schedule){
        _schedule = [[MSGraphEntitlementManagementSchedule alloc] initWithDictionary: self.dictionary[@"schedule"]];
    }
    return _schedule;
}

- (void) setSchedule: (MSGraphEntitlementManagementSchedule*) val
{
    _schedule = val;
    self.dictionary[@"schedule"] = val;
}

- (MSGraphAccessPackageAssignmentState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphAccessPackageAssignmentState];
    }
    return _state;
}

- (void) setState: (MSGraphAccessPackageAssignmentState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (NSString*) status
{
    if([[NSNull null] isEqual:self.dictionary[@"status"]])
    {
        return nil;
    }   
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}

- (MSGraphAccessPackage*) accessPackage
{
    if(!_accessPackage){
        _accessPackage = [[MSGraphAccessPackage alloc] initWithDictionary: self.dictionary[@"accessPackage"]];
    }
    return _accessPackage;
}

- (void) setAccessPackage: (MSGraphAccessPackage*) val
{
    _accessPackage = val;
    self.dictionary[@"accessPackage"] = val;
}

- (MSGraphAccessPackageAssignmentPolicy*) assignmentPolicy
{
    if(!_assignmentPolicy){
        _assignmentPolicy = [[MSGraphAccessPackageAssignmentPolicy alloc] initWithDictionary: self.dictionary[@"assignmentPolicy"]];
    }
    return _assignmentPolicy;
}

- (void) setAssignmentPolicy: (MSGraphAccessPackageAssignmentPolicy*) val
{
    _assignmentPolicy = val;
    self.dictionary[@"assignmentPolicy"] = val;
}

- (MSGraphAccessPackageSubject*) target
{
    if(!_target){
        _target = [[MSGraphAccessPackageSubject alloc] initWithDictionary: self.dictionary[@"target"]];
    }
    return _target;
}

- (void) setTarget: (MSGraphAccessPackageSubject*) val
{
    _target = val;
    self.dictionary[@"target"] = val;
}


@end
