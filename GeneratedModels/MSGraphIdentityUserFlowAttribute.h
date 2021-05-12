// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphIdentityUserFlowAttributeDataType.h"
#import "MSGraphIdentityUserFlowAttributeType.h"


#import "MSGraphEntity.h"

@interface MSGraphIdentityUserFlowAttribute : MSGraphEntity

  @property (nonnull, nonatomic, setter=setDataType:, getter=dataType) MSGraphIdentityUserFlowAttributeDataType* dataType;
    @property (nullable, nonatomic, setter=setIdentityUserFlowAttributeDescription:, getter=identityUserFlowAttributeDescription) NSString* identityUserFlowAttributeDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setUserFlowAttributeType:, getter=userFlowAttributeType) MSGraphIdentityUserFlowAttributeType* userFlowAttributeType;
  
@end
