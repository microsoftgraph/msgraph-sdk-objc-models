// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSTimeOfDay; 
#import "MSGraphEducationAddedStudentAction.h"


#import "MSGraphEntity.h"

@interface MSGraphEducationAssignmentDefaults : MSGraphEntity

  @property (nullable, nonatomic, setter=setAddedStudentAction:, getter=addedStudentAction) MSGraphEducationAddedStudentAction* addedStudentAction;
    @property (nullable, nonatomic, setter=setDueTime:, getter=dueTime) MSTimeOfDay* dueTime;
    @property (nullable, nonatomic, setter=setNotificationChannelUrl:, getter=notificationChannelUrl) NSString* notificationChannelUrl;
  
@end
