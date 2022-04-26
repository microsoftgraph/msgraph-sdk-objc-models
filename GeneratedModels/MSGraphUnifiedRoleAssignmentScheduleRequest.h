// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRequestSchedule, MSGraphTicketInfo, MSGraphUnifiedRoleEligibilitySchedule, MSGraphAppScope, MSGraphDirectoryObject, MSGraphUnifiedRoleDefinition, MSGraphUnifiedRoleAssignmentSchedule; 
#import "MSGraphUnifiedRoleScheduleRequestActions.h"


#import "MSGraphRequest.h"

@interface MSGraphUnifiedRoleAssignmentScheduleRequest : MSGraphRequest

  @property (nullable, nonatomic, setter=setAction:, getter=action) MSGraphUnifiedRoleScheduleRequestActions* action;
    @property (nullable, nonatomic, setter=setAppScopeId:, getter=appScopeId) NSString* appScopeId;
    @property (nullable, nonatomic, setter=setDirectoryScopeId:, getter=directoryScopeId) NSString* directoryScopeId;
    @property (nonatomic, setter=setIsValidationOnly:, getter=isValidationOnly) BOOL isValidationOnly;
    @property (nullable, nonatomic, setter=setJustification:, getter=justification) NSString* justification;
    @property (nullable, nonatomic, setter=setPrincipalId:, getter=principalId) NSString* principalId;
    @property (nullable, nonatomic, setter=setRoleDefinitionId:, getter=roleDefinitionId) NSString* roleDefinitionId;
    @property (nullable, nonatomic, setter=setScheduleInfo:, getter=scheduleInfo) MSGraphRequestSchedule* scheduleInfo;
    @property (nullable, nonatomic, setter=setTargetScheduleId:, getter=targetScheduleId) NSString* targetScheduleId;
    @property (nullable, nonatomic, setter=setTicketInfo:, getter=ticketInfo) MSGraphTicketInfo* ticketInfo;
    @property (nullable, nonatomic, setter=setActivatedUsing:, getter=activatedUsing) MSGraphUnifiedRoleEligibilitySchedule* activatedUsing;
    @property (nullable, nonatomic, setter=setAppScope:, getter=appScope) MSGraphAppScope* appScope;
    @property (nullable, nonatomic, setter=setDirectoryScope:, getter=directoryScope) MSGraphDirectoryObject* directoryScope;
    @property (nullable, nonatomic, setter=setPrincipal:, getter=principal) MSGraphDirectoryObject* principal;
    @property (nullable, nonatomic, setter=setRoleDefinition:, getter=roleDefinition) MSGraphUnifiedRoleDefinition* roleDefinition;
    @property (nullable, nonatomic, setter=setTargetSchedule:, getter=targetSchedule) MSGraphUnifiedRoleAssignmentSchedule* targetSchedule;
  
@end
