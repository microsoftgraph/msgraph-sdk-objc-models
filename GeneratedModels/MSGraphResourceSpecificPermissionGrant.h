// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDirectoryObject.h"

@interface MSGraphResourceSpecificPermissionGrant : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setClientAppId:, getter=clientAppId) NSString* clientAppId;
    @property (nullable, nonatomic, setter=setClientId:, getter=clientId) NSString* clientId;
    @property (nullable, nonatomic, setter=setPermission:, getter=permission) NSString* permission;
    @property (nullable, nonatomic, setter=setPermissionType:, getter=permissionType) NSString* permissionType;
    @property (nullable, nonatomic, setter=setResourceAppId:, getter=resourceAppId) NSString* resourceAppId;
  
@end
