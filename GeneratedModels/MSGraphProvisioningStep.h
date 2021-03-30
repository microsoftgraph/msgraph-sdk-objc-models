// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDetailsInfo; 
#import "MSGraphProvisioningStepType.h"
#import "MSGraphProvisioningResult.h"


#import "MSObject.h"

@interface MSGraphProvisioningStep : MSObject

@property (nullable, nonatomic, setter=setProvisioningStepDescription:, getter=provisioningStepDescription) NSString* provisioningStepDescription;
@property (nullable, nonatomic, setter=setDetails:, getter=details) MSGraphDetailsInfo* details;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setProvisioningStepType:, getter=provisioningStepType) MSGraphProvisioningStepType* provisioningStepType;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphProvisioningResult* status;

@end
