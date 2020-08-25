// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphConditionalAccessRoot; 


#import "MSGraphEntity.h"

@interface MSGraphIdentityContainer : MSGraphEntity

  @property (nullable, nonatomic, setter=setConditionalAccess:, getter=conditionalAccess) MSGraphConditionalAccessRoot* conditionalAccess;
  
@end
