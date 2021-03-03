// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrintFinishingValue){

	MSGraphPrintFinishingNone = 3,
	MSGraphPrintFinishingStaple = 4,
	MSGraphPrintFinishingPunch = 5,
	MSGraphPrintFinishingCover = 6,
	MSGraphPrintFinishingBind = 7,
	MSGraphPrintFinishingSaddleStitch = 8,
	MSGraphPrintFinishingStitchEdge = 9,
	MSGraphPrintFinishingStapleTopLeft = 20,
	MSGraphPrintFinishingStapleBottomLeft = 21,
	MSGraphPrintFinishingStapleTopRight = 22,
	MSGraphPrintFinishingStapleBottomRight = 23,
	MSGraphPrintFinishingStitchLeftEdge = 24,
	MSGraphPrintFinishingStitchTopEdge = 25,
	MSGraphPrintFinishingStitchRightEdge = 26,
	MSGraphPrintFinishingStitchBottomEdge = 27,
	MSGraphPrintFinishingStapleDualLeft = 28,
	MSGraphPrintFinishingStapleDualTop = 29,
	MSGraphPrintFinishingStapleDualRight = 30,
	MSGraphPrintFinishingStapleDualBottom = 31,
	MSGraphPrintFinishingUnknownFutureValue = 32,
    MSGraphPrintFinishingEndOfEnum
};

@interface MSGraphPrintFinishing : NSObject

+(MSGraphPrintFinishing*) none;
+(MSGraphPrintFinishing*) staple;
+(MSGraphPrintFinishing*) punch;
+(MSGraphPrintFinishing*) cover;
+(MSGraphPrintFinishing*) bind;
+(MSGraphPrintFinishing*) saddleStitch;
+(MSGraphPrintFinishing*) stitchEdge;
+(MSGraphPrintFinishing*) stapleTopLeft;
+(MSGraphPrintFinishing*) stapleBottomLeft;
+(MSGraphPrintFinishing*) stapleTopRight;
+(MSGraphPrintFinishing*) stapleBottomRight;
+(MSGraphPrintFinishing*) stitchLeftEdge;
+(MSGraphPrintFinishing*) stitchTopEdge;
+(MSGraphPrintFinishing*) stitchRightEdge;
+(MSGraphPrintFinishing*) stitchBottomEdge;
+(MSGraphPrintFinishing*) stapleDualLeft;
+(MSGraphPrintFinishing*) stapleDualTop;
+(MSGraphPrintFinishing*) stapleDualRight;
+(MSGraphPrintFinishing*) stapleDualBottom;
+(MSGraphPrintFinishing*) unknownFutureValue;

+(MSGraphPrintFinishing*) UnknownEnumValue;

+(MSGraphPrintFinishing*) printFinishingWithEnumValue:(MSGraphPrintFinishingValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrintFinishingValue enumValue;

@end


@interface NSString (MSGraphPrintFinishing)

- (MSGraphPrintFinishing*) toMSGraphPrintFinishing;

@end
