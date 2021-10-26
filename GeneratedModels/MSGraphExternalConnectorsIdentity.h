// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphExternalConnectorsIdentityType.h"


#import "MSGraphEntity.h"

@interface MSGraphExternalConnectorsIdentity : MSGraphEntity

  @property (nullable, nonatomic, setter=setType:, getter=type) MSGraphExternalConnectorsIdentityType* type;
  
@end
