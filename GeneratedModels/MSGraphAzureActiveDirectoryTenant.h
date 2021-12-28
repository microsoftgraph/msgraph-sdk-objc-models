// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphIdentitySource.h"

@interface MSGraphAzureActiveDirectoryTenant : MSGraphIdentitySource

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setTenantId:, getter=tenantId) NSString* tenantId;

@end
