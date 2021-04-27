// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphApiAuthenticationConfigurationBase; 


#import "MSGraphEntity.h"

@interface MSGraphIdentityApiConnector : MSGraphEntity

  @property (nullable, nonatomic, setter=setAuthenticationConfiguration:, getter=authenticationConfiguration) MSGraphApiAuthenticationConfigurationBase* authenticationConfiguration;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setTargetUrl:, getter=targetUrl) NSString* targetUrl;
  
@end
