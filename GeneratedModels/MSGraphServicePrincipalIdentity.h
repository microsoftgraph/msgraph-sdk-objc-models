// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphIdentity.h"

@interface MSGraphServicePrincipalIdentity : MSGraphIdentity

@property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;

@end
