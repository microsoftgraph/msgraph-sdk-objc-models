// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDirectoryObject; 
#import "MSGraphStagedFeatureName.h"


#import "MSGraphEntity.h"

@interface MSGraphFeatureRolloutPolicy : MSGraphEntity

  @property (nullable, nonatomic, setter=setFeatureRolloutPolicyDescription:, getter=featureRolloutPolicyDescription) NSString* featureRolloutPolicyDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setFeature:, getter=feature) MSGraphStagedFeatureName* feature;
    @property (nonatomic, setter=setIsAppliedToOrganization:, getter=isAppliedToOrganization) BOOL isAppliedToOrganization;
    @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
    @property (nullable, nonatomic, setter=setAppliesTo:, getter=appliesTo) NSArray* appliesTo;
  
@end
