// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintDuplexModeValue){

	MSGraphPrintDuplexModeFlipOnLongEdge = 0,
	MSGraphPrintDuplexModeFlipOnShortEdge = 1,
	MSGraphPrintDuplexModeOneSided = 2,
	MSGraphPrintDuplexModeUnknownFutureValue = 3,
    MSGraphPrintDuplexModeEndOfEnum
};

@interface MSGraphPrintDuplexMode : NSObject

+(MSGraphPrintDuplexMode*) flipOnLongEdge;
+(MSGraphPrintDuplexMode*) flipOnShortEdge;
+(MSGraphPrintDuplexMode*) oneSided;
+(MSGraphPrintDuplexMode*) unknownFutureValue;

+(MSGraphPrintDuplexMode*) UnknownEnumValue;

+(MSGraphPrintDuplexMode*) printDuplexModeWithEnumValue:(MSGraphPrintDuplexModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintDuplexModeValue enumValue;

@end


@interface NSString (MSGraphPrintDuplexMode)

- (MSGraphPrintDuplexMode*) toMSGraphPrintDuplexMode;

@end
