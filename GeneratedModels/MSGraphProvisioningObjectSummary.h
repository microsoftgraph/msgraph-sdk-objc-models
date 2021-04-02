// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphInitiator, MSGraphModifiedProperty, MSGraphProvisioningStatusInfo, MSGraphProvisioningStep, MSGraphProvisioningServicePrincipal, MSGraphProvisionedIdentity, MSGraphProvisioningSystem; 
#import "MSGraphProvisioningAction.h"


#import "MSGraphEntity.h"

@interface MSGraphProvisioningObjectSummary : MSGraphEntity

  @property (nonnull, nonatomic, setter=setActivityDateTime:, getter=activityDateTime) NSDate* activityDateTime;
    @property (nullable, nonatomic, setter=setChangeId:, getter=changeId) NSString* changeId;
    @property (nullable, nonatomic, setter=setCycleId:, getter=cycleId) NSString* cycleId;
    @property (nonatomic, setter=setDurationInMilliseconds:, getter=durationInMilliseconds) int32_t durationInMilliseconds;
    @property (nullable, nonatomic, setter=setInitiatedBy:, getter=initiatedBy) MSGraphInitiator* initiatedBy;
    @property (nullable, nonatomic, setter=setJobId:, getter=jobId) NSString* jobId;
    @property (nullable, nonatomic, setter=setModifiedProperties:, getter=modifiedProperties) NSArray* modifiedProperties;
    @property (nullable, nonatomic, setter=setProvisioningAction:, getter=provisioningAction) MSGraphProvisioningAction* provisioningAction;
    @property (nullable, nonatomic, setter=setProvisioningStatusInfo:, getter=provisioningStatusInfo) MSGraphProvisioningStatusInfo* provisioningStatusInfo;
    @property (nullable, nonatomic, setter=setProvisioningSteps:, getter=provisioningSteps) NSArray* provisioningSteps;
    @property (nullable, nonatomic, setter=setServicePrincipal:, getter=servicePrincipal) MSGraphProvisioningServicePrincipal* servicePrincipal;
    @property (nullable, nonatomic, setter=setSourceIdentity:, getter=sourceIdentity) MSGraphProvisionedIdentity* sourceIdentity;
    @property (nullable, nonatomic, setter=setSourceSystem:, getter=sourceSystem) MSGraphProvisioningSystem* sourceSystem;
    @property (nullable, nonatomic, setter=setTargetIdentity:, getter=targetIdentity) MSGraphProvisionedIdentity* targetIdentity;
    @property (nullable, nonatomic, setter=setTargetSystem:, getter=targetSystem) MSGraphProvisioningSystem* targetSystem;
    @property (nullable, nonatomic, setter=setTenantId:, getter=tenantId) NSString* tenantId;
  
@end
