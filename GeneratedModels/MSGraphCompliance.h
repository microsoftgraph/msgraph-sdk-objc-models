// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoveryEdiscoveryroot; 


#import "MSObject.h"

@interface MSGraphCompliance : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setEdiscovery:, getter=ediscovery) MSGraphEdiscoveryEdiscoveryroot* ediscovery;
  
@end
