// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphChannelIdentity : MSObject

@property (nullable, nonatomic, setter=setChannelId:, getter=channelId) NSString* channelId;
@property (nullable, nonatomic, setter=setTeamId:, getter=teamId) NSString* teamId;

@end
