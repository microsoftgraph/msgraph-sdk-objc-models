// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphUserFlowType.h"


#import "MSGraphEntity.h"

@interface MSGraphIdentityUserFlow : MSGraphEntity

  @property (nonnull, nonatomic, setter=setUserFlowType:, getter=userFlowType) MSGraphUserFlowType* userFlowType;
    @property (nonatomic, setter=setUserFlowTypeVersion:, getter=userFlowTypeVersion) double userFlowTypeVersion;
  
@end
