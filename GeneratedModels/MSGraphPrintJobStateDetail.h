// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintJobStateDetailValue){

	MSGraphPrintJobStateDetailUploadPending = 0,
	MSGraphPrintJobStateDetailTransforming = 1,
	MSGraphPrintJobStateDetailCompletedSuccessfully = 2,
	MSGraphPrintJobStateDetailCompletedWithWarnings = 3,
	MSGraphPrintJobStateDetailCompletedWithErrors = 4,
	MSGraphPrintJobStateDetailReleaseWait = 5,
	MSGraphPrintJobStateDetailInterpreting = 6,
	MSGraphPrintJobStateDetailUnknownFutureValue = 7,
    MSGraphPrintJobStateDetailEndOfEnum
};

@interface MSGraphPrintJobStateDetail : NSObject

+(MSGraphPrintJobStateDetail*) uploadPending;
+(MSGraphPrintJobStateDetail*) transforming;
+(MSGraphPrintJobStateDetail*) completedSuccessfully;
+(MSGraphPrintJobStateDetail*) completedWithWarnings;
+(MSGraphPrintJobStateDetail*) completedWithErrors;
+(MSGraphPrintJobStateDetail*) releaseWait;
+(MSGraphPrintJobStateDetail*) interpreting;
+(MSGraphPrintJobStateDetail*) unknownFutureValue;

+(MSGraphPrintJobStateDetail*) UnknownEnumValue;

+(MSGraphPrintJobStateDetail*) printJobStateDetailWithEnumValue:(MSGraphPrintJobStateDetailValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintJobStateDetailValue enumValue;

@end


@interface NSString (MSGraphPrintJobStateDetail)

- (MSGraphPrintJobStateDetail*) toMSGraphPrintJobStateDetail;

@end
