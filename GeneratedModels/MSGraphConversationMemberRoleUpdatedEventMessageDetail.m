// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConversationMemberRoleUpdatedEventMessageDetail()
{
    NSArray* _conversationMemberRoles;
    MSGraphTeamworkUserIdentity* _conversationMemberUser;
    MSGraphIdentitySet* _initiator;
}
@end

@implementation MSGraphConversationMemberRoleUpdatedEventMessageDetail

- (NSArray*) conversationMemberRoles
{
    if([[NSNull null] isEqual:self.dictionary[@"conversationMemberRoles"]])
    {
        return nil;
    }   
    return self.dictionary[@"conversationMemberRoles"];
}

- (void) setConversationMemberRoles: (NSArray*) val
{
    self.dictionary[@"conversationMemberRoles"] = val;
}

- (MSGraphTeamworkUserIdentity*) conversationMemberUser
{
    if(!_conversationMemberUser){
        _conversationMemberUser = [[MSGraphTeamworkUserIdentity alloc] initWithDictionary: self.dictionary[@"conversationMemberUser"]];
    }
    return _conversationMemberUser;
}

- (void) setConversationMemberUser: (MSGraphTeamworkUserIdentity*) val
{
    _conversationMemberUser = val;
    self.dictionary[@"conversationMemberUser"] = val;
}

- (MSGraphIdentitySet*) initiator
{
    if(!_initiator){
        _initiator = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"initiator"]];
    }
    return _initiator;
}

- (void) setInitiator: (MSGraphIdentitySet*) val
{
    _initiator = val;
    self.dictionary[@"initiator"] = val;
}

@end
