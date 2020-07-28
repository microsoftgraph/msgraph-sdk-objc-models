// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDirectoryObject.h"

@interface MSGraphEndpoint : MSGraphDirectoryObject

  @property (nonnull, nonatomic, setter=setCapability:, getter=capability) NSString* capability;
    @property (nullable, nonatomic, setter=setProviderId:, getter=providerId) NSString* providerId;
    @property (nullable, nonatomic, setter=setProviderName:, getter=providerName) NSString* providerName;
    @property (nonnull, nonatomic, setter=setUri:, getter=uri) NSString* uri;
    @property (nullable, nonatomic, setter=setProviderResourceId:, getter=providerResourceId) NSString* providerResourceId;
  
@end
