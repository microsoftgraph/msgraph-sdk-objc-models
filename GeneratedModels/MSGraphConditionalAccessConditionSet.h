// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphConditionalAccessApplications, MSGraphConditionalAccessDevices, MSGraphConditionalAccessLocations, MSGraphConditionalAccessPlatforms, MSGraphConditionalAccessUsers; 
#import "MSGraphConditionalAccessClientApp.h"
#import "MSGraphRiskLevel.h"


#import "MSObject.h"

@interface MSGraphConditionalAccessConditionSet : MSObject

@property (nullable, nonatomic, setter=setApplications:, getter=applications) MSGraphConditionalAccessApplications* applications;
@property (nonnull, nonatomic, setter=setClientAppTypes:, getter=clientAppTypes) NSArray* clientAppTypes;
@property (nullable, nonatomic, setter=setDevices:, getter=devices) MSGraphConditionalAccessDevices* devices;
@property (nullable, nonatomic, setter=setLocations:, getter=locations) MSGraphConditionalAccessLocations* locations;
@property (nullable, nonatomic, setter=setPlatforms:, getter=platforms) MSGraphConditionalAccessPlatforms* platforms;
@property (nonnull, nonatomic, setter=setSignInRiskLevels:, getter=signInRiskLevels) NSArray* signInRiskLevels;
@property (nonnull, nonatomic, setter=setUserRiskLevels:, getter=userRiskLevels) NSArray* userRiskLevels;
@property (nonnull, nonatomic, setter=setUsers:, getter=users) MSGraphConditionalAccessUsers* users;

@end
