// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphScheduleChangeRequestActor.h"
#import "MSGraphScheduleChangeState.h"


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphScheduleChangeRequest : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setAssignedTo:, getter=assignedTo) MSGraphScheduleChangeRequestActor* assignedTo;
    @property (nullable, nonatomic, setter=setManagerActionDateTime:, getter=managerActionDateTime) NSDate* managerActionDateTime;
    @property (nullable, nonatomic, setter=setManagerActionMessage:, getter=managerActionMessage) NSString* managerActionMessage;
    @property (nullable, nonatomic, setter=setManagerUserId:, getter=managerUserId) NSString* managerUserId;
    @property (nullable, nonatomic, setter=setSenderDateTime:, getter=senderDateTime) NSDate* senderDateTime;
    @property (nullable, nonatomic, setter=setSenderMessage:, getter=senderMessage) NSString* senderMessage;
    @property (nullable, nonatomic, setter=setSenderUserId:, getter=senderUserId) NSString* senderUserId;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphScheduleChangeState* state;
  
@end
