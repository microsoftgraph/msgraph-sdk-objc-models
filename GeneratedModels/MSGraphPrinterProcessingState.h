// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrinterProcessingStateValue){

	MSGraphPrinterProcessingStateUnknown = 0,
	MSGraphPrinterProcessingStateIdle = 1,
	MSGraphPrinterProcessingStateProcessing = 2,
	MSGraphPrinterProcessingStateStopped = 3,
	MSGraphPrinterProcessingStateUnknownFutureValue = 4,
    MSGraphPrinterProcessingStateEndOfEnum
};

@interface MSGraphPrinterProcessingState : NSObject

+(MSGraphPrinterProcessingState*) unknown;
+(MSGraphPrinterProcessingState*) idle;
+(MSGraphPrinterProcessingState*) processing;
+(MSGraphPrinterProcessingState*) stopped;
+(MSGraphPrinterProcessingState*) unknownFutureValue;

+(MSGraphPrinterProcessingState*) UnknownEnumValue;

+(MSGraphPrinterProcessingState*) printerProcessingStateWithEnumValue:(MSGraphPrinterProcessingStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrinterProcessingStateValue enumValue;

@end


@interface NSString (MSGraphPrinterProcessingState)

- (MSGraphPrinterProcessingState*) toMSGraphPrinterProcessingState;

@end
