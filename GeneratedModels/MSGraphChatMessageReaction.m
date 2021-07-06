// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessageReaction()
{
    NSDate* _createdDateTime;
    NSString* _reactionType;
    MSGraphChatMessageReactionIdentitySet* _user;
}
@end

@implementation MSGraphChatMessageReaction

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

- (NSString*) reactionType
{
    return self.dictionary[@"reactionType"];
}

- (void) setReactionType: (NSString*) val
{
    self.dictionary[@"reactionType"] = val;
}

- (MSGraphChatMessageReactionIdentitySet*) user
{
    if(!_user){
        _user = [[MSGraphChatMessageReactionIdentitySet alloc] initWithDictionary: self.dictionary[@"user"]];
    }
    return _user;
}

- (void) setUser: (MSGraphChatMessageReactionIdentitySet*) val
{
    _user = val;
    self.dictionary[@"user"] = val;
}

@end
