// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignmentRequestRequirements()
{
    BOOL _allowCustomAssignmentSchedule;
    BOOL _isApprovalRequiredForAdd;
    BOOL _isApprovalRequiredForUpdate;
    NSString* _policyDescription;
    NSString* _policyDisplayName;
    NSString* _policyId;
    MSGraphEntitlementManagementSchedule* _schedule;
}
@end

@implementation MSGraphAccessPackageAssignmentRequestRequirements

- (BOOL) allowCustomAssignmentSchedule
{
    _allowCustomAssignmentSchedule = [self.dictionary[@"allowCustomAssignmentSchedule"] boolValue];
    return _allowCustomAssignmentSchedule;
}

- (void) setAllowCustomAssignmentSchedule: (BOOL) val
{
    _allowCustomAssignmentSchedule = val;
    self.dictionary[@"allowCustomAssignmentSchedule"] = @(val);
}

- (BOOL) isApprovalRequiredForAdd
{
    _isApprovalRequiredForAdd = [self.dictionary[@"isApprovalRequiredForAdd"] boolValue];
    return _isApprovalRequiredForAdd;
}

- (void) setIsApprovalRequiredForAdd: (BOOL) val
{
    _isApprovalRequiredForAdd = val;
    self.dictionary[@"isApprovalRequiredForAdd"] = @(val);
}

- (BOOL) isApprovalRequiredForUpdate
{
    _isApprovalRequiredForUpdate = [self.dictionary[@"isApprovalRequiredForUpdate"] boolValue];
    return _isApprovalRequiredForUpdate;
}

- (void) setIsApprovalRequiredForUpdate: (BOOL) val
{
    _isApprovalRequiredForUpdate = val;
    self.dictionary[@"isApprovalRequiredForUpdate"] = @(val);
}

- (NSString*) policyDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"policyDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"policyDescription"];
}

- (void) setPolicyDescription: (NSString*) val
{
    self.dictionary[@"policyDescription"] = val;
}

- (NSString*) policyDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"policyDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"policyDisplayName"];
}

- (void) setPolicyDisplayName: (NSString*) val
{
    self.dictionary[@"policyDisplayName"] = val;
}

- (NSString*) policyId
{
    if([[NSNull null] isEqual:self.dictionary[@"policyId"]])
    {
        return nil;
    }   
    return self.dictionary[@"policyId"];
}

- (void) setPolicyId: (NSString*) val
{
    self.dictionary[@"policyId"] = val;
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

@end
