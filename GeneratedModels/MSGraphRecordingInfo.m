// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecordingInfo()
{
    MSGraphRecordingStatus* _recordingStatus;
    MSGraphIdentitySet* _initiator;
}
@end

@implementation MSGraphRecordingInfo

- (MSGraphRecordingStatus*) recordingStatus
{
    if(!_recordingStatus){
        _recordingStatus = [self.dictionary[@"recordingStatus"] toMSGraphRecordingStatus];
    }
    return _recordingStatus;
}

- (void) setRecordingStatus: (MSGraphRecordingStatus*) val
{
    _recordingStatus = val;
    self.dictionary[@"recordingStatus"] = val;
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
