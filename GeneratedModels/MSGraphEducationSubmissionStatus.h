// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationSubmissionStatusValue){

	MSGraphEducationSubmissionStatusWorking = 0,
	MSGraphEducationSubmissionStatusSubmitted = 1,
	MSGraphEducationSubmissionStatusReleased = 2,
	MSGraphEducationSubmissionStatusReturned = 3,
	MSGraphEducationSubmissionStatusUnknownFutureValue = 4,
	MSGraphEducationSubmissionStatusReassigned = 5,
    MSGraphEducationSubmissionStatusEndOfEnum
};

@interface MSGraphEducationSubmissionStatus : NSObject

+(MSGraphEducationSubmissionStatus*) working;
+(MSGraphEducationSubmissionStatus*) submitted;
+(MSGraphEducationSubmissionStatus*) released;
+(MSGraphEducationSubmissionStatus*) returned;
+(MSGraphEducationSubmissionStatus*) unknownFutureValue;
+(MSGraphEducationSubmissionStatus*) reassigned;

+(MSGraphEducationSubmissionStatus*) UnknownEnumValue;

+(MSGraphEducationSubmissionStatus*) educationSubmissionStatusWithEnumValue:(MSGraphEducationSubmissionStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationSubmissionStatusValue enumValue;

@end


@interface NSString (MSGraphEducationSubmissionStatus)

- (MSGraphEducationSubmissionStatus*) toMSGraphEducationSubmissionStatus;

@end
