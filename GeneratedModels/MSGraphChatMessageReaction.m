// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessageReaction()
{
    NSString* _reactionType;
    NSDate* _createdDateTime;
    MSGraphIdentitySet* _user;
}
@end

@implementation MSGraphChatMessageReaction

- (NSString*) reactionType
{
    return self.dictionary[@"reactionType"];
}

- (void) setReactionType: (NSString*) val
{
    self.dictionary[@"reactionType"] = val;
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

- (MSGraphIdentitySet*) user
{
    if(!_user){
        _user = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"user"]];
    }
    return _user;
}

- (void) setUser: (MSGraphIdentitySet*) val
{
    _user = val;
    self.dictionary[@"user"] = val;
}

@end
