// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphFido2KeyRestrictions, MSGraphAuthenticationMethodTarget; 


#import "MSGraphAuthenticationMethodConfiguration.h"

@interface MSGraphFido2AuthenticationMethodConfiguration : MSGraphAuthenticationMethodConfiguration

  @property (nonatomic, setter=setIsAttestationEnforced:, getter=isAttestationEnforced) BOOL isAttestationEnforced;
    @property (nonatomic, setter=setIsSelfServiceRegistrationAllowed:, getter=isSelfServiceRegistrationAllowed) BOOL isSelfServiceRegistrationAllowed;
    @property (nullable, nonatomic, setter=setKeyRestrictions:, getter=keyRestrictions) MSGraphFido2KeyRestrictions* keyRestrictions;
    @property (nullable, nonatomic, setter=setIncludeTargets:, getter=includeTargets) NSArray* includeTargets;
  
@end
