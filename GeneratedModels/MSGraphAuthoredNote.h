// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentity, MSGraphItemBody; 


#import "MSGraphEntity.h"

@interface MSGraphAuthoredNote : MSGraphEntity

  @property (nullable, nonatomic, setter=setAuthor:, getter=author) MSGraphIdentity* author;
    @property (nullable, nonatomic, setter=setContent:, getter=content) MSGraphItemBody* content;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
  
@end
