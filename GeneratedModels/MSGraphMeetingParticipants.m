// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMeetingParticipants()
{
    NSArray* _attendees;
    MSGraphMeetingParticipantInfo* _organizer;
}
@end

@implementation MSGraphMeetingParticipants

- (NSArray*) attendees
{
    if(!_attendees){
        
    NSMutableArray *attendeesResult = [NSMutableArray array];
    NSArray *attendees = self.dictionary[@"attendees"];

    if ([attendees isKindOfClass:[NSArray class]]){
        for (id tempMeetingParticipantInfo in attendees){
            [attendeesResult addObject:tempMeetingParticipantInfo];
        }
    }

    _attendees = attendeesResult;
        
    }
    return _attendees;
}

- (void) setAttendees: (NSArray*) val
{
    _attendees = val;
    self.dictionary[@"attendees"] = val;
}

- (MSGraphMeetingParticipantInfo*) organizer
{
    if(!_organizer){
        _organizer = [[MSGraphMeetingParticipantInfo alloc] initWithDictionary: self.dictionary[@"organizer"]];
    }
    return _organizer;
}

- (void) setOrganizer: (MSGraphMeetingParticipantInfo*) val
{
    _organizer = val;
    self.dictionary[@"organizer"] = val;
}

@end
