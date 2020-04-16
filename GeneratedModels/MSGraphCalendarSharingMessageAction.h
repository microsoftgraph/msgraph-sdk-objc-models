// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarSharingActionImportance.h"
#import "MSGraphCalendarSharingActionType.h"
#import "MSGraphCalendarSharingAction.h"


#import "MSObject.h"

@interface MSGraphCalendarSharingMessageAction : MSObject

@property (nullable, nonatomic, setter=setImportance:, getter=importance) MSGraphCalendarSharingActionImportance* importance;
@property (nullable, nonatomic, setter=setActionType:, getter=actionType) MSGraphCalendarSharingActionType* actionType;
@property (nullable, nonatomic, setter=setAction:, getter=action) MSGraphCalendarSharingAction* action;

@end
