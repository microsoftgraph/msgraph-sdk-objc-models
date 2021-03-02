// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrinterProcessingStateDetail.h"

@interface MSGraphPrinterProcessingStateDetail () {
    MSGraphPrinterProcessingStateDetailValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrinterProcessingStateDetailValue enumValue;
@end

@implementation MSGraphPrinterProcessingStateDetail

+ (MSGraphPrinterProcessingStateDetail*) paused {
    static MSGraphPrinterProcessingStateDetail *_paused;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _paused = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _paused.enumValue = MSGraphPrinterProcessingStateDetailPaused;
    });
    return _paused;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaJam {
    static MSGraphPrinterProcessingStateDetail *_mediaJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaJam.enumValue = MSGraphPrinterProcessingStateDetailMediaJam;
    });
    return _mediaJam;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaNeeded {
    static MSGraphPrinterProcessingStateDetail *_mediaNeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaNeeded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaNeeded.enumValue = MSGraphPrinterProcessingStateDetailMediaNeeded;
    });
    return _mediaNeeded;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaLow {
    static MSGraphPrinterProcessingStateDetail *_mediaLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaLow.enumValue = MSGraphPrinterProcessingStateDetailMediaLow;
    });
    return _mediaLow;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaEmpty {
    static MSGraphPrinterProcessingStateDetail *_mediaEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaEmpty.enumValue = MSGraphPrinterProcessingStateDetailMediaEmpty;
    });
    return _mediaEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) coverOpen {
    static MSGraphPrinterProcessingStateDetail *_coverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _coverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _coverOpen.enumValue = MSGraphPrinterProcessingStateDetailCoverOpen;
    });
    return _coverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) interlockOpen {
    static MSGraphPrinterProcessingStateDetail *_interlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interlockOpen.enumValue = MSGraphPrinterProcessingStateDetailInterlockOpen;
    });
    return _interlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) outputTrayMissing {
    static MSGraphPrinterProcessingStateDetail *_outputTrayMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputTrayMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputTrayMissing.enumValue = MSGraphPrinterProcessingStateDetailOutputTrayMissing;
    });
    return _outputTrayMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) outputAreaFull {
    static MSGraphPrinterProcessingStateDetail *_outputAreaFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputAreaFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputAreaFull.enumValue = MSGraphPrinterProcessingStateDetailOutputAreaFull;
    });
    return _outputAreaFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerSupplyLow {
    static MSGraphPrinterProcessingStateDetail *_markerSupplyLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerSupplyLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerSupplyLow.enumValue = MSGraphPrinterProcessingStateDetailMarkerSupplyLow;
    });
    return _markerSupplyLow;
}
+ (MSGraphPrinterProcessingStateDetail*) markerSupplyEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerSupplyEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerSupplyEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerSupplyEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerSupplyEmpty;
    });
    return _markerSupplyEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) inputTrayMissing {
    static MSGraphPrinterProcessingStateDetail *_inputTrayMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputTrayMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputTrayMissing.enumValue = MSGraphPrinterProcessingStateDetailInputTrayMissing;
    });
    return _inputTrayMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) outputAreaAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_outputAreaAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputAreaAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputAreaAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailOutputAreaAlmostFull;
    });
    return _outputAreaAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_markerWasteAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteAlmostFull;
    });
    return _markerWasteAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteFull {
    static MSGraphPrinterProcessingStateDetail *_markerWasteFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteFull.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteFull;
    });
    return _markerWasteFull;
}
+ (MSGraphPrinterProcessingStateDetail*) fuserOverTemp {
    static MSGraphPrinterProcessingStateDetail *_fuserOverTemp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fuserOverTemp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _fuserOverTemp.enumValue = MSGraphPrinterProcessingStateDetailFuserOverTemp;
    });
    return _fuserOverTemp;
}
+ (MSGraphPrinterProcessingStateDetail*) fuserUnderTemp {
    static MSGraphPrinterProcessingStateDetail *_fuserUnderTemp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fuserUnderTemp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _fuserUnderTemp.enumValue = MSGraphPrinterProcessingStateDetailFuserUnderTemp;
    });
    return _fuserUnderTemp;
}
+ (MSGraphPrinterProcessingStateDetail*) other {
    static MSGraphPrinterProcessingStateDetail *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _other.enumValue = MSGraphPrinterProcessingStateDetailOther;
    });
    return _other;
}
+ (MSGraphPrinterProcessingStateDetail*) none {
    static MSGraphPrinterProcessingStateDetail *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _none.enumValue = MSGraphPrinterProcessingStateDetailNone;
    });
    return _none;
}
+ (MSGraphPrinterProcessingStateDetail*) movingToPaused {
    static MSGraphPrinterProcessingStateDetail *_movingToPaused;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _movingToPaused = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _movingToPaused.enumValue = MSGraphPrinterProcessingStateDetailMovingToPaused;
    });
    return _movingToPaused;
}
+ (MSGraphPrinterProcessingStateDetail*) shutdown {
    static MSGraphPrinterProcessingStateDetail *_shutdown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shutdown = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _shutdown.enumValue = MSGraphPrinterProcessingStateDetailShutdown;
    });
    return _shutdown;
}
+ (MSGraphPrinterProcessingStateDetail*) connectingToDevice {
    static MSGraphPrinterProcessingStateDetail *_connectingToDevice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _connectingToDevice = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _connectingToDevice.enumValue = MSGraphPrinterProcessingStateDetailConnectingToDevice;
    });
    return _connectingToDevice;
}
+ (MSGraphPrinterProcessingStateDetail*) timedOut {
    static MSGraphPrinterProcessingStateDetail *_timedOut;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _timedOut = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _timedOut.enumValue = MSGraphPrinterProcessingStateDetailTimedOut;
    });
    return _timedOut;
}
+ (MSGraphPrinterProcessingStateDetail*) stopping {
    static MSGraphPrinterProcessingStateDetail *_stopping;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stopping = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stopping.enumValue = MSGraphPrinterProcessingStateDetailStopping;
    });
    return _stopping;
}
+ (MSGraphPrinterProcessingStateDetail*) stoppedPartially {
    static MSGraphPrinterProcessingStateDetail *_stoppedPartially;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stoppedPartially = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stoppedPartially.enumValue = MSGraphPrinterProcessingStateDetailStoppedPartially;
    });
    return _stoppedPartially;
}
+ (MSGraphPrinterProcessingStateDetail*) tonerLow {
    static MSGraphPrinterProcessingStateDetail *_tonerLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tonerLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _tonerLow.enumValue = MSGraphPrinterProcessingStateDetailTonerLow;
    });
    return _tonerLow;
}
+ (MSGraphPrinterProcessingStateDetail*) tonerEmpty {
    static MSGraphPrinterProcessingStateDetail *_tonerEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tonerEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _tonerEmpty.enumValue = MSGraphPrinterProcessingStateDetailTonerEmpty;
    });
    return _tonerEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) spoolAreaFull {
    static MSGraphPrinterProcessingStateDetail *_spoolAreaFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _spoolAreaFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _spoolAreaFull.enumValue = MSGraphPrinterProcessingStateDetailSpoolAreaFull;
    });
    return _spoolAreaFull;
}
+ (MSGraphPrinterProcessingStateDetail*) doorOpen {
    static MSGraphPrinterProcessingStateDetail *_doorOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _doorOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _doorOpen.enumValue = MSGraphPrinterProcessingStateDetailDoorOpen;
    });
    return _doorOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) opticalPhotoConductorNearEndOfLife {
    static MSGraphPrinterProcessingStateDetail *_opticalPhotoConductorNearEndOfLife;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _opticalPhotoConductorNearEndOfLife = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _opticalPhotoConductorNearEndOfLife.enumValue = MSGraphPrinterProcessingStateDetailOpticalPhotoConductorNearEndOfLife;
    });
    return _opticalPhotoConductorNearEndOfLife;
}
+ (MSGraphPrinterProcessingStateDetail*) opticalPhotoConductorLifeOver {
    static MSGraphPrinterProcessingStateDetail *_opticalPhotoConductorLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _opticalPhotoConductorLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _opticalPhotoConductorLifeOver.enumValue = MSGraphPrinterProcessingStateDetailOpticalPhotoConductorLifeOver;
    });
    return _opticalPhotoConductorLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) developerLow {
    static MSGraphPrinterProcessingStateDetail *_developerLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _developerLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _developerLow.enumValue = MSGraphPrinterProcessingStateDetailDeveloperLow;
    });
    return _developerLow;
}
+ (MSGraphPrinterProcessingStateDetail*) developerEmpty {
    static MSGraphPrinterProcessingStateDetail *_developerEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _developerEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _developerEmpty.enumValue = MSGraphPrinterProcessingStateDetailDeveloperEmpty;
    });
    return _developerEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterResourceUnavailable {
    static MSGraphPrinterProcessingStateDetail *_interpreterResourceUnavailable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterResourceUnavailable = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterResourceUnavailable.enumValue = MSGraphPrinterProcessingStateDetailInterpreterResourceUnavailable;
    });
    return _interpreterResourceUnavailable;
}
+ (MSGraphPrinterProcessingStateDetail*) unknownFutureValue {
    static MSGraphPrinterProcessingStateDetail *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrinterProcessingStateDetailUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrinterProcessingStateDetail*) UnknownEnumValue {
    static MSGraphPrinterProcessingStateDetail *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _unknownValue.enumValue = MSGraphPrinterProcessingStateDetailEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrinterProcessingStateDetail*) printerProcessingStateDetailWithEnumValue:(MSGraphPrinterProcessingStateDetailValue)val {

    switch(val)
    {
        case MSGraphPrinterProcessingStateDetailPaused:
            return [MSGraphPrinterProcessingStateDetail paused];
        case MSGraphPrinterProcessingStateDetailMediaJam:
            return [MSGraphPrinterProcessingStateDetail mediaJam];
        case MSGraphPrinterProcessingStateDetailMediaNeeded:
            return [MSGraphPrinterProcessingStateDetail mediaNeeded];
        case MSGraphPrinterProcessingStateDetailMediaLow:
            return [MSGraphPrinterProcessingStateDetail mediaLow];
        case MSGraphPrinterProcessingStateDetailMediaEmpty:
            return [MSGraphPrinterProcessingStateDetail mediaEmpty];
        case MSGraphPrinterProcessingStateDetailCoverOpen:
            return [MSGraphPrinterProcessingStateDetail coverOpen];
        case MSGraphPrinterProcessingStateDetailInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail interlockOpen];
        case MSGraphPrinterProcessingStateDetailOutputTrayMissing:
            return [MSGraphPrinterProcessingStateDetail outputTrayMissing];
        case MSGraphPrinterProcessingStateDetailOutputAreaFull:
            return [MSGraphPrinterProcessingStateDetail outputAreaFull];
        case MSGraphPrinterProcessingStateDetailMarkerSupplyLow:
            return [MSGraphPrinterProcessingStateDetail markerSupplyLow];
        case MSGraphPrinterProcessingStateDetailMarkerSupplyEmpty:
            return [MSGraphPrinterProcessingStateDetail markerSupplyEmpty];
        case MSGraphPrinterProcessingStateDetailInputTrayMissing:
            return [MSGraphPrinterProcessingStateDetail inputTrayMissing];
        case MSGraphPrinterProcessingStateDetailOutputAreaAlmostFull:
            return [MSGraphPrinterProcessingStateDetail outputAreaAlmostFull];
        case MSGraphPrinterProcessingStateDetailMarkerWasteAlmostFull:
            return [MSGraphPrinterProcessingStateDetail markerWasteAlmostFull];
        case MSGraphPrinterProcessingStateDetailMarkerWasteFull:
            return [MSGraphPrinterProcessingStateDetail markerWasteFull];
        case MSGraphPrinterProcessingStateDetailFuserOverTemp:
            return [MSGraphPrinterProcessingStateDetail fuserOverTemp];
        case MSGraphPrinterProcessingStateDetailFuserUnderTemp:
            return [MSGraphPrinterProcessingStateDetail fuserUnderTemp];
        case MSGraphPrinterProcessingStateDetailOther:
            return [MSGraphPrinterProcessingStateDetail other];
        case MSGraphPrinterProcessingStateDetailNone:
            return [MSGraphPrinterProcessingStateDetail none];
        case MSGraphPrinterProcessingStateDetailMovingToPaused:
            return [MSGraphPrinterProcessingStateDetail movingToPaused];
        case MSGraphPrinterProcessingStateDetailShutdown:
            return [MSGraphPrinterProcessingStateDetail shutdown];
        case MSGraphPrinterProcessingStateDetailConnectingToDevice:
            return [MSGraphPrinterProcessingStateDetail connectingToDevice];
        case MSGraphPrinterProcessingStateDetailTimedOut:
            return [MSGraphPrinterProcessingStateDetail timedOut];
        case MSGraphPrinterProcessingStateDetailStopping:
            return [MSGraphPrinterProcessingStateDetail stopping];
        case MSGraphPrinterProcessingStateDetailStoppedPartially:
            return [MSGraphPrinterProcessingStateDetail stoppedPartially];
        case MSGraphPrinterProcessingStateDetailTonerLow:
            return [MSGraphPrinterProcessingStateDetail tonerLow];
        case MSGraphPrinterProcessingStateDetailTonerEmpty:
            return [MSGraphPrinterProcessingStateDetail tonerEmpty];
        case MSGraphPrinterProcessingStateDetailSpoolAreaFull:
            return [MSGraphPrinterProcessingStateDetail spoolAreaFull];
        case MSGraphPrinterProcessingStateDetailDoorOpen:
            return [MSGraphPrinterProcessingStateDetail doorOpen];
        case MSGraphPrinterProcessingStateDetailOpticalPhotoConductorNearEndOfLife:
            return [MSGraphPrinterProcessingStateDetail opticalPhotoConductorNearEndOfLife];
        case MSGraphPrinterProcessingStateDetailOpticalPhotoConductorLifeOver:
            return [MSGraphPrinterProcessingStateDetail opticalPhotoConductorLifeOver];
        case MSGraphPrinterProcessingStateDetailDeveloperLow:
            return [MSGraphPrinterProcessingStateDetail developerLow];
        case MSGraphPrinterProcessingStateDetailDeveloperEmpty:
            return [MSGraphPrinterProcessingStateDetail developerEmpty];
        case MSGraphPrinterProcessingStateDetailInterpreterResourceUnavailable:
            return [MSGraphPrinterProcessingStateDetail interpreterResourceUnavailable];
        case MSGraphPrinterProcessingStateDetailUnknownFutureValue:
            return [MSGraphPrinterProcessingStateDetail unknownFutureValue];
        case MSGraphPrinterProcessingStateDetailEndOfEnum:
        default:
            return [MSGraphPrinterProcessingStateDetail UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrinterProcessingStateDetailPaused:
            return @"paused";
        case MSGraphPrinterProcessingStateDetailMediaJam:
            return @"mediaJam";
        case MSGraphPrinterProcessingStateDetailMediaNeeded:
            return @"mediaNeeded";
        case MSGraphPrinterProcessingStateDetailMediaLow:
            return @"mediaLow";
        case MSGraphPrinterProcessingStateDetailMediaEmpty:
            return @"mediaEmpty";
        case MSGraphPrinterProcessingStateDetailCoverOpen:
            return @"coverOpen";
        case MSGraphPrinterProcessingStateDetailInterlockOpen:
            return @"interlockOpen";
        case MSGraphPrinterProcessingStateDetailOutputTrayMissing:
            return @"outputTrayMissing";
        case MSGraphPrinterProcessingStateDetailOutputAreaFull:
            return @"outputAreaFull";
        case MSGraphPrinterProcessingStateDetailMarkerSupplyLow:
            return @"markerSupplyLow";
        case MSGraphPrinterProcessingStateDetailMarkerSupplyEmpty:
            return @"markerSupplyEmpty";
        case MSGraphPrinterProcessingStateDetailInputTrayMissing:
            return @"inputTrayMissing";
        case MSGraphPrinterProcessingStateDetailOutputAreaAlmostFull:
            return @"outputAreaAlmostFull";
        case MSGraphPrinterProcessingStateDetailMarkerWasteAlmostFull:
            return @"markerWasteAlmostFull";
        case MSGraphPrinterProcessingStateDetailMarkerWasteFull:
            return @"markerWasteFull";
        case MSGraphPrinterProcessingStateDetailFuserOverTemp:
            return @"fuserOverTemp";
        case MSGraphPrinterProcessingStateDetailFuserUnderTemp:
            return @"fuserUnderTemp";
        case MSGraphPrinterProcessingStateDetailOther:
            return @"other";
        case MSGraphPrinterProcessingStateDetailNone:
            return @"none";
        case MSGraphPrinterProcessingStateDetailMovingToPaused:
            return @"movingToPaused";
        case MSGraphPrinterProcessingStateDetailShutdown:
            return @"shutdown";
        case MSGraphPrinterProcessingStateDetailConnectingToDevice:
            return @"connectingToDevice";
        case MSGraphPrinterProcessingStateDetailTimedOut:
            return @"timedOut";
        case MSGraphPrinterProcessingStateDetailStopping:
            return @"stopping";
        case MSGraphPrinterProcessingStateDetailStoppedPartially:
            return @"stoppedPartially";
        case MSGraphPrinterProcessingStateDetailTonerLow:
            return @"tonerLow";
        case MSGraphPrinterProcessingStateDetailTonerEmpty:
            return @"tonerEmpty";
        case MSGraphPrinterProcessingStateDetailSpoolAreaFull:
            return @"spoolAreaFull";
        case MSGraphPrinterProcessingStateDetailDoorOpen:
            return @"doorOpen";
        case MSGraphPrinterProcessingStateDetailOpticalPhotoConductorNearEndOfLife:
            return @"opticalPhotoConductorNearEndOfLife";
        case MSGraphPrinterProcessingStateDetailOpticalPhotoConductorLifeOver:
            return @"opticalPhotoConductorLifeOver";
        case MSGraphPrinterProcessingStateDetailDeveloperLow:
            return @"developerLow";
        case MSGraphPrinterProcessingStateDetailDeveloperEmpty:
            return @"developerEmpty";
        case MSGraphPrinterProcessingStateDetailInterpreterResourceUnavailable:
            return @"interpreterResourceUnavailable";
        case MSGraphPrinterProcessingStateDetailUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrinterProcessingStateDetailEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrinterProcessingStateDetailValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrinterProcessingStateDetail)

- (MSGraphPrinterProcessingStateDetail*) toMSGraphPrinterProcessingStateDetail{

    if([self isEqualToString:@"paused"])
    {
          return [MSGraphPrinterProcessingStateDetail paused];
    }
    else if([self isEqualToString:@"mediaJam"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaJam];
    }
    else if([self isEqualToString:@"mediaNeeded"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaNeeded];
    }
    else if([self isEqualToString:@"mediaLow"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaLow];
    }
    else if([self isEqualToString:@"mediaEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaEmpty];
    }
    else if([self isEqualToString:@"coverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail coverOpen];
    }
    else if([self isEqualToString:@"interlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail interlockOpen];
    }
    else if([self isEqualToString:@"outputTrayMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail outputTrayMissing];
    }
    else if([self isEqualToString:@"outputAreaFull"])
    {
          return [MSGraphPrinterProcessingStateDetail outputAreaFull];
    }
    else if([self isEqualToString:@"markerSupplyLow"])
    {
          return [MSGraphPrinterProcessingStateDetail markerSupplyLow];
    }
    else if([self isEqualToString:@"markerSupplyEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerSupplyEmpty];
    }
    else if([self isEqualToString:@"inputTrayMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail inputTrayMissing];
    }
    else if([self isEqualToString:@"outputAreaAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail outputAreaAlmostFull];
    }
    else if([self isEqualToString:@"markerWasteAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteAlmostFull];
    }
    else if([self isEqualToString:@"markerWasteFull"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteFull];
    }
    else if([self isEqualToString:@"fuserOverTemp"])
    {
          return [MSGraphPrinterProcessingStateDetail fuserOverTemp];
    }
    else if([self isEqualToString:@"fuserUnderTemp"])
    {
          return [MSGraphPrinterProcessingStateDetail fuserUnderTemp];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphPrinterProcessingStateDetail other];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphPrinterProcessingStateDetail none];
    }
    else if([self isEqualToString:@"movingToPaused"])
    {
          return [MSGraphPrinterProcessingStateDetail movingToPaused];
    }
    else if([self isEqualToString:@"shutdown"])
    {
          return [MSGraphPrinterProcessingStateDetail shutdown];
    }
    else if([self isEqualToString:@"connectingToDevice"])
    {
          return [MSGraphPrinterProcessingStateDetail connectingToDevice];
    }
    else if([self isEqualToString:@"timedOut"])
    {
          return [MSGraphPrinterProcessingStateDetail timedOut];
    }
    else if([self isEqualToString:@"stopping"])
    {
          return [MSGraphPrinterProcessingStateDetail stopping];
    }
    else if([self isEqualToString:@"stoppedPartially"])
    {
          return [MSGraphPrinterProcessingStateDetail stoppedPartially];
    }
    else if([self isEqualToString:@"tonerLow"])
    {
          return [MSGraphPrinterProcessingStateDetail tonerLow];
    }
    else if([self isEqualToString:@"tonerEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail tonerEmpty];
    }
    else if([self isEqualToString:@"spoolAreaFull"])
    {
          return [MSGraphPrinterProcessingStateDetail spoolAreaFull];
    }
    else if([self isEqualToString:@"doorOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail doorOpen];
    }
    else if([self isEqualToString:@"opticalPhotoConductorNearEndOfLife"])
    {
          return [MSGraphPrinterProcessingStateDetail opticalPhotoConductorNearEndOfLife];
    }
    else if([self isEqualToString:@"opticalPhotoConductorLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail opticalPhotoConductorLifeOver];
    }
    else if([self isEqualToString:@"developerLow"])
    {
          return [MSGraphPrinterProcessingStateDetail developerLow];
    }
    else if([self isEqualToString:@"developerEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail developerEmpty];
    }
    else if([self isEqualToString:@"interpreterResourceUnavailable"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterResourceUnavailable];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrinterProcessingStateDetail unknownFutureValue];
    }
    else {
        return [MSGraphPrinterProcessingStateDetail UnknownEnumValue];
    }
}

@end
