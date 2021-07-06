// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationAssignmentStatusValue){

	MSGraphEducationAssignmentStatusDraft = 0,
	MSGraphEducationAssignmentStatusPublished = 1,
	MSGraphEducationAssignmentStatusAssigned = 2,
	MSGraphEducationAssignmentStatusUnknownFutureValue = 3,
    MSGraphEducationAssignmentStatusEndOfEnum
};

@interface MSGraphEducationAssignmentStatus : NSObject

+(MSGraphEducationAssignmentStatus*) draft;
+(MSGraphEducationAssignmentStatus*) published;
+(MSGraphEducationAssignmentStatus*) assigned;
+(MSGraphEducationAssignmentStatus*) unknownFutureValue;

+(MSGraphEducationAssignmentStatus*) UnknownEnumValue;

+(MSGraphEducationAssignmentStatus*) educationAssignmentStatusWithEnumValue:(MSGraphEducationAssignmentStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationAssignmentStatusValue enumValue;

@end


@interface NSString (MSGraphEducationAssignmentStatus)

- (MSGraphEducationAssignmentStatus*) toMSGraphEducationAssignmentStatus;

@end
