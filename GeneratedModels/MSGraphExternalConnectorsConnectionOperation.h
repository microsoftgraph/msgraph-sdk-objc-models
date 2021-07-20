// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPublicError; 
#import "MSGraphExternalConnectorsConnectionOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphExternalConnectorsConnectionOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setError:, getter=error) MSGraphPublicError* error;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphExternalConnectorsConnectionOperationStatus* status;
  
@end
