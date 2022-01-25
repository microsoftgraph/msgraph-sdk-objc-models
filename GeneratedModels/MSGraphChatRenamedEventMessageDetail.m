// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatRenamedEventMessageDetail()
{
    NSString* _chatDisplayName;
    NSString* _chatId;
    MSGraphIdentitySet* _initiator;
}
@end

@implementation MSGraphChatRenamedEventMessageDetail

- (NSString*) chatDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"chatDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"chatDisplayName"];
}

- (void) setChatDisplayName: (NSString*) val
{
    self.dictionary[@"chatDisplayName"] = val;
}

- (NSString*) chatId
{
    if([[NSNull null] isEqual:self.dictionary[@"chatId"]])
    {
        return nil;
    }   
    return self.dictionary[@"chatId"];
}

- (void) setChatId: (NSString*) val
{
    self.dictionary[@"chatId"] = val;
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
