// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintJobProcessingStateValue){

	MSGraphPrintJobProcessingStateUnknown = 0,
	MSGraphPrintJobProcessingStatePending = 1,
	MSGraphPrintJobProcessingStateProcessing = 2,
	MSGraphPrintJobProcessingStatePaused = 3,
	MSGraphPrintJobProcessingStateStopped = 4,
	MSGraphPrintJobProcessingStateCompleted = 5,
	MSGraphPrintJobProcessingStateCanceled = 6,
	MSGraphPrintJobProcessingStateAborted = 7,
	MSGraphPrintJobProcessingStateUnknownFutureValue = 8,
    MSGraphPrintJobProcessingStateEndOfEnum
};

@interface MSGraphPrintJobProcessingState : NSObject

+(MSGraphPrintJobProcessingState*) unknown;
+(MSGraphPrintJobProcessingState*) pending;
+(MSGraphPrintJobProcessingState*) processing;
+(MSGraphPrintJobProcessingState*) paused;
+(MSGraphPrintJobProcessingState*) stopped;
+(MSGraphPrintJobProcessingState*) completed;
+(MSGraphPrintJobProcessingState*) canceled;
+(MSGraphPrintJobProcessingState*) aborted;
+(MSGraphPrintJobProcessingState*) unknownFutureValue;

+(MSGraphPrintJobProcessingState*) UnknownEnumValue;

+(MSGraphPrintJobProcessingState*) printJobProcessingStateWithEnumValue:(MSGraphPrintJobProcessingStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintJobProcessingStateValue enumValue;

@end


@interface NSString (MSGraphPrintJobProcessingState)

- (MSGraphPrintJobProcessingState*) toMSGraphPrintJobProcessingState;

@end
