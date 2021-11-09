// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryCaseOperationStatusValue){

	MSGraphEdiscoveryCaseOperationStatusNotStarted = 0,
	MSGraphEdiscoveryCaseOperationStatusSubmissionFailed = 1,
	MSGraphEdiscoveryCaseOperationStatusRunning = 2,
	MSGraphEdiscoveryCaseOperationStatusSucceeded = 3,
	MSGraphEdiscoveryCaseOperationStatusPartiallySucceeded = 4,
	MSGraphEdiscoveryCaseOperationStatusFailed = 5,
    MSGraphEdiscoveryCaseOperationStatusEndOfEnum
};

@interface MSGraphEdiscoveryCaseOperationStatus : NSObject

+(MSGraphEdiscoveryCaseOperationStatus*) notStarted;
+(MSGraphEdiscoveryCaseOperationStatus*) submissionFailed;
+(MSGraphEdiscoveryCaseOperationStatus*) running;
+(MSGraphEdiscoveryCaseOperationStatus*) succeeded;
+(MSGraphEdiscoveryCaseOperationStatus*) partiallySucceeded;
+(MSGraphEdiscoveryCaseOperationStatus*) failed;

+(MSGraphEdiscoveryCaseOperationStatus*) UnknownEnumValue;

+(MSGraphEdiscoveryCaseOperationStatus*) caseOperationStatusWithEnumValue:(MSGraphEdiscoveryCaseOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryCaseOperationStatusValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryCaseOperationStatus)

- (MSGraphEdiscoveryCaseOperationStatus*) toMSGraphEdiscoveryCaseOperationStatus;

@end
