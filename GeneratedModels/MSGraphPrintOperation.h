// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintOperationStatus; 


#import "MSGraphEntity.h"

@interface MSGraphPrintOperation : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphPrintOperationStatus* status;
  
@end
