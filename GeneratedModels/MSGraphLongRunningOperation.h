// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphLongRunningOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphLongRunningOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setLastActionDateTime:, getter=lastActionDateTime) NSDate* lastActionDateTime;
    @property (nullable, nonatomic, setter=setResourceLocation:, getter=resourceLocation) NSString* resourceLocation;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphLongRunningOperationStatus* status;
    @property (nullable, nonatomic, setter=setStatusDetail:, getter=statusDetail) NSString* statusDetail;
  
@end
