// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphIdentityProviderBase.h"

@interface MSGraphAppleManagedIdentityProvider : MSGraphIdentityProviderBase

  @property (nullable, nonatomic, setter=setCertificateData:, getter=certificateData) NSString* certificateData;
    @property (nullable, nonatomic, setter=setDeveloperId:, getter=developerId) NSString* developerId;
    @property (nullable, nonatomic, setter=setKeyId:, getter=keyId) NSString* keyId;
    @property (nullable, nonatomic, setter=setServiceId:, getter=serviceId) NSString* serviceId;
  
@end
