// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphResourceSpecificPermission : MSObject

@property (nullable, nonatomic, setter=setResourceSpecificPermissionDescription:, getter=resourceSpecificPermissionDescription) NSString* resourceSpecificPermissionDescription;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonnull, nonatomic, setter=setResourceSpecificPermissionId:, getter=resourceSpecificPermissionId) NSString* resourceSpecificPermissionId;
@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
