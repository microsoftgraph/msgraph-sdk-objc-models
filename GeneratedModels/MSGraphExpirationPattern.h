// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 
#import "MSGraphExpirationPatternType.h"


#import "MSObject.h"

@interface MSGraphExpirationPattern : MSObject

@property (nullable, nonatomic, setter=setDuration:, getter=duration) MSDuration* duration;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setType:, getter=type) MSGraphExpirationPatternType* type;

@end
