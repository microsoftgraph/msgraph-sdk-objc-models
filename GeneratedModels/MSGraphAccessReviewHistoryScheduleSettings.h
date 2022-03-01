// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPatternedRecurrence; 


#import "MSObject.h"

@interface MSGraphAccessReviewHistoryScheduleSettings : MSObject

@property (nonnull, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
@property (nonnull, nonatomic, setter=setReportRange:, getter=reportRange) NSString* reportRange;

@end
