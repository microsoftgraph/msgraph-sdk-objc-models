// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAuthenticationMethodTarget; 
#import "MSGraphExternalEmailOtpState.h"


#import "MSGraphAuthenticationMethodConfiguration.h"

@interface MSGraphEmailAuthenticationMethodConfiguration : MSGraphAuthenticationMethodConfiguration

  @property (nullable, nonatomic, setter=setAllowExternalIdToUseEmailOtp:, getter=allowExternalIdToUseEmailOtp) MSGraphExternalEmailOtpState* allowExternalIdToUseEmailOtp;
    @property (nullable, nonatomic, setter=setIncludeTargets:, getter=includeTargets) NSArray* includeTargets;
  
@end
