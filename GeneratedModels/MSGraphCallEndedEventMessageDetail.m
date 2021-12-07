// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallEndedEventMessageDetail()
{
    MSDuration* _callDuration;
    MSGraphTeamworkCallEventType* _callEventType;
    NSString* _callId;
    NSArray* _callParticipants;
    MSGraphIdentitySet* _initiator;
}
@end

@implementation MSGraphCallEndedEventMessageDetail

- (MSDuration*) callDuration
{
    if(!_callDuration){
        _callDuration = [MSDuration ms_durationFromString: self.dictionary[@"callDuration"]];
    }
    return _callDuration;
}

- (void) setCallDuration: (MSDuration*) val
{
    _callDuration = val;
    self.dictionary[@"callDuration"] = val.durationString;
}

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

- (NSArray*) callParticipants
{
    if(!_callParticipants){
        
    NSMutableArray *callParticipantsResult = [NSMutableArray array];
    NSArray *callParticipants = self.dictionary[@"callParticipants"];

    if ([callParticipants isKindOfClass:[NSArray class]]){
        for (id tempCallParticipantInfo in callParticipants){
            [callParticipantsResult addObject:tempCallParticipantInfo];
        }
    }

    _callParticipants = callParticipantsResult;
        
    }
    return _callParticipants;
}

- (void) setCallParticipants: (NSArray*) val
{
    _callParticipants = val;
    self.dictionary[@"callParticipants"] = val;
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
