// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserAttributeValuesItem, MSGraphIdentityUserFlowAttribute; 
#import "MSGraphIdentityUserFlowAttributeInputType.h"


#import "MSGraphEntity.h"

@interface MSGraphIdentityUserFlowAttributeAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsOptional:, getter=isOptional) BOOL isOptional;
    @property (nonatomic, setter=setRequiresVerification:, getter=requiresVerification) BOOL requiresVerification;
    @property (nullable, nonatomic, setter=setUserAttributeValues:, getter=userAttributeValues) NSArray* userAttributeValues;
    @property (nonnull, nonatomic, setter=setUserInputType:, getter=userInputType) MSGraphIdentityUserFlowAttributeInputType* userInputType;
    @property (nullable, nonatomic, setter=setUserAttribute:, getter=userAttribute) MSGraphIdentityUserFlowAttribute* userAttribute;
  
@end
