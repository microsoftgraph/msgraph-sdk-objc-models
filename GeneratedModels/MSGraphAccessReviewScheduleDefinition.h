// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserIdentity, MSGraphAccessReviewReviewerScope, MSGraphAccessReviewScope, MSGraphAccessReviewScheduleSettings, MSGraphAccessReviewInstance; 


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewScheduleDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphUserIdentity* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDescriptionForAdmins:, getter=descriptionForAdmins) NSString* descriptionForAdmins;
    @property (nullable, nonatomic, setter=setDescriptionForReviewers:, getter=descriptionForReviewers) NSString* descriptionForReviewers;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setFallbackReviewers:, getter=fallbackReviewers) NSArray* fallbackReviewers;
    @property (nullable, nonatomic, setter=setInstanceEnumerationScope:, getter=instanceEnumerationScope) MSGraphAccessReviewScope* instanceEnumerationScope;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setReviewers:, getter=reviewers) NSArray* reviewers;
    @property (nullable, nonatomic, setter=setScope:, getter=scope) MSGraphAccessReviewScope* scope;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphAccessReviewScheduleSettings* settings;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;
    @property (nullable, nonatomic, setter=setInstances:, getter=instances) NSArray* instances;
  
@end
