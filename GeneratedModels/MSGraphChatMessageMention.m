// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessageMention()
{
    int32_t _chatMessageMentionId;
    MSGraphChatMessageMentionedIdentitySet* _mentioned;
    NSString* _mentionText;
}
@end

@implementation MSGraphChatMessageMention

- (int32_t) chatMessageMentionId
{
    _chatMessageMentionId = [self.dictionary[@"id"] intValue];
    return _chatMessageMentionId;
}

- (void) setChatMessageMentionId: (int32_t) val
{
    _chatMessageMentionId = val;
    self.dictionary[@"id"] = @(val);
}

- (MSGraphChatMessageMentionedIdentitySet*) mentioned
{
    if(!_mentioned){
        _mentioned = [[MSGraphChatMessageMentionedIdentitySet alloc] initWithDictionary: self.dictionary[@"mentioned"]];
    }
    return _mentioned;
}

- (void) setMentioned: (MSGraphChatMessageMentionedIdentitySet*) val
{
    _mentioned = val;
    self.dictionary[@"mentioned"] = val;
}

- (NSString*) mentionText
{
    if([[NSNull null] isEqual:self.dictionary[@"mentionText"]])
    {
        return nil;
    }   
    return self.dictionary[@"mentionText"];
}

- (void) setMentionText: (NSString*) val
{
    self.dictionary[@"mentionText"] = val;
}

@end
