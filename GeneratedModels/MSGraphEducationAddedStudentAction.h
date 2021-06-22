// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationAddedStudentActionValue){

	MSGraphEducationAddedStudentActionNone = 0,
	MSGraphEducationAddedStudentActionAssignIfOpen = 1,
	MSGraphEducationAddedStudentActionUnknownFutureValue = 2,
    MSGraphEducationAddedStudentActionEndOfEnum
};

@interface MSGraphEducationAddedStudentAction : NSObject

+(MSGraphEducationAddedStudentAction*) none;
+(MSGraphEducationAddedStudentAction*) assignIfOpen;
+(MSGraphEducationAddedStudentAction*) unknownFutureValue;

+(MSGraphEducationAddedStudentAction*) UnknownEnumValue;

+(MSGraphEducationAddedStudentAction*) educationAddedStudentActionWithEnumValue:(MSGraphEducationAddedStudentActionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationAddedStudentActionValue enumValue;

@end


@interface NSString (MSGraphEducationAddedStudentAction)

- (MSGraphEducationAddedStudentAction*) toMSGraphEducationAddedStudentAction;

@end
