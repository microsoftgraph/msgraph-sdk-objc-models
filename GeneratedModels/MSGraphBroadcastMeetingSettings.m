// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBroadcastMeetingSettings()
{
    MSGraphBroadcastMeetingAudience* _allowedAudience;
    BOOL _isAttendeeReportEnabled;
    BOOL _isQuestionAndAnswerEnabled;
    BOOL _isRecordingEnabled;
    BOOL _isVideoOnDemandEnabled;
}
@end

@implementation MSGraphBroadcastMeetingSettings

- (MSGraphBroadcastMeetingAudience*) allowedAudience
{
    if(!_allowedAudience){
        _allowedAudience = [self.dictionary[@"allowedAudience"] toMSGraphBroadcastMeetingAudience];
    }
    return _allowedAudience;
}

- (void) setAllowedAudience: (MSGraphBroadcastMeetingAudience*) val
{
    _allowedAudience = val;
    self.dictionary[@"allowedAudience"] = val;
}

- (BOOL) isAttendeeReportEnabled
{
    _isAttendeeReportEnabled = [self.dictionary[@"isAttendeeReportEnabled"] boolValue];
    return _isAttendeeReportEnabled;
}

- (void) setIsAttendeeReportEnabled: (BOOL) val
{
    _isAttendeeReportEnabled = val;
    self.dictionary[@"isAttendeeReportEnabled"] = @(val);
}

- (BOOL) isQuestionAndAnswerEnabled
{
    _isQuestionAndAnswerEnabled = [self.dictionary[@"isQuestionAndAnswerEnabled"] boolValue];
    return _isQuestionAndAnswerEnabled;
}

- (void) setIsQuestionAndAnswerEnabled: (BOOL) val
{
    _isQuestionAndAnswerEnabled = val;
    self.dictionary[@"isQuestionAndAnswerEnabled"] = @(val);
}

- (BOOL) isRecordingEnabled
{
    _isRecordingEnabled = [self.dictionary[@"isRecordingEnabled"] boolValue];
    return _isRecordingEnabled;
}

- (void) setIsRecordingEnabled: (BOOL) val
{
    _isRecordingEnabled = val;
    self.dictionary[@"isRecordingEnabled"] = @(val);
}

- (BOOL) isVideoOnDemandEnabled
{
    _isVideoOnDemandEnabled = [self.dictionary[@"isVideoOnDemandEnabled"] boolValue];
    return _isVideoOnDemandEnabled;
}

- (void) setIsVideoOnDemandEnabled: (BOOL) val
{
    _isVideoOnDemandEnabled = val;
    self.dictionary[@"isVideoOnDemandEnabled"] = @(val);
}

@end
