// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphExpirationPattern, MSGraphPatternedRecurrence; 


#import "MSObject.h"

@interface MSGraphRequestSchedule : MSObject

@property (nullable, nonatomic, setter=setExpiration:, getter=expiration) MSGraphExpirationPattern* expiration;
@property (nullable, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;

@end
