// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphRemoteAssistanceOnboardingStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphRemoteAssistancePartner : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setLastConnectionDateTime:, getter=lastConnectionDateTime) NSDate* lastConnectionDateTime;
    @property (nonnull, nonatomic, setter=setOnboardingStatus:, getter=onboardingStatus) MSGraphRemoteAssistanceOnboardingStatus* onboardingStatus;
    @property (nullable, nonatomic, setter=setOnboardingUrl:, getter=onboardingUrl) NSString* onboardingUrl;
  
@end
