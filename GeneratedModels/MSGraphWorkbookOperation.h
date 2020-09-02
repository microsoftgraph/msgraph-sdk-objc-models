// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookOperationError; 
#import "MSGraphWorkbookOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphWorkbookOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setError:, getter=error) MSGraphWorkbookOperationError* error;
    @property (nullable, nonatomic, setter=setResourceLocation:, getter=resourceLocation) NSString* resourceLocation;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphWorkbookOperationStatus* status;
  
@end
