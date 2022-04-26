// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphServiceHealthClassificationTypeValue){

	MSGraphServiceHealthClassificationTypeAdvisory = 1,
	MSGraphServiceHealthClassificationTypeIncident = 2,
	MSGraphServiceHealthClassificationTypeUnknownFutureValue = 3,
    MSGraphServiceHealthClassificationTypeEndOfEnum
};

@interface MSGraphServiceHealthClassificationType : NSObject

+(MSGraphServiceHealthClassificationType*) advisory;
+(MSGraphServiceHealthClassificationType*) incident;
+(MSGraphServiceHealthClassificationType*) unknownFutureValue;

+(MSGraphServiceHealthClassificationType*) UnknownEnumValue;

+(MSGraphServiceHealthClassificationType*) serviceHealthClassificationTypeWithEnumValue:(MSGraphServiceHealthClassificationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphServiceHealthClassificationTypeValue enumValue;

@end


@interface NSString (MSGraphServiceHealthClassificationType)

- (MSGraphServiceHealthClassificationType*) toMSGraphServiceHealthClassificationType;

@end
