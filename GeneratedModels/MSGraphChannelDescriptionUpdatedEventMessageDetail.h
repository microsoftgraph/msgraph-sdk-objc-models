// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphChannelDescriptionUpdatedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setChannelDescription:, getter=channelDescription) NSString* channelDescription;
@property (nullable, nonatomic, setter=setChannelId:, getter=channelId) NSString* channelId;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;

@end
