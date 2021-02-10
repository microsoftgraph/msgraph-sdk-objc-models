// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDevice; 


#import "MSGraphAuthenticationMethod.h"

@interface MSGraphMicrosoftAuthenticatorAuthenticationMethod : MSGraphAuthenticationMethod

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDeviceTag:, getter=deviceTag) NSString* deviceTag;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setPhoneAppVersion:, getter=phoneAppVersion) NSString* phoneAppVersion;
    @property (nullable, nonatomic, setter=setDevice:, getter=device) MSGraphDevice* device;
  
@end
