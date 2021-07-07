// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphChatMessageMentionedIdentitySet; 


#import "MSObject.h"

@interface MSGraphChatMessageMention : MSObject

@property (nonatomic, setter=setChatMessageMentionId:, getter=chatMessageMentionId) int32_t chatMessageMentionId;
@property (nullable, nonatomic, setter=setMentioned:, getter=mentioned) MSGraphChatMessageMentionedIdentitySet* mentioned;
@property (nullable, nonatomic, setter=setMentionText:, getter=mentionText) NSString* mentionText;

@end
