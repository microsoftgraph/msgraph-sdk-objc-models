// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphChatMessageReactionIdentitySet; 


#import "MSObject.h"

@interface MSGraphChatMessageReaction : MSObject

@property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
@property (nonnull, nonatomic, setter=setReactionType:, getter=reactionType) NSString* reactionType;
@property (nonnull, nonatomic, setter=setUser:, getter=user) MSGraphChatMessageReactionIdentitySet* user;

@end
