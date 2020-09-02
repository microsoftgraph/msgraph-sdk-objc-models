// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 
#import "MSGraphRecordingStatus.h"


#import "MSObject.h"

@interface MSGraphRecordingInfo : MSObject

@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nonnull, nonatomic, setter=setRecordingStatus:, getter=recordingStatus) MSGraphRecordingStatus* recordingStatus;

@end
