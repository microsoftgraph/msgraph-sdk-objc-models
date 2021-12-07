// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphServiceUpdateCategoryValue){

	MSGraphServiceUpdateCategoryPreventOrFixIssue = 1,
	MSGraphServiceUpdateCategoryPlanForChange = 2,
	MSGraphServiceUpdateCategoryStayInformed = 3,
	MSGraphServiceUpdateCategoryUnknownFutureValue = 4,
    MSGraphServiceUpdateCategoryEndOfEnum
};

@interface MSGraphServiceUpdateCategory : NSObject

+(MSGraphServiceUpdateCategory*) preventOrFixIssue;
+(MSGraphServiceUpdateCategory*) planForChange;
+(MSGraphServiceUpdateCategory*) stayInformed;
+(MSGraphServiceUpdateCategory*) unknownFutureValue;

+(MSGraphServiceUpdateCategory*) UnknownEnumValue;

+(MSGraphServiceUpdateCategory*) serviceUpdateCategoryWithEnumValue:(MSGraphServiceUpdateCategoryValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphServiceUpdateCategoryValue enumValue;

@end


@interface NSString (MSGraphServiceUpdateCategory)

- (MSGraphServiceUpdateCategory*) toMSGraphServiceUpdateCategory;

@end
