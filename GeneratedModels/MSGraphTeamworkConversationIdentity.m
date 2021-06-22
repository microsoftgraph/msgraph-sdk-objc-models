// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamworkConversationIdentity()
{
    MSGraphTeamworkConversationIdentityType* _conversationIdentityType;
}
@end

@implementation MSGraphTeamworkConversationIdentity

- (MSGraphTeamworkConversationIdentityType*) conversationIdentityType
{
    if(!_conversationIdentityType){
        _conversationIdentityType = [self.dictionary[@"conversationIdentityType"] toMSGraphTeamworkConversationIdentityType];
    }
    return _conversationIdentityType;
}

- (void) setConversationIdentityType: (MSGraphTeamworkConversationIdentityType*) val
{
    _conversationIdentityType = val;
    self.dictionary[@"conversationIdentityType"] = val;
}

@end
