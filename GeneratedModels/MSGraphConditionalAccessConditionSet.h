// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphConditionalAccessApplications, MSGraphConditionalAccessUsers, MSGraphConditionalAccessPlatforms, MSGraphConditionalAccessLocations; 
#import "MSGraphRiskLevel.h"
#import "MSGraphConditionalAccessClientApp.h"


#import "MSObject.h"

@interface MSGraphConditionalAccessConditionSet : MSObject

@property (nullable, nonatomic, setter=setApplications:, getter=applications) MSGraphConditionalAccessApplications* applications;
@property (nonnull, nonatomic, setter=setUsers:, getter=users) MSGraphConditionalAccessUsers* users;
@property (nonnull, nonatomic, setter=setSignInRiskLevels:, getter=signInRiskLevels) NSArray* signInRiskLevels;
@property (nullable, nonatomic, setter=setPlatforms:, getter=platforms) MSGraphConditionalAccessPlatforms* platforms;
@property (nullable, nonatomic, setter=setLocations:, getter=locations) MSGraphConditionalAccessLocations* locations;
@property (nonnull, nonatomic, setter=setClientAppTypes:, getter=clientAppTypes) NSArray* clientAppTypes;

@end
