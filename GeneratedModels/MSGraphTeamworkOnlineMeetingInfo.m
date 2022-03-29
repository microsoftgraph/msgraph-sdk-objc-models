// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamworkOnlineMeetingInfo()
{
    NSString* _calendarEventId;
    NSString* _joinWebUrl;
    MSGraphTeamworkUserIdentity* _organizer;
}
@end

@implementation MSGraphTeamworkOnlineMeetingInfo

- (NSString*) calendarEventId
{
    if([[NSNull null] isEqual:self.dictionary[@"calendarEventId"]])
    {
        return nil;
    }   
    return self.dictionary[@"calendarEventId"];
}

- (void) setCalendarEventId: (NSString*) val
{
    self.dictionary[@"calendarEventId"] = val;
}

- (NSString*) joinWebUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"joinWebUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"joinWebUrl"];
}

- (void) setJoinWebUrl: (NSString*) val
{
    self.dictionary[@"joinWebUrl"] = val;
}

- (MSGraphTeamworkUserIdentity*) organizer
{
    if(!_organizer){
        _organizer = [[MSGraphTeamworkUserIdentity alloc] initWithDictionary: self.dictionary[@"organizer"]];
    }
    return _organizer;
}

- (void) setOrganizer: (MSGraphTeamworkUserIdentity*) val
{
    _organizer = val;
    self.dictionary[@"organizer"] = val;
}

@end
