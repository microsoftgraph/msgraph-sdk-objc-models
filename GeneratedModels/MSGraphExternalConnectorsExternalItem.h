// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExternalConnectorsExternalItemContent, MSGraphExternalConnectorsProperties; 


#import "MSGraphEntity.h"

@interface MSGraphExternalConnectorsExternalItem : MSGraphEntity

  @property (nullable, nonatomic, setter=setContent:, getter=content) MSGraphExternalConnectorsExternalItemContent* content;
    @property (nullable, nonatomic, setter=setProperties:, getter=properties) MSGraphExternalConnectorsProperties* properties;
  
@end
