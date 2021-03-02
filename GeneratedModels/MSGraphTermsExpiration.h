// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 


#import "MSObject.h"

@interface MSGraphTermsExpiration : MSObject

@property (nullable, nonatomic, setter=setFrequency:, getter=frequency) MSDuration* frequency;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;

@end
