// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCall, MSGraphCallRecordsCallRecord, MSGraphOnlineMeeting, MSGraphPresence; 


#import "MSGraphEntity.h"

@interface MSGraphCloudCommunications : MSGraphEntity

  @property (nullable, nonatomic, setter=setCalls:, getter=calls) NSArray* calls;
    @property (nullable, nonatomic, setter=setCallRecords:, getter=callRecords) NSArray* callRecords;
    @property (nullable, nonatomic, setter=setOnlineMeetings:, getter=onlineMeetings) NSArray* onlineMeetings;
    @property (nullable, nonatomic, setter=setPresences:, getter=presences) NSArray* presences;
  
@end
