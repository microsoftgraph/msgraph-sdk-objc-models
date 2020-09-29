// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCall, MSGraphCallRecordsCallRecord, MSGraphOnlineMeeting; 


#import "MSObject.h"

@interface MSGraphCloudCommunications : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setCalls:, getter=calls) NSArray* calls;
    @property (nullable, nonatomic, setter=setCallRecords:, getter=callRecords) NSArray* callRecords;
    @property (nullable, nonatomic, setter=setOnlineMeetings:, getter=onlineMeetings) NSArray* onlineMeetings;
  
@end
