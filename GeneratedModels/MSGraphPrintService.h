// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintServiceEndpoint; 


#import "MSGraphEntity.h"

@interface MSGraphPrintService : MSGraphEntity

  @property (nullable, nonatomic, setter=setEndpoints:, getter=endpoints) NSArray* endpoints;
  
@end
