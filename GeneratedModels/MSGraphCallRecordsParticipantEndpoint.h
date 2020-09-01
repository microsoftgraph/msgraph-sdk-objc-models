// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphCallRecordsUserFeedback, MSGraphIdentitySet; 


#import "MSGraphCallRecordsEndpoint.h"

@interface MSGraphCallRecordsParticipantEndpoint : MSGraphCallRecordsEndpoint

@property (nullable, nonatomic, setter=setFeedback:, getter=feedback) MSGraphCallRecordsUserFeedback* feedback;
@property (nullable, nonatomic, setter=setIdentity:, getter=identity) MSGraphIdentitySet* identity;

@end
