// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphItemBody, MSGraphChatMessageAttachment, MSGraphChatMessageMention, MSGraphChatMessagePolicyViolation, MSGraphChatMessageReaction, MSGraphChatMessageHostedContent; 
#import "MSGraphChatMessageType.h"
#import "MSGraphChatMessageImportance.h"


#import "MSGraphEntity.h"

@interface MSGraphChatMessage : MSGraphEntity

  @property (nullable, nonatomic, setter=setReplyToId:, getter=replyToId) NSString* replyToId;
    @property (nullable, nonatomic, setter=setFrom:, getter=from) MSGraphIdentitySet* from;
    @property (nullable, nonatomic, setter=setEtag:, getter=etag) NSString* etag;
    @property (nonnull, nonatomic, setter=setMessageType:, getter=messageType) MSGraphChatMessageType* messageType;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setDeletedDateTime:, getter=deletedDateTime) NSDate* deletedDateTime;
    @property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nonnull, nonatomic, setter=setBody:, getter=body) MSGraphItemBody* body;
    @property (nullable, nonatomic, setter=setSummary:, getter=summary) NSString* summary;
    @property (nullable, nonatomic, setter=setAttachments:, getter=attachments) NSArray* attachments;
    @property (nullable, nonatomic, setter=setMentions:, getter=mentions) NSArray* mentions;
    @property (nonnull, nonatomic, setter=setImportance:, getter=importance) MSGraphChatMessageImportance* importance;
    @property (nullable, nonatomic, setter=setPolicyViolation:, getter=policyViolation) MSGraphChatMessagePolicyViolation* policyViolation;
    @property (nullable, nonatomic, setter=setReactions:, getter=reactions) NSArray* reactions;
    @property (nonnull, nonatomic, setter=setLocale:, getter=locale) NSString* locale;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setReplies:, getter=replies) NSArray* replies;
    @property (nullable, nonatomic, setter=setHostedContents:, getter=hostedContents) NSArray* hostedContents;
  
@end
