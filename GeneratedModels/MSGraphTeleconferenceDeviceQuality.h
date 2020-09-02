// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphTeleconferenceDeviceMediaQuality; 


#import "MSObject.h"

@interface MSGraphTeleconferenceDeviceQuality : MSObject

@property (nonnull, nonatomic, setter=setCallChainId:, getter=callChainId) NSString* callChainId;
@property (nullable, nonatomic, setter=setCloudServiceDeploymentEnvironment:, getter=cloudServiceDeploymentEnvironment) NSString* cloudServiceDeploymentEnvironment;
@property (nullable, nonatomic, setter=setCloudServiceDeploymentId:, getter=cloudServiceDeploymentId) NSString* cloudServiceDeploymentId;
@property (nullable, nonatomic, setter=setCloudServiceInstanceName:, getter=cloudServiceInstanceName) NSString* cloudServiceInstanceName;
@property (nullable, nonatomic, setter=setCloudServiceName:, getter=cloudServiceName) NSString* cloudServiceName;
@property (nonnull, nonatomic, setter=setDeviceDescription:, getter=deviceDescription) NSString* deviceDescription;
@property (nonnull, nonatomic, setter=setDeviceName:, getter=deviceName) NSString* deviceName;
@property (nonnull, nonatomic, setter=setMediaLegId:, getter=mediaLegId) NSString* mediaLegId;
@property (nonnull, nonatomic, setter=setMediaQualityList:, getter=mediaQualityList) NSArray* mediaQualityList;
@property (nonnull, nonatomic, setter=setParticipantId:, getter=participantId) NSString* participantId;

@end
