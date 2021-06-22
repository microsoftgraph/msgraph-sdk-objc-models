// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserFlowApiConnectorConfiguration, MSGraphIdentityProvider, MSGraphUserFlowLanguageConfiguration, MSGraphIdentityUserFlowAttributeAssignment, MSGraphIdentityProviderBase; 


#import "MSGraphIdentityUserFlow.h"

@interface MSGraphB2xIdentityUserFlow : MSGraphIdentityUserFlow

  @property (nullable, nonatomic, setter=setApiConnectorConfiguration:, getter=apiConnectorConfiguration) MSGraphUserFlowApiConnectorConfiguration* apiConnectorConfiguration;
    @property (nullable, nonatomic, setter=setIdentityProviders:, getter=identityProviders) NSArray* identityProviders;
    @property (nullable, nonatomic, setter=setLanguages:, getter=languages) NSArray* languages;
    @property (nullable, nonatomic, setter=setUserAttributeAssignments:, getter=userAttributeAssignments) NSArray* userAttributeAssignments;
    @property (nullable, nonatomic, setter=setUserFlowIdentityProviders:, getter=userFlowIdentityProviders) NSArray* userFlowIdentityProviders;
  
@end
