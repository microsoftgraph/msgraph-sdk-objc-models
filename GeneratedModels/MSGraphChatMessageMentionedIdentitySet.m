// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessageMentionedIdentitySet()
{
    MSGraphTeamworkConversationIdentity* _conversation;
}
@end

@implementation MSGraphChatMessageMentionedIdentitySet

- (MSGraphTeamworkConversationIdentity*) conversation
{
    if(!_conversation){
        _conversation = [[MSGraphTeamworkConversationIdentity alloc] initWithDictionary: self.dictionary[@"conversation"]];
    }
    return _conversation;
}

- (void) setConversation: (MSGraphTeamworkConversationIdentity*) val
{
    _conversation = val;
    self.dictionary[@"conversation"] = val;
}

@end
