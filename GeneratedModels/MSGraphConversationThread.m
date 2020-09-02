// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConversationThread()
{
    NSArray* _ccRecipients;
    BOOL _hasAttachments;
    BOOL _isLocked;
    NSDate* _lastDeliveredDateTime;
    NSString* _preview;
    NSString* _topic;
    NSArray* _toRecipients;
    NSArray* _uniqueSenders;
    NSArray* _posts;
}
@end

@implementation MSGraphConversationThread

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.conversationThread";
    }
    return self;
}
- (NSArray*) ccRecipients
{
    if(!_ccRecipients){
        
    NSMutableArray *ccRecipientsResult = [NSMutableArray array];
    NSArray *ccRecipients = self.dictionary[@"ccRecipients"];

    if ([ccRecipients isKindOfClass:[NSArray class]]){
        for (id tempRecipient in ccRecipients){
            [ccRecipientsResult addObject:tempRecipient];
        }
    }

    _ccRecipients = ccRecipientsResult;
        
    }
    return _ccRecipients;
}

- (void) setCcRecipients: (NSArray*) val
{
    _ccRecipients = val;
    self.dictionary[@"ccRecipients"] = val;
}

- (BOOL) hasAttachments
{
    _hasAttachments = [self.dictionary[@"hasAttachments"] boolValue];
    return _hasAttachments;
}

- (void) setHasAttachments: (BOOL) val
{
    _hasAttachments = val;
    self.dictionary[@"hasAttachments"] = @(val);
}

- (BOOL) isLocked
{
    _isLocked = [self.dictionary[@"isLocked"] boolValue];
    return _isLocked;
}

- (void) setIsLocked: (BOOL) val
{
    _isLocked = val;
    self.dictionary[@"isLocked"] = @(val);
}

- (NSDate*) lastDeliveredDateTime
{
    if(!_lastDeliveredDateTime){
        _lastDeliveredDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastDeliveredDateTime"]];
    }
    return _lastDeliveredDateTime;
}

- (void) setLastDeliveredDateTime: (NSDate*) val
{
    _lastDeliveredDateTime = val;
    self.dictionary[@"lastDeliveredDateTime"] = [val ms_toString];
}

- (NSString*) preview
{
    return self.dictionary[@"preview"];
}

- (void) setPreview: (NSString*) val
{
    self.dictionary[@"preview"] = val;
}

- (NSString*) topic
{
    return self.dictionary[@"topic"];
}

- (void) setTopic: (NSString*) val
{
    self.dictionary[@"topic"] = val;
}

- (NSArray*) toRecipients
{
    if(!_toRecipients){
        
    NSMutableArray *toRecipientsResult = [NSMutableArray array];
    NSArray *toRecipients = self.dictionary[@"toRecipients"];

    if ([toRecipients isKindOfClass:[NSArray class]]){
        for (id tempRecipient in toRecipients){
            [toRecipientsResult addObject:tempRecipient];
        }
    }

    _toRecipients = toRecipientsResult;
        
    }
    return _toRecipients;
}

- (void) setToRecipients: (NSArray*) val
{
    _toRecipients = val;
    self.dictionary[@"toRecipients"] = val;
}

- (NSArray*) uniqueSenders
{
    return self.dictionary[@"uniqueSenders"];
}

- (void) setUniqueSenders: (NSArray*) val
{
    self.dictionary[@"uniqueSenders"] = val;
}

- (NSArray*) posts
{
    if(!_posts){
        
    NSMutableArray *postsResult = [NSMutableArray array];
    NSArray *posts = self.dictionary[@"posts"];

    if ([posts isKindOfClass:[NSArray class]]){
        for (id tempPost in posts){
            [postsResult addObject:tempPost];
        }
    }

    _posts = postsResult;
        
    }
    return _posts;
}

- (void) setPosts: (NSArray*) val
{
    _posts = val;
    self.dictionary[@"posts"] = val;
}


@end
