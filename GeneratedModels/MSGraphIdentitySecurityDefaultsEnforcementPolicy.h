// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphPolicyBase.h"

@interface MSGraphIdentitySecurityDefaultsEnforcementPolicy : MSGraphPolicyBase

  @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
  
@end
