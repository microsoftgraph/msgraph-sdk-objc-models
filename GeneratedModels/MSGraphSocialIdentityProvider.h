// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphIdentityProviderBase.h"

@interface MSGraphSocialIdentityProvider : MSGraphIdentityProviderBase

  @property (nullable, nonatomic, setter=setClientId:, getter=clientId) NSString* clientId;
    @property (nullable, nonatomic, setter=setClientSecret:, getter=clientSecret) NSString* clientSecret;
    @property (nullable, nonatomic, setter=setIdentityProviderType:, getter=identityProviderType) NSString* identityProviderType;
  
@end
