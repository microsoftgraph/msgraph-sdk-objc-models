// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAuthenticationMethodState.h"


#import "MSGraphEntity.h"

@interface MSGraphAuthenticationMethodConfiguration : MSGraphEntity

  @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphAuthenticationMethodState* state;
  
@end
