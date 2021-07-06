// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkApplicationIdentityType.h"


#import "MSGraphIdentity.h"

@interface MSGraphTeamworkApplicationIdentity : MSGraphIdentity

@property (nullable, nonatomic, setter=setApplicationIdentityType:, getter=applicationIdentityType) MSGraphTeamworkApplicationIdentityType* applicationIdentityType;

@end
