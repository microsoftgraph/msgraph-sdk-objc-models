// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAuthenticationMethodTargetType.h"


#import "MSGraphEntity.h"

@interface MSGraphAuthenticationMethodTarget : MSGraphEntity

  @property (nonatomic, setter=setIsRegistrationRequired:, getter=isRegistrationRequired) BOOL isRegistrationRequired;
    @property (nonnull, nonatomic, setter=setTargetType:, getter=targetType) MSGraphAuthenticationMethodTargetType* targetType;
  
@end
