// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSelfServiceSignUpAuthenticationFlowConfiguration; 


#import "MSGraphEntity.h"

@interface MSGraphAuthenticationFlowsPolicy : MSGraphEntity

  @property (nullable, nonatomic, setter=setAuthenticationFlowsPolicyDescription:, getter=authenticationFlowsPolicyDescription) NSString* authenticationFlowsPolicyDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setSelfServiceSignUp:, getter=selfServiceSignUp) MSGraphSelfServiceSignUpAuthenticationFlowConfiguration* selfServiceSignUp;
  
@end
