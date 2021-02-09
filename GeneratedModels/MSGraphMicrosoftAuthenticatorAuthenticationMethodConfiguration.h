// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMicrosoftAuthenticatorAuthenticationMethodTarget; 


#import "MSGraphAuthenticationMethodConfiguration.h"

@interface MSGraphMicrosoftAuthenticatorAuthenticationMethodConfiguration : MSGraphAuthenticationMethodConfiguration

  @property (nullable, nonatomic, setter=setIncludeTargets:, getter=includeTargets) NSArray* includeTargets;
  
@end
