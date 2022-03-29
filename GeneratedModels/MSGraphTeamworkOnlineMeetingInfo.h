// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphTeamworkUserIdentity; 


#import "MSObject.h"

@interface MSGraphTeamworkOnlineMeetingInfo : MSObject

@property (nullable, nonatomic, setter=setCalendarEventId:, getter=calendarEventId) NSString* calendarEventId;
@property (nullable, nonatomic, setter=setJoinWebUrl:, getter=joinWebUrl) NSString* joinWebUrl;
@property (nullable, nonatomic, setter=setOrganizer:, getter=organizer) MSGraphTeamworkUserIdentity* organizer;

@end
