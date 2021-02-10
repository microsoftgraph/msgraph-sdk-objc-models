// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphFido2AuthenticationMethod, MSGraphAuthenticationMethod, MSGraphMicrosoftAuthenticatorAuthenticationMethod, MSGraphWindowsHelloForBusinessAuthenticationMethod; 


#import "MSGraphEntity.h"

@interface MSGraphAuthentication : MSGraphEntity

  @property (nullable, nonatomic, setter=setFido2Methods:, getter=fido2Methods) NSArray* fido2Methods;
    @property (nullable, nonatomic, setter=setMethods:, getter=methods) NSArray* methods;
    @property (nullable, nonatomic, setter=setMicrosoftAuthenticatorMethods:, getter=microsoftAuthenticatorMethods) NSArray* microsoftAuthenticatorMethods;
    @property (nullable, nonatomic, setter=setWindowsHelloForBusinessMethods:, getter=windowsHelloForBusinessMethods) NSArray* windowsHelloForBusinessMethods;
  
@end
