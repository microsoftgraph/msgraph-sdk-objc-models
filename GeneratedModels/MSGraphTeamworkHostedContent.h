// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphTeamworkHostedContent : MSGraphEntity

  @property (nullable, nonatomic, setter=setContentBytes:, getter=contentBytes) NSString* contentBytes;
    @property (nullable, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
  
@end
