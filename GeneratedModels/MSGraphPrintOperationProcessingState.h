// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintOperationProcessingStateValue){

	MSGraphPrintOperationProcessingStateNotStarted = 0,
	MSGraphPrintOperationProcessingStateRunning = 1,
	MSGraphPrintOperationProcessingStateSucceeded = 2,
	MSGraphPrintOperationProcessingStateFailed = 3,
	MSGraphPrintOperationProcessingStateUnknownFutureValue = 4,
    MSGraphPrintOperationProcessingStateEndOfEnum
};

@interface MSGraphPrintOperationProcessingState : NSObject

+(MSGraphPrintOperationProcessingState*) notStarted;
+(MSGraphPrintOperationProcessingState*) running;
+(MSGraphPrintOperationProcessingState*) succeeded;
+(MSGraphPrintOperationProcessingState*) failed;
+(MSGraphPrintOperationProcessingState*) unknownFutureValue;

+(MSGraphPrintOperationProcessingState*) UnknownEnumValue;

+(MSGraphPrintOperationProcessingState*) printOperationProcessingStateWithEnumValue:(MSGraphPrintOperationProcessingStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintOperationProcessingStateValue enumValue;

@end


@interface NSString (MSGraphPrintOperationProcessingState)

- (MSGraphPrintOperationProcessingState*) toMSGraphPrintOperationProcessingState;

@end
