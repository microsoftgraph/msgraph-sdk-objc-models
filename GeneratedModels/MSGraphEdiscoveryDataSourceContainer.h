// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoveryCaseIndexOperation; 
#import "MSGraphEdiscoveryDataSourceContainerStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryDataSourceContainer : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setReleasedDateTime:, getter=releasedDateTime) NSDate* releasedDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphEdiscoveryDataSourceContainerStatus* status;
    @property (nullable, nonatomic, setter=setLastIndexOperation:, getter=lastIndexOperation) MSGraphEdiscoveryCaseIndexOperation* lastIndexOperation;
  
@end
