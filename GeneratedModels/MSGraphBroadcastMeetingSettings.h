// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBroadcastMeetingAudience.h"


#import "MSObject.h"

@interface MSGraphBroadcastMeetingSettings : MSObject

@property (nullable, nonatomic, setter=setAllowedAudience:, getter=allowedAudience) MSGraphBroadcastMeetingAudience* allowedAudience;
@property (nonatomic, setter=setIsAttendeeReportEnabled:, getter=isAttendeeReportEnabled) BOOL isAttendeeReportEnabled;
@property (nonatomic, setter=setIsQuestionAndAnswerEnabled:, getter=isQuestionAndAnswerEnabled) BOOL isQuestionAndAnswerEnabled;
@property (nonatomic, setter=setIsRecordingEnabled:, getter=isRecordingEnabled) BOOL isRecordingEnabled;
@property (nonatomic, setter=setIsVideoOnDemandEnabled:, getter=isVideoOnDemandEnabled) BOOL isVideoOnDemandEnabled;

@end
