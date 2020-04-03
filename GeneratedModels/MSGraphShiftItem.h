// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphShiftActivity; 


#import "MSGraphScheduleEntity.h"

@interface MSGraphShiftItem : MSGraphScheduleEntity

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setNotes:, getter=notes) NSString* notes;
@property (nullable, nonatomic, setter=setActivities:, getter=activities) NSArray* activities;

@end
