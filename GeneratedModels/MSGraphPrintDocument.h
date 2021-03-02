// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphPrintDocument : MSGraphEntity

  @property (nullable, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setSize:, getter=size) int64_t size;
  
@end
