// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphServiceHealthIssuePost; 
#import "MSGraphServiceHealthClassificationType.h"
#import "MSGraphServiceHealthOrigin.h"
#import "MSGraphServiceHealthStatus.h"


#import "MSGraphServiceAnnouncementBase.h"

@interface MSGraphServiceHealthIssue : MSGraphServiceAnnouncementBase

  @property (nonnull, nonatomic, setter=setClassification:, getter=classification) MSGraphServiceHealthClassificationType* classification;
    @property (nullable, nonatomic, setter=setFeature:, getter=feature) NSString* feature;
    @property (nullable, nonatomic, setter=setFeatureGroup:, getter=featureGroup) NSString* featureGroup;
    @property (nonnull, nonatomic, setter=setImpactDescription:, getter=impactDescription) NSString* impactDescription;
    @property (nonatomic, setter=setIsResolved:, getter=isResolved) BOOL isResolved;
    @property (nonnull, nonatomic, setter=setOrigin:, getter=origin) MSGraphServiceHealthOrigin* origin;
    @property (nonnull, nonatomic, setter=setPosts:, getter=posts) NSArray* posts;
    @property (nonnull, nonatomic, setter=setService:, getter=service) NSString* service;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphServiceHealthStatus* status;
  
@end
