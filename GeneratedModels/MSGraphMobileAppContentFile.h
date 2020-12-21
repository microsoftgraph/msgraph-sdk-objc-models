// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphMobileAppContentFileUploadState.h"


#import "MSGraphEntity.h"

@interface MSGraphMobileAppContentFile : MSGraphEntity

  @property (nullable, nonatomic, setter=setAzureStorageUri:, getter=azureStorageUri) NSString* azureStorageUri;
    @property (nullable, nonatomic, setter=setAzureStorageUriExpirationDateTime:, getter=azureStorageUriExpirationDateTime) NSDate* azureStorageUriExpirationDateTime;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonatomic, setter=setIsCommitted:, getter=isCommitted) BOOL isCommitted;
    @property (nullable, nonatomic, setter=setManifest:, getter=manifest) NSString* manifest;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nonatomic, setter=setSize:, getter=size) int64_t size;
    @property (nonatomic, setter=setSizeEncrypted:, getter=sizeEncrypted) int64_t sizeEncrypted;
    @property (nonnull, nonatomic, setter=setUploadState:, getter=uploadState) MSGraphMobileAppContentFileUploadState* uploadState;
  
@end
