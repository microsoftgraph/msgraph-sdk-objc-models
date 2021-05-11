// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphConditionalAccessRoot, MSGraphIdentityApiConnector, MSGraphB2xIdentityUserFlow, MSGraphIdentityUserFlowAttribute; 


#import "MSGraphEntity.h"

@interface MSGraphIdentityContainer : MSGraphEntity

  @property (nullable, nonatomic, setter=setConditionalAccess:, getter=conditionalAccess) MSGraphConditionalAccessRoot* conditionalAccess;
    @property (nullable, nonatomic, setter=setApiConnectors:, getter=apiConnectors) NSArray* apiConnectors;
    @property (nullable, nonatomic, setter=setB2xUserFlows:, getter=b2xUserFlows) NSArray* b2xUserFlows;
    @property (nullable, nonatomic, setter=setUserFlowAttributes:, getter=userFlowAttributes) NSArray* userFlowAttributes;
  
@end
