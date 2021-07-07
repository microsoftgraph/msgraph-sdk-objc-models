// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkUserIdentityType.h"


#import "MSGraphIdentity.h"

@interface MSGraphTeamworkUserIdentity : MSGraphIdentity

@property (nullable, nonatomic, setter=setUserIdentityType:, getter=userIdentityType) MSGraphTeamworkUserIdentityType* userIdentityType;

@end
