// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphServiceUpdateSeverityValue){

	MSGraphServiceUpdateSeverityNormal = 1,
	MSGraphServiceUpdateSeverityHigh = 2,
	MSGraphServiceUpdateSeverityCritical = 3,
	MSGraphServiceUpdateSeverityUnknownFutureValue = 4,
    MSGraphServiceUpdateSeverityEndOfEnum
};

@interface MSGraphServiceUpdateSeverity : NSObject

+(MSGraphServiceUpdateSeverity*) normal;
+(MSGraphServiceUpdateSeverity*) high;
+(MSGraphServiceUpdateSeverity*) critical;
+(MSGraphServiceUpdateSeverity*) unknownFutureValue;

+(MSGraphServiceUpdateSeverity*) UnknownEnumValue;

+(MSGraphServiceUpdateSeverity*) serviceUpdateSeverityWithEnumValue:(MSGraphServiceUpdateSeverityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphServiceUpdateSeverityValue enumValue;

@end


@interface NSString (MSGraphServiceUpdateSeverity)

- (MSGraphServiceUpdateSeverity*) toMSGraphServiceUpdateSeverity;

@end
