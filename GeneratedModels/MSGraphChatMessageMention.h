// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphChatMessageMention : MSObject

@property (nonatomic, setter=setChatMessageMentionId:, getter=chatMessageMentionId) int32_t chatMessageMentionId;
@property (nullable, nonatomic, setter=setMentionText:, getter=mentionText) NSString* mentionText;
@property (nullable, nonatomic, setter=setMentioned:, getter=mentioned) MSGraphIdentitySet* mentioned;

@end
