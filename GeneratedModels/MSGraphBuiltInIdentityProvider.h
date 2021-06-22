// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphIdentityProviderBase.h"

@interface MSGraphBuiltInIdentityProvider : MSGraphIdentityProviderBase

  @property (nullable, nonatomic, setter=setIdentityProviderType:, getter=identityProviderType) NSString* identityProviderType;
  
@end
