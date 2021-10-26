// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoveryDataSource; 


#import "MSGraphEdiscoveryDataSourceContainer.h"

@interface MSGraphEdiscoveryNoncustodialDataSource : MSGraphEdiscoveryDataSourceContainer

  @property (nonatomic, setter=setApplyHoldToSource:, getter=applyHoldToSource) BOOL applyHoldToSource;
    @property (nullable, nonatomic, setter=setDataSource:, getter=dataSource) MSGraphEdiscoveryDataSource* dataSource;
  
@end
