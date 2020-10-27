// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphItemBody, MSGraphDateTimeTimeZone, MSGraphPatternedRecurrence, MSGraphExtension, MSGraphLinkedResource; 
#import "MSGraphImportance.h"
#import "MSGraphTaskStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphTodoTask : MSGraphEntity

  @property (nullable, nonatomic, setter=setBody:, getter=body) MSGraphItemBody* body;
    @property (nonnull, nonatomic, setter=setBodyLastModifiedDateTime:, getter=bodyLastModifiedDateTime) NSDate* bodyLastModifiedDateTime;
    @property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) MSGraphDateTimeTimeZone* completedDateTime;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDueDateTime:, getter=dueDateTime) MSGraphDateTimeTimeZone* dueDateTime;
    @property (nonnull, nonatomic, setter=setImportance:, getter=importance) MSGraphImportance* importance;
    @property (nonatomic, setter=setIsReminderOn:, getter=isReminderOn) BOOL isReminderOn;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
    @property (nullable, nonatomic, setter=setReminderDateTime:, getter=reminderDateTime) MSGraphDateTimeTimeZone* reminderDateTime;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphTaskStatus* status;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
    @property (nullable, nonatomic, setter=setLinkedResources:, getter=linkedResources) NSArray* linkedResources;
  
@end
