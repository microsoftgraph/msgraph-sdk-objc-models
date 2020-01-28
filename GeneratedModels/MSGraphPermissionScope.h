// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPermissionScope : MSObject

@property (nullable, nonatomic, setter=setAdminConsentDescription:, getter=adminConsentDescription) NSString* adminConsentDescription;
@property (nullable, nonatomic, setter=setAdminConsentDisplayName:, getter=adminConsentDisplayName) NSString* adminConsentDisplayName;
@property (nonnull, nonatomic, setter=setPermissionScopeId:, getter=permissionScopeId) NSString* permissionScopeId;
@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nullable, nonatomic, setter=setOrigin:, getter=origin) NSString* origin;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nullable, nonatomic, setter=setUserConsentDescription:, getter=userConsentDescription) NSString* userConsentDescription;
@property (nullable, nonatomic, setter=setUserConsentDisplayName:, getter=userConsentDisplayName) NSString* userConsentDisplayName;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
