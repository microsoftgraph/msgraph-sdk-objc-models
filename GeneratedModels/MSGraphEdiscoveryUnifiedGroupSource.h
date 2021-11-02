// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphGroup; 
#import "MSGraphEdiscoverySourceType.h"


#import "MSGraphEdiscoveryDataSource.h"

@interface MSGraphEdiscoveryUnifiedGroupSource : MSGraphEdiscoveryDataSource

  @property (nullable, nonatomic, setter=setIncludedSources:, getter=includedSources) MSGraphEdiscoverySourceType* includedSources;
    @property (nonnull, nonatomic, setter=setGroup:, getter=group) MSGraphGroup* group;
  
@end
