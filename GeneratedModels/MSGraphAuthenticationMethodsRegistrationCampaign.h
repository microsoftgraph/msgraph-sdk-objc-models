// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphExcludeTarget, MSGraphAuthenticationMethodsRegistrationCampaignIncludeTarget; 
#import "MSGraphAdvancedConfigState.h"


#import "MSObject.h"

@interface MSGraphAuthenticationMethodsRegistrationCampaign : MSObject

@property (nonnull, nonatomic, setter=setExcludeTargets:, getter=excludeTargets) NSArray* excludeTargets;
@property (nonnull, nonatomic, setter=setIncludeTargets:, getter=includeTargets) NSArray* includeTargets;
@property (nonatomic, setter=setSnoozeDurationInDays:, getter=snoozeDurationInDays) int32_t snoozeDurationInDays;
@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphAdvancedConfigState* state;

@end
