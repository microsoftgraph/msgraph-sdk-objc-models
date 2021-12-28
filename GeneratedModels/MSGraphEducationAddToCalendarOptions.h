// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationAddToCalendarOptionsValue){

	MSGraphEducationAddToCalendarOptionsNone = 0,
	MSGraphEducationAddToCalendarOptionsStudentsAndPublisher = 1,
	MSGraphEducationAddToCalendarOptionsStudentsAndTeamOwners = 2,
	MSGraphEducationAddToCalendarOptionsUnknownFutureValue = 3,
	MSGraphEducationAddToCalendarOptionsStudentsOnly = 4,
    MSGraphEducationAddToCalendarOptionsEndOfEnum
};

@interface MSGraphEducationAddToCalendarOptions : NSObject

+(MSGraphEducationAddToCalendarOptions*) none;
+(MSGraphEducationAddToCalendarOptions*) studentsAndPublisher;
+(MSGraphEducationAddToCalendarOptions*) studentsAndTeamOwners;
+(MSGraphEducationAddToCalendarOptions*) unknownFutureValue;
+(MSGraphEducationAddToCalendarOptions*) studentsOnly;

+(MSGraphEducationAddToCalendarOptions*) UnknownEnumValue;

+(MSGraphEducationAddToCalendarOptions*) educationAddToCalendarOptionsWithEnumValue:(MSGraphEducationAddToCalendarOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationAddToCalendarOptionsValue enumValue;

@end


@interface NSString (MSGraphEducationAddToCalendarOptions)

- (MSGraphEducationAddToCalendarOptions*) toMSGraphEducationAddToCalendarOptions;

@end
