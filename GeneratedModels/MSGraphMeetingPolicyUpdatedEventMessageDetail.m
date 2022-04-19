// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMeetingPolicyUpdatedEventMessageDetail()
{
    MSGraphIdentitySet* _initiator;
    BOOL _meetingChatEnabled;
    NSString* _meetingChatId;
}
@end

@implementation MSGraphMeetingPolicyUpdatedEventMessageDetail

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

- (BOOL) meetingChatEnabled
{
    _meetingChatEnabled = [self.dictionary[@"meetingChatEnabled"] boolValue];
    return _meetingChatEnabled;
}

- (void) setMeetingChatEnabled: (BOOL) val
{
    _meetingChatEnabled = val;
    self.dictionary[@"meetingChatEnabled"] = @(val);
}

- (NSString*) meetingChatId
{
    if([[NSNull null] isEqual:self.dictionary[@"meetingChatId"]])
    {
        return nil;
    }   
    return self.dictionary[@"meetingChatId"];
}

- (void) setMeetingChatId: (NSString*) val
{
    self.dictionary[@"meetingChatId"] = val;
}

@end
