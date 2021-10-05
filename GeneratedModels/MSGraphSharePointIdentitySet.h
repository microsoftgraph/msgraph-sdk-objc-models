// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentity, MSGraphSharePointIdentity; 


#import "MSGraphIdentitySet.h"

@interface MSGraphSharePointIdentitySet : MSGraphIdentitySet

@property (nullable, nonatomic, setter=setGroup:, getter=group) MSGraphIdentity* group;
@property (nullable, nonatomic, setter=setSiteGroup:, getter=siteGroup) MSGraphSharePointIdentity* siteGroup;
@property (nullable, nonatomic, setter=setSiteUser:, getter=siteUser) MSGraphSharePointIdentity* siteUser;

@end
