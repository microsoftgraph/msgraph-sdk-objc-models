// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphMicrosoftAuthenticatorAuthenticationMode.h"


#import "MSGraphAuthenticationMethodTarget.h"

@interface MSGraphMicrosoftAuthenticatorAuthenticationMethodTarget : MSGraphAuthenticationMethodTarget

  @property (nonnull, nonatomic, setter=setAuthenticationMode:, getter=authenticationMode) MSGraphMicrosoftAuthenticatorAuthenticationMode* authenticationMode;
  
@end
