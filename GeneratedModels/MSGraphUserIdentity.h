// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphIdentity.h"

@interface MSGraphUserIdentity : MSGraphIdentity

@property (nullable, nonatomic, setter=setIpAddress:, getter=ipAddress) NSString* ipAddress;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
