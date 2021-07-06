// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphChatMessageAttachment, MSGraphItemBody, MSGraphChannelIdentity, MSGraphChatMessageFromIdentitySet, MSGraphChatMessageMention, MSGraphChatMessagePolicyViolation, MSGraphChatMessageReaction, MSGraphChatMessageHostedContent; 
#import "MSGraphChatMessageImportance.h"
#import "MSGraphChatMessageType.h"


#import "MSGraphEntity.h"

@interface MSGraphChatMessage : MSGraphEntity

  @property (nullable, nonatomic, setter=setAttachments:, getter=attachments) NSArray* attachments;
    @property (nonnull, nonatomic, setter=setBody:, getter=body) MSGraphItemBody* body;
    @property (nullable, nonatomic, setter=setChannelIdentity:, getter=channelIdentity) MSGraphChannelIdentity* channelIdentity;
    @property (nullable, nonatomic, setter=setChatId:, getter=chatId) NSString* chatId;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDeletedDateTime:, getter=deletedDateTime) NSDate* deletedDateTime;
    @property (nullable, nonatomic, setter=setEtag:, getter=etag) NSString* etag;
    @property (nullable, nonatomic, setter=setFrom:, getter=from) MSGraphChatMessageFromIdentitySet* from;
    @property (nonnull, nonatomic, setter=setImportance:, getter=importance) MSGraphChatMessageImportance* importance;
    @property (nullable, nonatomic, setter=setLastEditedDateTime:, getter=lastEditedDateTime) NSDate* lastEditedDateTime;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setLocale:, getter=locale) NSString* locale;
    @property (nullable, nonatomic, setter=setMentions:, getter=mentions) NSArray* mentions;
    @property (nonnull, nonatomic, setter=setMessageType:, getter=messageType) MSGraphChatMessageType* messageType;
    @property (nullable, nonatomic, setter=setPolicyViolation:, getter=policyViolation) MSGraphChatMessagePolicyViolation* policyViolation;
    @property (nullable, nonatomic, setter=setReactions:, getter=reactions) NSArray* reactions;
    @property (nullable, nonatomic, setter=setReplyToId:, getter=replyToId) NSString* replyToId;
    @property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nullable, nonatomic, setter=setSummary:, getter=summary) NSString* summary;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setHostedContents:, getter=hostedContents) NSArray* hostedContents;
    @property (nullable, nonatomic, setter=setReplies:, getter=replies) NSArray* replies;
  
@end
