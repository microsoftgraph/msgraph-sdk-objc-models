// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphEdiscoverySourceType.h"


#import "MSGraphEdiscoveryDataSource.h"

@interface MSGraphEdiscoveryUserSource : MSGraphEdiscoveryDataSource

  @property (nonnull, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nullable, nonatomic, setter=setIncludedSources:, getter=includedSources) MSGraphEdiscoverySourceType* includedSources;
  
@end
