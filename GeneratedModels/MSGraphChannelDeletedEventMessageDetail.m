// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChannelDeletedEventMessageDetail()
{
    NSString* _channelDisplayName;
    NSString* _channelId;
    MSGraphIdentitySet* _initiator;
}
@end

@implementation MSGraphChannelDeletedEventMessageDetail

- (NSString*) channelDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"channelDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"channelDisplayName"];
}

- (void) setChannelDisplayName: (NSString*) val
{
    self.dictionary[@"channelDisplayName"] = val;
}

- (NSString*) channelId
{
    if([[NSNull null] isEqual:self.dictionary[@"channelId"]])
    {
        return nil;
    }   
    return self.dictionary[@"channelId"];
}

- (void) setChannelId: (NSString*) val
{
    self.dictionary[@"channelId"] = val;
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
