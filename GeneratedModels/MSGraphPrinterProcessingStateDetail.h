// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrinterProcessingStateDetailValue){

	MSGraphPrinterProcessingStateDetailPaused = 0,
	MSGraphPrinterProcessingStateDetailMediaJam = 2,
	MSGraphPrinterProcessingStateDetailMediaNeeded = 3,
	MSGraphPrinterProcessingStateDetailMediaLow = 4,
	MSGraphPrinterProcessingStateDetailMediaEmpty = 5,
	MSGraphPrinterProcessingStateDetailCoverOpen = 6,
	MSGraphPrinterProcessingStateDetailInterlockOpen = 7,
	MSGraphPrinterProcessingStateDetailOutputTrayMissing = 9,
	MSGraphPrinterProcessingStateDetailOutputAreaFull = 10,
	MSGraphPrinterProcessingStateDetailMarkerSupplyLow = 11,
	MSGraphPrinterProcessingStateDetailMarkerSupplyEmpty = 12,
	MSGraphPrinterProcessingStateDetailInputTrayMissing = 13,
	MSGraphPrinterProcessingStateDetailOutputAreaAlmostFull = 14,
	MSGraphPrinterProcessingStateDetailMarkerWasteAlmostFull = 15,
	MSGraphPrinterProcessingStateDetailMarkerWasteFull = 16,
	MSGraphPrinterProcessingStateDetailFuserOverTemp = 17,
	MSGraphPrinterProcessingStateDetailFuserUnderTemp = 18,
	MSGraphPrinterProcessingStateDetailOther = 19,
	MSGraphPrinterProcessingStateDetailNone = 20,
	MSGraphPrinterProcessingStateDetailMovingToPaused = 21,
	MSGraphPrinterProcessingStateDetailShutdown = 22,
	MSGraphPrinterProcessingStateDetailConnectingToDevice = 23,
	MSGraphPrinterProcessingStateDetailTimedOut = 24,
	MSGraphPrinterProcessingStateDetailStopping = 25,
	MSGraphPrinterProcessingStateDetailStoppedPartially = 26,
	MSGraphPrinterProcessingStateDetailTonerLow = 27,
	MSGraphPrinterProcessingStateDetailTonerEmpty = 28,
	MSGraphPrinterProcessingStateDetailSpoolAreaFull = 29,
	MSGraphPrinterProcessingStateDetailDoorOpen = 30,
	MSGraphPrinterProcessingStateDetailOpticalPhotoConductorNearEndOfLife = 31,
	MSGraphPrinterProcessingStateDetailOpticalPhotoConductorLifeOver = 32,
	MSGraphPrinterProcessingStateDetailDeveloperLow = 33,
	MSGraphPrinterProcessingStateDetailDeveloperEmpty = 34,
	MSGraphPrinterProcessingStateDetailInterpreterResourceUnavailable = 35,
	MSGraphPrinterProcessingStateDetailUnknownFutureValue = 36,
    MSGraphPrinterProcessingStateDetailEndOfEnum
};

@interface MSGraphPrinterProcessingStateDetail : NSObject

+(MSGraphPrinterProcessingStateDetail*) paused;
+(MSGraphPrinterProcessingStateDetail*) mediaJam;
+(MSGraphPrinterProcessingStateDetail*) mediaNeeded;
+(MSGraphPrinterProcessingStateDetail*) mediaLow;
+(MSGraphPrinterProcessingStateDetail*) mediaEmpty;
+(MSGraphPrinterProcessingStateDetail*) coverOpen;
+(MSGraphPrinterProcessingStateDetail*) interlockOpen;
+(MSGraphPrinterProcessingStateDetail*) outputTrayMissing;
+(MSGraphPrinterProcessingStateDetail*) outputAreaFull;
+(MSGraphPrinterProcessingStateDetail*) markerSupplyLow;
+(MSGraphPrinterProcessingStateDetail*) markerSupplyEmpty;
+(MSGraphPrinterProcessingStateDetail*) inputTrayMissing;
+(MSGraphPrinterProcessingStateDetail*) outputAreaAlmostFull;
+(MSGraphPrinterProcessingStateDetail*) markerWasteAlmostFull;
+(MSGraphPrinterProcessingStateDetail*) markerWasteFull;
+(MSGraphPrinterProcessingStateDetail*) fuserOverTemp;
+(MSGraphPrinterProcessingStateDetail*) fuserUnderTemp;
+(MSGraphPrinterProcessingStateDetail*) other;
+(MSGraphPrinterProcessingStateDetail*) none;
+(MSGraphPrinterProcessingStateDetail*) movingToPaused;
+(MSGraphPrinterProcessingStateDetail*) shutdown;
+(MSGraphPrinterProcessingStateDetail*) connectingToDevice;
+(MSGraphPrinterProcessingStateDetail*) timedOut;
+(MSGraphPrinterProcessingStateDetail*) stopping;
+(MSGraphPrinterProcessingStateDetail*) stoppedPartially;
+(MSGraphPrinterProcessingStateDetail*) tonerLow;
+(MSGraphPrinterProcessingStateDetail*) tonerEmpty;
+(MSGraphPrinterProcessingStateDetail*) spoolAreaFull;
+(MSGraphPrinterProcessingStateDetail*) doorOpen;
+(MSGraphPrinterProcessingStateDetail*) opticalPhotoConductorNearEndOfLife;
+(MSGraphPrinterProcessingStateDetail*) opticalPhotoConductorLifeOver;
+(MSGraphPrinterProcessingStateDetail*) developerLow;
+(MSGraphPrinterProcessingStateDetail*) developerEmpty;
+(MSGraphPrinterProcessingStateDetail*) interpreterResourceUnavailable;
+(MSGraphPrinterProcessingStateDetail*) unknownFutureValue;

+(MSGraphPrinterProcessingStateDetail*) UnknownEnumValue;

+(MSGraphPrinterProcessingStateDetail*) printerProcessingStateDetailWithEnumValue:(MSGraphPrinterProcessingStateDetailValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrinterProcessingStateDetailValue enumValue;

@end


@interface NSString (MSGraphPrinterProcessingStateDetail)

- (MSGraphPrinterProcessingStateDetail*) toMSGraphPrinterProcessingStateDetail;

@end
