// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessReviewReviewerScope; 


#import "MSGraphEntity.h"

@interface MSGraphAdminConsentRequestPolicy : MSGraphEntity

  @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
    @property (nonatomic, setter=setNotifyReviewers:, getter=notifyReviewers) BOOL notifyReviewers;
    @property (nonatomic, setter=setRemindersEnabled:, getter=remindersEnabled) BOOL remindersEnabled;
    @property (nonatomic, setter=setRequestDurationInDays:, getter=requestDurationInDays) int32_t requestDurationInDays;
    @property (nullable, nonatomic, setter=setReviewers:, getter=reviewers) NSArray* reviewers;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
  
@end
