// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarSharingAction.h"
#import "MSGraphCalendarSharingActionType.h"
#import "MSGraphCalendarSharingActionImportance.h"


#import "MSObject.h"

@interface MSGraphCalendarSharingMessageAction : MSObject

@property (nullable, nonatomic, setter=setAction:, getter=action) MSGraphCalendarSharingAction* action;
@property (nullable, nonatomic, setter=setActionType:, getter=actionType) MSGraphCalendarSharingActionType* actionType;
@property (nullable, nonatomic, setter=setImportance:, getter=importance) MSGraphCalendarSharingActionImportance* importance;

@end
