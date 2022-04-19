// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleEligibilityScheduleRequest()
{
    MSGraphUnifiedRoleScheduleRequestActions* _action;
    NSString* _appScopeId;
    NSString* _directoryScopeId;
    BOOL _isValidationOnly;
    NSString* _justification;
    NSString* _principalId;
    NSString* _roleDefinitionId;
    MSGraphRequestSchedule* _scheduleInfo;
    NSString* _targetScheduleId;
    MSGraphTicketInfo* _ticketInfo;
    MSGraphAppScope* _appScope;
    MSGraphDirectoryObject* _directoryScope;
    MSGraphDirectoryObject* _principal;
    MSGraphUnifiedRoleDefinition* _roleDefinition;
    MSGraphUnifiedRoleEligibilitySchedule* _targetSchedule;
}
@end

@implementation MSGraphUnifiedRoleEligibilityScheduleRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleEligibilityScheduleRequest";
    }
    return self;
}
- (MSGraphUnifiedRoleScheduleRequestActions*) action
{
    if(!_action){
        _action = [self.dictionary[@"action"] toMSGraphUnifiedRoleScheduleRequestActions];
    }
    return _action;
}

- (void) setAction: (MSGraphUnifiedRoleScheduleRequestActions*) val
{
    _action = val;
    self.dictionary[@"action"] = val;
}

- (NSString*) appScopeId
{
    if([[NSNull null] isEqual:self.dictionary[@"appScopeId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appScopeId"];
}

- (void) setAppScopeId: (NSString*) val
{
    self.dictionary[@"appScopeId"] = val;
}

- (NSString*) directoryScopeId
{
    if([[NSNull null] isEqual:self.dictionary[@"directoryScopeId"]])
    {
        return nil;
    }   
    return self.dictionary[@"directoryScopeId"];
}

- (void) setDirectoryScopeId: (NSString*) val
{
    self.dictionary[@"directoryScopeId"] = val;
}

- (BOOL) isValidationOnly
{
    _isValidationOnly = [self.dictionary[@"isValidationOnly"] boolValue];
    return _isValidationOnly;
}

- (void) setIsValidationOnly: (BOOL) val
{
    _isValidationOnly = val;
    self.dictionary[@"isValidationOnly"] = @(val);
}

- (NSString*) justification
{
    if([[NSNull null] isEqual:self.dictionary[@"justification"]])
    {
        return nil;
    }   
    return self.dictionary[@"justification"];
}

- (void) setJustification: (NSString*) val
{
    self.dictionary[@"justification"] = val;
}

- (NSString*) principalId
{
    if([[NSNull null] isEqual:self.dictionary[@"principalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalId"];
}

- (void) setPrincipalId: (NSString*) val
{
    self.dictionary[@"principalId"] = val;
}

- (NSString*) roleDefinitionId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleDefinitionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleDefinitionId"];
}

- (void) setRoleDefinitionId: (NSString*) val
{
    self.dictionary[@"roleDefinitionId"] = val;
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

- (NSString*) targetScheduleId
{
    if([[NSNull null] isEqual:self.dictionary[@"targetScheduleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetScheduleId"];
}

- (void) setTargetScheduleId: (NSString*) val
{
    self.dictionary[@"targetScheduleId"] = val;
}

- (MSGraphTicketInfo*) ticketInfo
{
    if(!_ticketInfo){
        _ticketInfo = [[MSGraphTicketInfo alloc] initWithDictionary: self.dictionary[@"ticketInfo"]];
    }
    return _ticketInfo;
}

- (void) setTicketInfo: (MSGraphTicketInfo*) val
{
    _ticketInfo = val;
    self.dictionary[@"ticketInfo"] = val;
}

- (MSGraphAppScope*) appScope
{
    if(!_appScope){
        _appScope = [[MSGraphAppScope alloc] initWithDictionary: self.dictionary[@"appScope"]];
    }
    return _appScope;
}

- (void) setAppScope: (MSGraphAppScope*) val
{
    _appScope = val;
    self.dictionary[@"appScope"] = val;
}

- (MSGraphDirectoryObject*) directoryScope
{
    if(!_directoryScope){
        _directoryScope = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"directoryScope"]];
    }
    return _directoryScope;
}

- (void) setDirectoryScope: (MSGraphDirectoryObject*) val
{
    _directoryScope = val;
    self.dictionary[@"directoryScope"] = val;
}

- (MSGraphDirectoryObject*) principal
{
    if(!_principal){
        _principal = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"principal"]];
    }
    return _principal;
}

- (void) setPrincipal: (MSGraphDirectoryObject*) val
{
    _principal = val;
    self.dictionary[@"principal"] = val;
}

- (MSGraphUnifiedRoleDefinition*) roleDefinition
{
    if(!_roleDefinition){
        _roleDefinition = [[MSGraphUnifiedRoleDefinition alloc] initWithDictionary: self.dictionary[@"roleDefinition"]];
    }
    return _roleDefinition;
}

- (void) setRoleDefinition: (MSGraphUnifiedRoleDefinition*) val
{
    _roleDefinition = val;
    self.dictionary[@"roleDefinition"] = val;
}

- (MSGraphUnifiedRoleEligibilitySchedule*) targetSchedule
{
    if(!_targetSchedule){
        _targetSchedule = [[MSGraphUnifiedRoleEligibilitySchedule alloc] initWithDictionary: self.dictionary[@"targetSchedule"]];
    }
    return _targetSchedule;
}

- (void) setTargetSchedule: (MSGraphUnifiedRoleEligibilitySchedule*) val
{
    _targetSchedule = val;
    self.dictionary[@"targetSchedule"] = val;
}


@end
