// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisioningObjectSummary()
{
    NSDate* _activityDateTime;
    NSString* _changeId;
    NSString* _cycleId;
    int32_t _durationInMilliseconds;
    MSGraphInitiator* _initiatedBy;
    NSString* _jobId;
    NSArray* _modifiedProperties;
    MSGraphProvisioningAction* _provisioningAction;
    MSGraphProvisioningStatusInfo* _provisioningStatusInfo;
    NSArray* _provisioningSteps;
    MSGraphProvisioningServicePrincipal* _servicePrincipal;
    MSGraphProvisionedIdentity* _sourceIdentity;
    MSGraphProvisioningSystem* _sourceSystem;
    MSGraphProvisionedIdentity* _targetIdentity;
    MSGraphProvisioningSystem* _targetSystem;
    NSString* _tenantId;
}
@end

@implementation MSGraphProvisioningObjectSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.provisioningObjectSummary";
    }
    return self;
}
- (NSDate*) activityDateTime
{
    if(!_activityDateTime){
        _activityDateTime = [NSDate ms_dateFromString: self.dictionary[@"activityDateTime"]];
    }
    return _activityDateTime;
}

- (void) setActivityDateTime: (NSDate*) val
{
    _activityDateTime = val;
    self.dictionary[@"activityDateTime"] = [val ms_toString];
}

- (NSString*) changeId
{
    if([[NSNull null] isEqual:self.dictionary[@"changeId"]])
    {
        return nil;
    }   
    return self.dictionary[@"changeId"];
}

- (void) setChangeId: (NSString*) val
{
    self.dictionary[@"changeId"] = val;
}

- (NSString*) cycleId
{
    if([[NSNull null] isEqual:self.dictionary[@"cycleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"cycleId"];
}

- (void) setCycleId: (NSString*) val
{
    self.dictionary[@"cycleId"] = val;
}

- (int32_t) durationInMilliseconds
{
    _durationInMilliseconds = [self.dictionary[@"durationInMilliseconds"] intValue];
    return _durationInMilliseconds;
}

- (void) setDurationInMilliseconds: (int32_t) val
{
    _durationInMilliseconds = val;
    self.dictionary[@"durationInMilliseconds"] = @(val);
}

- (MSGraphInitiator*) initiatedBy
{
    if(!_initiatedBy){
        _initiatedBy = [[MSGraphInitiator alloc] initWithDictionary: self.dictionary[@"initiatedBy"]];
    }
    return _initiatedBy;
}

- (void) setInitiatedBy: (MSGraphInitiator*) val
{
    _initiatedBy = val;
    self.dictionary[@"initiatedBy"] = val;
}

- (NSString*) jobId
{
    if([[NSNull null] isEqual:self.dictionary[@"jobId"]])
    {
        return nil;
    }   
    return self.dictionary[@"jobId"];
}

- (void) setJobId: (NSString*) val
{
    self.dictionary[@"jobId"] = val;
}

- (NSArray*) modifiedProperties
{
    if(!_modifiedProperties){
        
    NSMutableArray *modifiedPropertiesResult = [NSMutableArray array];
    NSArray *modifiedProperties = self.dictionary[@"modifiedProperties"];

    if ([modifiedProperties isKindOfClass:[NSArray class]]){
        for (id tempModifiedProperty in modifiedProperties){
            [modifiedPropertiesResult addObject:tempModifiedProperty];
        }
    }

    _modifiedProperties = modifiedPropertiesResult;
        
    }
    return _modifiedProperties;
}

- (void) setModifiedProperties: (NSArray*) val
{
    _modifiedProperties = val;
    self.dictionary[@"modifiedProperties"] = val;
}

- (MSGraphProvisioningAction*) provisioningAction
{
    if(!_provisioningAction){
        _provisioningAction = [self.dictionary[@"provisioningAction"] toMSGraphProvisioningAction];
    }
    return _provisioningAction;
}

- (void) setProvisioningAction: (MSGraphProvisioningAction*) val
{
    _provisioningAction = val;
    self.dictionary[@"provisioningAction"] = val;
}

- (MSGraphProvisioningStatusInfo*) provisioningStatusInfo
{
    if(!_provisioningStatusInfo){
        _provisioningStatusInfo = [[MSGraphProvisioningStatusInfo alloc] initWithDictionary: self.dictionary[@"provisioningStatusInfo"]];
    }
    return _provisioningStatusInfo;
}

- (void) setProvisioningStatusInfo: (MSGraphProvisioningStatusInfo*) val
{
    _provisioningStatusInfo = val;
    self.dictionary[@"provisioningStatusInfo"] = val;
}

- (NSArray*) provisioningSteps
{
    if(!_provisioningSteps){
        
    NSMutableArray *provisioningStepsResult = [NSMutableArray array];
    NSArray *provisioningSteps = self.dictionary[@"provisioningSteps"];

    if ([provisioningSteps isKindOfClass:[NSArray class]]){
        for (id tempProvisioningStep in provisioningSteps){
            [provisioningStepsResult addObject:tempProvisioningStep];
        }
    }

    _provisioningSteps = provisioningStepsResult;
        
    }
    return _provisioningSteps;
}

- (void) setProvisioningSteps: (NSArray*) val
{
    _provisioningSteps = val;
    self.dictionary[@"provisioningSteps"] = val;
}

- (MSGraphProvisioningServicePrincipal*) servicePrincipal
{
    if(!_servicePrincipal){
        _servicePrincipal = [[MSGraphProvisioningServicePrincipal alloc] initWithDictionary: self.dictionary[@"servicePrincipal"]];
    }
    return _servicePrincipal;
}

- (void) setServicePrincipal: (MSGraphProvisioningServicePrincipal*) val
{
    _servicePrincipal = val;
    self.dictionary[@"servicePrincipal"] = val;
}

- (MSGraphProvisionedIdentity*) sourceIdentity
{
    if(!_sourceIdentity){
        _sourceIdentity = [[MSGraphProvisionedIdentity alloc] initWithDictionary: self.dictionary[@"sourceIdentity"]];
    }
    return _sourceIdentity;
}

- (void) setSourceIdentity: (MSGraphProvisionedIdentity*) val
{
    _sourceIdentity = val;
    self.dictionary[@"sourceIdentity"] = val;
}

- (MSGraphProvisioningSystem*) sourceSystem
{
    if(!_sourceSystem){
        _sourceSystem = [[MSGraphProvisioningSystem alloc] initWithDictionary: self.dictionary[@"sourceSystem"]];
    }
    return _sourceSystem;
}

- (void) setSourceSystem: (MSGraphProvisioningSystem*) val
{
    _sourceSystem = val;
    self.dictionary[@"sourceSystem"] = val;
}

- (MSGraphProvisionedIdentity*) targetIdentity
{
    if(!_targetIdentity){
        _targetIdentity = [[MSGraphProvisionedIdentity alloc] initWithDictionary: self.dictionary[@"targetIdentity"]];
    }
    return _targetIdentity;
}

- (void) setTargetIdentity: (MSGraphProvisionedIdentity*) val
{
    _targetIdentity = val;
    self.dictionary[@"targetIdentity"] = val;
}

- (MSGraphProvisioningSystem*) targetSystem
{
    if(!_targetSystem){
        _targetSystem = [[MSGraphProvisioningSystem alloc] initWithDictionary: self.dictionary[@"targetSystem"]];
    }
    return _targetSystem;
}

- (void) setTargetSystem: (MSGraphProvisioningSystem*) val
{
    _targetSystem = val;
    self.dictionary[@"targetSystem"] = val;
}

- (NSString*) tenantId
{
    if([[NSNull null] isEqual:self.dictionary[@"tenantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"tenantId"];
}

- (void) setTenantId: (NSString*) val
{
    self.dictionary[@"tenantId"] = val;
}


@end
