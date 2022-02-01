// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignmentRequest()
{
    NSDate* _completedDateTime;
    NSDate* _createdDateTime;
    MSGraphAccessPackageRequestType* _requestType;
    MSGraphEntitlementManagementSchedule* _schedule;
    MSGraphAccessPackageRequestState* _state;
    NSString* _status;
    MSGraphAccessPackage* _accessPackage;
    MSGraphAccessPackageAssignment* _assignment;
    MSGraphAccessPackageSubject* _requestor;
}
@end

@implementation MSGraphAccessPackageAssignmentRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessPackageAssignmentRequest";
    }
    return self;
}
- (NSDate*) completedDateTime
{
    if(!_completedDateTime){
        _completedDateTime = [NSDate ms_dateFromString: self.dictionary[@"completedDateTime"]];
    }
    return _completedDateTime;
}

- (void) setCompletedDateTime: (NSDate*) val
{
    _completedDateTime = val;
    self.dictionary[@"completedDateTime"] = [val ms_toString];
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphAccessPackageRequestType*) requestType
{
    if(!_requestType){
        _requestType = [self.dictionary[@"requestType"] toMSGraphAccessPackageRequestType];
    }
    return _requestType;
}

- (void) setRequestType: (MSGraphAccessPackageRequestType*) val
{
    _requestType = val;
    self.dictionary[@"requestType"] = val;
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

- (MSGraphAccessPackageRequestState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphAccessPackageRequestState];
    }
    return _state;
}

- (void) setState: (MSGraphAccessPackageRequestState*) val
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

- (MSGraphAccessPackageAssignment*) assignment
{
    if(!_assignment){
        _assignment = [[MSGraphAccessPackageAssignment alloc] initWithDictionary: self.dictionary[@"assignment"]];
    }
    return _assignment;
}

- (void) setAssignment: (MSGraphAccessPackageAssignment*) val
{
    _assignment = val;
    self.dictionary[@"assignment"] = val;
}

- (MSGraphAccessPackageSubject*) requestor
{
    if(!_requestor){
        _requestor = [[MSGraphAccessPackageSubject alloc] initWithDictionary: self.dictionary[@"requestor"]];
    }
    return _requestor;
}

- (void) setRequestor: (MSGraphAccessPackageSubject*) val
{
    _requestor = val;
    self.dictionary[@"requestor"] = val;
}


@end
