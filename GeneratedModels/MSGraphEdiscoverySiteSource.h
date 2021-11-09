// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSite; 


#import "MSGraphEdiscoveryDataSource.h"

@interface MSGraphEdiscoverySiteSource : MSGraphEdiscoveryDataSource

  @property (nonnull, nonatomic, setter=setSite:, getter=site) MSGraphSite* site;
  
@end
