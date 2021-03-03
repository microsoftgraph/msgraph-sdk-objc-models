// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintTaskProcessingStateValue){

	MSGraphPrintTaskProcessingStatePending = 0,
	MSGraphPrintTaskProcessingStateProcessing = 1,
	MSGraphPrintTaskProcessingStateCompleted = 2,
	MSGraphPrintTaskProcessingStateAborted = 3,
	MSGraphPrintTaskProcessingStateUnknownFutureValue = 4,
    MSGraphPrintTaskProcessingStateEndOfEnum
};

@interface MSGraphPrintTaskProcessingState : NSObject

+(MSGraphPrintTaskProcessingState*) pending;
+(MSGraphPrintTaskProcessingState*) processing;
+(MSGraphPrintTaskProcessingState*) completed;
+(MSGraphPrintTaskProcessingState*) aborted;
+(MSGraphPrintTaskProcessingState*) unknownFutureValue;

+(MSGraphPrintTaskProcessingState*) UnknownEnumValue;

+(MSGraphPrintTaskProcessingState*) printTaskProcessingStateWithEnumValue:(MSGraphPrintTaskProcessingStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintTaskProcessingStateValue enumValue;

@end


@interface NSString (MSGraphPrintTaskProcessingState)

- (MSGraphPrintTaskProcessingState*) toMSGraphPrintTaskProcessingState;

@end
