// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphChannelDeletedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setChannelDisplayName:, getter=channelDisplayName) NSString* channelDisplayName;
@property (nullable, nonatomic, setter=setChannelId:, getter=channelId) NSString* channelId;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;

@end
