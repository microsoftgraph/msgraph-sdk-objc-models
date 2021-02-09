// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAuthenticationMethodConfiguration; 


#import "MSGraphEntity.h"

@interface MSGraphAuthenticationMethodsPolicy : MSGraphEntity

  @property (nullable, nonatomic, setter=setAuthenticationMethodsPolicyDescription:, getter=authenticationMethodsPolicyDescription) NSString* authenticationMethodsPolicyDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setPolicyVersion:, getter=policyVersion) NSString* policyVersion;
    @property (nonatomic, setter=setReconfirmationInDays:, getter=reconfirmationInDays) int32_t reconfirmationInDays;
    @property (nullable, nonatomic, setter=setAuthenticationMethodConfigurations:, getter=authenticationMethodConfigurations) NSArray* authenticationMethodConfigurations;
  
@end
