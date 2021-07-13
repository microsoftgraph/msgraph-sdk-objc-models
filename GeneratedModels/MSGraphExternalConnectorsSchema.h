// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExternalConnectorsProperty; 


#import "MSGraphEntity.h"

@interface MSGraphExternalConnectorsSchema : MSGraphEntity

  @property (nonnull, nonatomic, setter=setBaseType:, getter=baseType) NSString* baseType;
    @property (nullable, nonatomic, setter=setProperties:, getter=properties) NSArray* properties;
  
@end
