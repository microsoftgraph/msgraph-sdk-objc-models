// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintEventValue){

	MSGraphPrintEventJobStarted = 0,
	MSGraphPrintEventUnknownFutureValue = 1,
    MSGraphPrintEventEndOfEnum
};

@interface MSGraphPrintEvent : NSObject

+(MSGraphPrintEvent*) jobStarted;
+(MSGraphPrintEvent*) unknownFutureValue;

+(MSGraphPrintEvent*) UnknownEnumValue;

+(MSGraphPrintEvent*) printEventWithEnumValue:(MSGraphPrintEventValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintEventValue enumValue;

@end


@interface NSString (MSGraphPrintEvent)

- (MSGraphPrintEvent*) toMSGraphPrintEvent;

@end
