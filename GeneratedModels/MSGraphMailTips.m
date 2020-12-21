// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMailTips()
{
    MSGraphAutomaticRepliesMailTips* _automaticReplies;
    NSString* _customMailTip;
    BOOL _deliveryRestricted;
    MSGraphEmailAddress* _emailAddress;
    MSGraphMailTipsError* _error;
    int32_t _externalMemberCount;
    BOOL _isModerated;
    BOOL _mailboxFull;
    int32_t _maxMessageSize;
    MSGraphRecipientScopeType* _recipientScope;
    NSArray* _recipientSuggestions;
    int32_t _totalMemberCount;
}
@end

@implementation MSGraphMailTips

- (MSGraphAutomaticRepliesMailTips*) automaticReplies
{
    if(!_automaticReplies){
        _automaticReplies = [[MSGraphAutomaticRepliesMailTips alloc] initWithDictionary: self.dictionary[@"automaticReplies"]];
    }
    return _automaticReplies;
}

- (void) setAutomaticReplies: (MSGraphAutomaticRepliesMailTips*) val
{
    _automaticReplies = val;
    self.dictionary[@"automaticReplies"] = val;
}

- (NSString*) customMailTip
{
    if([[NSNull null] isEqual:self.dictionary[@"customMailTip"]])
    {
        return nil;
    }   
    return self.dictionary[@"customMailTip"];
}

- (void) setCustomMailTip: (NSString*) val
{
    self.dictionary[@"customMailTip"] = val;
}

- (BOOL) deliveryRestricted
{
    _deliveryRestricted = [self.dictionary[@"deliveryRestricted"] boolValue];
    return _deliveryRestricted;
}

- (void) setDeliveryRestricted: (BOOL) val
{
    _deliveryRestricted = val;
    self.dictionary[@"deliveryRestricted"] = @(val);
}

- (MSGraphEmailAddress*) emailAddress
{
    if(!_emailAddress){
        _emailAddress = [[MSGraphEmailAddress alloc] initWithDictionary: self.dictionary[@"emailAddress"]];
    }
    return _emailAddress;
}

- (void) setEmailAddress: (MSGraphEmailAddress*) val
{
    _emailAddress = val;
    self.dictionary[@"emailAddress"] = val;
}

- (MSGraphMailTipsError*) error
{
    if(!_error){
        _error = [[MSGraphMailTipsError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphMailTipsError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}

- (int32_t) externalMemberCount
{
    _externalMemberCount = [self.dictionary[@"externalMemberCount"] intValue];
    return _externalMemberCount;
}

- (void) setExternalMemberCount: (int32_t) val
{
    _externalMemberCount = val;
    self.dictionary[@"externalMemberCount"] = @(val);
}

- (BOOL) isModerated
{
    _isModerated = [self.dictionary[@"isModerated"] boolValue];
    return _isModerated;
}

- (void) setIsModerated: (BOOL) val
{
    _isModerated = val;
    self.dictionary[@"isModerated"] = @(val);
}

- (BOOL) mailboxFull
{
    _mailboxFull = [self.dictionary[@"mailboxFull"] boolValue];
    return _mailboxFull;
}

- (void) setMailboxFull: (BOOL) val
{
    _mailboxFull = val;
    self.dictionary[@"mailboxFull"] = @(val);
}

- (int32_t) maxMessageSize
{
    _maxMessageSize = [self.dictionary[@"maxMessageSize"] intValue];
    return _maxMessageSize;
}

- (void) setMaxMessageSize: (int32_t) val
{
    _maxMessageSize = val;
    self.dictionary[@"maxMessageSize"] = @(val);
}

- (MSGraphRecipientScopeType*) recipientScope
{
    if(!_recipientScope){
        _recipientScope = [self.dictionary[@"recipientScope"] toMSGraphRecipientScopeType];
    }
    return _recipientScope;
}

- (void) setRecipientScope: (MSGraphRecipientScopeType*) val
{
    _recipientScope = val;
    self.dictionary[@"recipientScope"] = val;
}

- (NSArray*) recipientSuggestions
{
    if(!_recipientSuggestions){
        
    NSMutableArray *recipientSuggestionsResult = [NSMutableArray array];
    NSArray *recipientSuggestions = self.dictionary[@"recipientSuggestions"];

    if ([recipientSuggestions isKindOfClass:[NSArray class]]){
        for (id tempRecipient in recipientSuggestions){
            [recipientSuggestionsResult addObject:tempRecipient];
        }
    }

    _recipientSuggestions = recipientSuggestionsResult;
        
    }
    return _recipientSuggestions;
}

- (void) setRecipientSuggestions: (NSArray*) val
{
    _recipientSuggestions = val;
    self.dictionary[@"recipientSuggestions"] = val;
}

- (int32_t) totalMemberCount
{
    _totalMemberCount = [self.dictionary[@"totalMemberCount"] intValue];
    return _totalMemberCount;
}

- (void) setTotalMemberCount: (int32_t) val
{
    _totalMemberCount = val;
    self.dictionary[@"totalMemberCount"] = @(val);
}

@end
