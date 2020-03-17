// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAppRole : MSObject

@property (nonnull, nonatomic, setter=setAllowedMemberTypes:, getter=allowedMemberTypes) NSArray* allowedMemberTypes;
@property (nullable, nonatomic, setter=setAppRoleDescription:, getter=appRoleDescription) NSString* appRoleDescription;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonnull, nonatomic, setter=setAppRoleId:, getter=appRoleId) NSString* appRoleId;
@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nullable, nonatomic, setter=setOrigin:, getter=origin) NSString* origin;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
