// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessage()
{
    NSString* _replyToId;
    MSGraphIdentitySet* _from;
    NSString* _etag;
    MSGraphChatMessageType* _messageType;
    NSDate* _createdDateTime;
    NSDate* _lastModifiedDateTime;
    NSDate* _deletedDateTime;
    NSString* _subject;
    MSGraphItemBody* _body;
    NSString* _summary;
    NSArray* _attachments;
    NSArray* _mentions;
    MSGraphChatMessageImportance* _importance;
    MSGraphChatMessagePolicyViolation* _policyViolation;
    NSArray* _reactions;
    NSString* _locale;
    NSString* _webUrl;
    NSArray* _replies;
    NSArray* _hostedContents;
}
@end

@implementation MSGraphChatMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.chatMessage";
    }
    return self;
}
- (NSString*) replyToId
{
    if([[NSNull null] isEqual:self.dictionary[@"replyToId"]])
    {
        return nil;
    }   
    return self.dictionary[@"replyToId"];
}

- (void) setReplyToId: (NSString*) val
{
    self.dictionary[@"replyToId"] = val;
}

- (MSGraphIdentitySet*) from
{
    if(!_from){
        _from = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"from"]];
    }
    return _from;
}

- (void) setFrom: (MSGraphIdentitySet*) val
{
    _from = val;
    self.dictionary[@"from"] = val;
}

- (NSString*) etag
{
    if([[NSNull null] isEqual:self.dictionary[@"etag"]])
    {
        return nil;
    }   
    return self.dictionary[@"etag"];
}

- (void) setEtag: (NSString*) val
{
    self.dictionary[@"etag"] = val;
}

- (MSGraphChatMessageType*) messageType
{
    if(!_messageType){
        _messageType = [self.dictionary[@"messageType"] toMSGraphChatMessageType];
    }
    return _messageType;
}

- (void) setMessageType: (MSGraphChatMessageType*) val
{
    _messageType = val;
    self.dictionary[@"messageType"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSDate*) deletedDateTime
{
    if(!_deletedDateTime){
        _deletedDateTime = [NSDate ms_dateFromString: self.dictionary[@"deletedDateTime"]];
    }
    return _deletedDateTime;
}

- (void) setDeletedDateTime: (NSDate*) val
{
    _deletedDateTime = val;
    self.dictionary[@"deletedDateTime"] = [val ms_toString];
}

- (NSString*) subject
{
    if([[NSNull null] isEqual:self.dictionary[@"subject"]])
    {
        return nil;
    }   
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
}

- (MSGraphItemBody*) body
{
    if(!_body){
        _body = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"body"]];
    }
    return _body;
}

- (void) setBody: (MSGraphItemBody*) val
{
    _body = val;
    self.dictionary[@"body"] = val;
}

- (NSString*) summary
{
    if([[NSNull null] isEqual:self.dictionary[@"summary"]])
    {
        return nil;
    }   
    return self.dictionary[@"summary"];
}

- (void) setSummary: (NSString*) val
{
    self.dictionary[@"summary"] = val;
}

- (NSArray*) attachments
{
    if(!_attachments){
        
    NSMutableArray *attachmentsResult = [NSMutableArray array];
    NSArray *attachments = self.dictionary[@"attachments"];

    if ([attachments isKindOfClass:[NSArray class]]){
        for (id tempChatMessageAttachment in attachments){
            [attachmentsResult addObject:tempChatMessageAttachment];
        }
    }

    _attachments = attachmentsResult;
        
    }
    return _attachments;
}

- (void) setAttachments: (NSArray*) val
{
    _attachments = val;
    self.dictionary[@"attachments"] = val;
}

- (NSArray*) mentions
{
    if(!_mentions){
        
    NSMutableArray *mentionsResult = [NSMutableArray array];
    NSArray *mentions = self.dictionary[@"mentions"];

    if ([mentions isKindOfClass:[NSArray class]]){
        for (id tempChatMessageMention in mentions){
            [mentionsResult addObject:tempChatMessageMention];
        }
    }

    _mentions = mentionsResult;
        
    }
    return _mentions;
}

- (void) setMentions: (NSArray*) val
{
    _mentions = val;
    self.dictionary[@"mentions"] = val;
}

- (MSGraphChatMessageImportance*) importance
{
    if(!_importance){
        _importance = [self.dictionary[@"importance"] toMSGraphChatMessageImportance];
    }
    return _importance;
}

- (void) setImportance: (MSGraphChatMessageImportance*) val
{
    _importance = val;
    self.dictionary[@"importance"] = val;
}

- (MSGraphChatMessagePolicyViolation*) policyViolation
{
    if(!_policyViolation){
        _policyViolation = [[MSGraphChatMessagePolicyViolation alloc] initWithDictionary: self.dictionary[@"policyViolation"]];
    }
    return _policyViolation;
}

- (void) setPolicyViolation: (MSGraphChatMessagePolicyViolation*) val
{
    _policyViolation = val;
    self.dictionary[@"policyViolation"] = val;
}

- (NSArray*) reactions
{
    if(!_reactions){
        
    NSMutableArray *reactionsResult = [NSMutableArray array];
    NSArray *reactions = self.dictionary[@"reactions"];

    if ([reactions isKindOfClass:[NSArray class]]){
        for (id tempChatMessageReaction in reactions){
            [reactionsResult addObject:tempChatMessageReaction];
        }
    }

    _reactions = reactionsResult;
        
    }
    return _reactions;
}

- (void) setReactions: (NSArray*) val
{
    _reactions = val;
    self.dictionary[@"reactions"] = val;
}

- (NSString*) locale
{
    return self.dictionary[@"locale"];
}

- (void) setLocale: (NSString*) val
{
    self.dictionary[@"locale"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

- (NSArray*) replies
{
    if(!_replies){
        
    NSMutableArray *repliesResult = [NSMutableArray array];
    NSArray *replies = self.dictionary[@"replies"];

    if ([replies isKindOfClass:[NSArray class]]){
        for (id tempChatMessage in replies){
            [repliesResult addObject:tempChatMessage];
        }
    }

    _replies = repliesResult;
        
    }
    return _replies;
}

- (void) setReplies: (NSArray*) val
{
    _replies = val;
    self.dictionary[@"replies"] = val;
}

- (NSArray*) hostedContents
{
    if(!_hostedContents){
        
    NSMutableArray *hostedContentsResult = [NSMutableArray array];
    NSArray *hostedContents = self.dictionary[@"hostedContents"];

    if ([hostedContents isKindOfClass:[NSArray class]]){
        for (id tempChatMessageHostedContent in hostedContents){
            [hostedContentsResult addObject:tempChatMessageHostedContent];
        }
    }

    _hostedContents = hostedContentsResult;
        
    }
    return _hostedContents;
}

- (void) setHostedContents: (NSArray*) val
{
    _hostedContents = val;
    self.dictionary[@"hostedContents"] = val;
}


@end
