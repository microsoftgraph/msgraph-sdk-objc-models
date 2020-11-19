// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphResourcePermission; 


#import "MSObject.h"

@interface MSGraphInstanceResourceAccess : MSObject

@property (nonnull, nonatomic, setter=setPermissions:, getter=permissions) NSArray* permissions;
@property (nonnull, nonatomic, setter=setResourceAppId:, getter=resourceAppId) NSString* resourceAppId;

@end
