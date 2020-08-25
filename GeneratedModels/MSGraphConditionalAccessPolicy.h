// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphConditionalAccessConditionSet, MSGraphConditionalAccessGrantControls, MSGraphConditionalAccessSessionControls; 
#import "MSGraphConditionalAccessPolicyState.h"


#import "MSGraphEntity.h"

@interface MSGraphConditionalAccessPolicy : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setModifiedDateTime:, getter=modifiedDateTime) NSDate* modifiedDateTime;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setConditionalAccessPolicyDescription:, getter=conditionalAccessPolicyDescription) NSString* conditionalAccessPolicyDescription;
    @property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphConditionalAccessPolicyState* state;
    @property (nonnull, nonatomic, setter=setConditions:, getter=conditions) MSGraphConditionalAccessConditionSet* conditions;
    @property (nullable, nonatomic, setter=setGrantControls:, getter=grantControls) MSGraphConditionalAccessGrantControls* grantControls;
    @property (nullable, nonatomic, setter=setSessionControls:, getter=sessionControls) MSGraphConditionalAccessSessionControls* sessionControls;
  
@end
