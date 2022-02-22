// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphItemBody, MSGraphServiceUpdateMessageViewpoint, MSGraphServiceAnnouncementAttachment; 
#import "MSGraphServiceUpdateCategory.h"
#import "MSGraphServiceUpdateSeverity.h"


#import "MSGraphServiceAnnouncementBase.h"

@interface MSGraphServiceUpdateMessage : MSGraphServiceAnnouncementBase

  @property (nullable, nonatomic, setter=setActionRequiredByDateTime:, getter=actionRequiredByDateTime) NSDate* actionRequiredByDateTime;
    @property (nonnull, nonatomic, setter=setBody:, getter=body) MSGraphItemBody* body;
    @property (nonnull, nonatomic, setter=setCategory:, getter=category) MSGraphServiceUpdateCategory* category;
    @property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
    @property (nonatomic, setter=setIsMajorChange:, getter=isMajorChange) BOOL isMajorChange;
    @property (nullable, nonatomic, setter=setServices:, getter=services) NSArray* services;
    @property (nonnull, nonatomic, setter=setSeverity:, getter=severity) MSGraphServiceUpdateSeverity* severity;
    @property (nullable, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
    @property (nullable, nonatomic, setter=setViewPoint:, getter=viewPoint) MSGraphServiceUpdateMessageViewpoint* viewPoint;
    @property (nullable, nonatomic, setter=setAttachments:, getter=attachments) NSArray* attachments;
  
@end
