// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallTranscriptEventMessageDetail()
{
    NSString* _callId;
    NSString* _callTranscriptICalUid;
    MSGraphIdentitySet* _meetingOrganizer;
}
@end

@implementation MSGraphCallTranscriptEventMessageDetail

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

- (NSString*) callTranscriptICalUid
{
    if([[NSNull null] isEqual:self.dictionary[@"callTranscriptICalUid"]])
    {
        return nil;
    }   
    return self.dictionary[@"callTranscriptICalUid"];
}

- (void) setCallTranscriptICalUid: (NSString*) val
{
    self.dictionary[@"callTranscriptICalUid"] = val;
}

- (MSGraphIdentitySet*) meetingOrganizer
{
    if(!_meetingOrganizer){
        _meetingOrganizer = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"meetingOrganizer"]];
    }
    return _meetingOrganizer;
}

- (void) setMeetingOrganizer: (MSGraphIdentitySet*) val
{
    _meetingOrganizer = val;
    self.dictionary[@"meetingOrganizer"] = val;
}

@end
