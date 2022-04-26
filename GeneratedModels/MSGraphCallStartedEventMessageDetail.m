// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallStartedEventMessageDetail()
{
    MSGraphTeamworkCallEventType* _callEventType;
    NSString* _callId;
    MSGraphIdentitySet* _initiator;
}
@end

@implementation MSGraphCallStartedEventMessageDetail

- (MSGraphTeamworkCallEventType*) callEventType
{
    if(!_callEventType){
        _callEventType = [self.dictionary[@"callEventType"] toMSGraphTeamworkCallEventType];
    }
    return _callEventType;
}

- (void) setCallEventType: (MSGraphTeamworkCallEventType*) val
{
    _callEventType = val;
    self.dictionary[@"callEventType"] = val;
}

- (NSString*) callId
{
    if([[NSNull null] isEqual:self.dictionary[@"callId"]])
    {
        return nil;
    }   
    return self.dictionary[@"callId"];
}

- (void) setCallId: (NSString*) val
{
    self.dictionary[@"callId"] = val;
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
