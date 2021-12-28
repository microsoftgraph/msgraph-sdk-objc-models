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
+ (MSGraphPrinterProcessingStateDetail*) alertRemovalOfBinaryChangeEntry {
    static MSGraphPrinterProcessingStateDetail *_alertRemovalOfBinaryChangeEntry;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alertRemovalOfBinaryChangeEntry = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _alertRemovalOfBinaryChangeEntry.enumValue = MSGraphPrinterProcessingStateDetailAlertRemovalOfBinaryChangeEntry;
    });
    return _alertRemovalOfBinaryChangeEntry;
}
+ (MSGraphPrinterProcessingStateDetail*) banderAdded {
    static MSGraphPrinterProcessingStateDetail *_banderAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderAdded.enumValue = MSGraphPrinterProcessingStateDetailBanderAdded;
    });
    return _banderAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) banderAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_banderAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailBanderAlmostEmpty;
    });
    return _banderAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) banderAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_banderAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailBanderAlmostFull;
    });
    return _banderAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) banderAtLimit {
    static MSGraphPrinterProcessingStateDetail *_banderAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderAtLimit.enumValue = MSGraphPrinterProcessingStateDetailBanderAtLimit;
    });
    return _banderAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) banderClosed {
    static MSGraphPrinterProcessingStateDetail *_banderClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderClosed.enumValue = MSGraphPrinterProcessingStateDetailBanderClosed;
    });
    return _banderClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) banderConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_banderConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailBanderConfigurationChange;
    });
    return _banderConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) banderCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_banderCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailBanderCoverClosed;
    });
    return _banderCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) banderCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_banderCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailBanderCoverOpen;
    });
    return _banderCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) banderEmpty {
    static MSGraphPrinterProcessingStateDetail *_banderEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderEmpty.enumValue = MSGraphPrinterProcessingStateDetailBanderEmpty;
    });
    return _banderEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) banderFull {
    static MSGraphPrinterProcessingStateDetail *_banderFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderFull.enumValue = MSGraphPrinterProcessingStateDetailBanderFull;
    });
    return _banderFull;
}
+ (MSGraphPrinterProcessingStateDetail*) banderInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_banderInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailBanderInterlockClosed;
    });
    return _banderInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) banderInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_banderInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailBanderInterlockOpen;
    });
    return _banderInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) banderJam {
    static MSGraphPrinterProcessingStateDetail *_banderJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderJam.enumValue = MSGraphPrinterProcessingStateDetailBanderJam;
    });
    return _banderJam;
}
+ (MSGraphPrinterProcessingStateDetail*) banderLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_banderLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailBanderLifeAlmostOver;
    });
    return _banderLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) banderLifeOver {
    static MSGraphPrinterProcessingStateDetail *_banderLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderLifeOver.enumValue = MSGraphPrinterProcessingStateDetailBanderLifeOver;
    });
    return _banderLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) banderMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_banderMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailBanderMemoryExhausted;
    });
    return _banderMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) banderMissing {
    static MSGraphPrinterProcessingStateDetail *_banderMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderMissing.enumValue = MSGraphPrinterProcessingStateDetailBanderMissing;
    });
    return _banderMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) banderMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_banderMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailBanderMotorFailure;
    });
    return _banderMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) banderNearLimit {
    static MSGraphPrinterProcessingStateDetail *_banderNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderNearLimit.enumValue = MSGraphPrinterProcessingStateDetailBanderNearLimit;
    });
    return _banderNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) banderOffline {
    static MSGraphPrinterProcessingStateDetail *_banderOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderOffline.enumValue = MSGraphPrinterProcessingStateDetailBanderOffline;
    });
    return _banderOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) banderOpened {
    static MSGraphPrinterProcessingStateDetail *_banderOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderOpened.enumValue = MSGraphPrinterProcessingStateDetailBanderOpened;
    });
    return _banderOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) banderOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_banderOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailBanderOverTemperature;
    });
    return _banderOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) banderPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_banderPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailBanderPowerSaver;
    });
    return _banderPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) banderRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_banderRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailBanderRecoverableFailure;
    });
    return _banderRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) banderRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_banderRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailBanderRecoverableStorage;
    });
    return _banderRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) banderRemoved {
    static MSGraphPrinterProcessingStateDetail *_banderRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderRemoved.enumValue = MSGraphPrinterProcessingStateDetailBanderRemoved;
    });
    return _banderRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) banderResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_banderResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailBanderResourceAdded;
    });
    return _banderResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) banderResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_banderResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailBanderResourceRemoved;
    });
    return _banderResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) banderThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_banderThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailBanderThermistorFailure;
    });
    return _banderThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) banderTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_banderTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailBanderTimingFailure;
    });
    return _banderTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) banderTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_banderTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailBanderTurnedOff;
    });
    return _banderTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) banderTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_banderTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailBanderTurnedOn;
    });
    return _banderTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) banderUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_banderUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailBanderUnderTemperature;
    });
    return _banderUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) banderUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_banderUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailBanderUnrecoverableFailure;
    });
    return _banderUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) banderUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_banderUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailBanderUnrecoverableStorageError;
    });
    return _banderUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) banderWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_banderWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banderWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _banderWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailBanderWarmingUp;
    });
    return _banderWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) binderAdded {
    static MSGraphPrinterProcessingStateDetail *_binderAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderAdded.enumValue = MSGraphPrinterProcessingStateDetailBinderAdded;
    });
    return _binderAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) binderAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_binderAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailBinderAlmostEmpty;
    });
    return _binderAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) binderAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_binderAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailBinderAlmostFull;
    });
    return _binderAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) binderAtLimit {
    static MSGraphPrinterProcessingStateDetail *_binderAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderAtLimit.enumValue = MSGraphPrinterProcessingStateDetailBinderAtLimit;
    });
    return _binderAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) binderClosed {
    static MSGraphPrinterProcessingStateDetail *_binderClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderClosed.enumValue = MSGraphPrinterProcessingStateDetailBinderClosed;
    });
    return _binderClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) binderConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_binderConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailBinderConfigurationChange;
    });
    return _binderConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) binderCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_binderCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailBinderCoverClosed;
    });
    return _binderCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) binderCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_binderCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailBinderCoverOpen;
    });
    return _binderCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) binderEmpty {
    static MSGraphPrinterProcessingStateDetail *_binderEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderEmpty.enumValue = MSGraphPrinterProcessingStateDetailBinderEmpty;
    });
    return _binderEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) binderFull {
    static MSGraphPrinterProcessingStateDetail *_binderFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderFull.enumValue = MSGraphPrinterProcessingStateDetailBinderFull;
    });
    return _binderFull;
}
+ (MSGraphPrinterProcessingStateDetail*) binderInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_binderInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailBinderInterlockClosed;
    });
    return _binderInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) binderInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_binderInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailBinderInterlockOpen;
    });
    return _binderInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) binderJam {
    static MSGraphPrinterProcessingStateDetail *_binderJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderJam.enumValue = MSGraphPrinterProcessingStateDetailBinderJam;
    });
    return _binderJam;
}
+ (MSGraphPrinterProcessingStateDetail*) binderLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_binderLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailBinderLifeAlmostOver;
    });
    return _binderLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) binderLifeOver {
    static MSGraphPrinterProcessingStateDetail *_binderLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderLifeOver.enumValue = MSGraphPrinterProcessingStateDetailBinderLifeOver;
    });
    return _binderLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) binderMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_binderMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailBinderMemoryExhausted;
    });
    return _binderMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) binderMissing {
    static MSGraphPrinterProcessingStateDetail *_binderMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderMissing.enumValue = MSGraphPrinterProcessingStateDetailBinderMissing;
    });
    return _binderMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) binderMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_binderMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailBinderMotorFailure;
    });
    return _binderMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) binderNearLimit {
    static MSGraphPrinterProcessingStateDetail *_binderNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderNearLimit.enumValue = MSGraphPrinterProcessingStateDetailBinderNearLimit;
    });
    return _binderNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) binderOffline {
    static MSGraphPrinterProcessingStateDetail *_binderOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderOffline.enumValue = MSGraphPrinterProcessingStateDetailBinderOffline;
    });
    return _binderOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) binderOpened {
    static MSGraphPrinterProcessingStateDetail *_binderOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderOpened.enumValue = MSGraphPrinterProcessingStateDetailBinderOpened;
    });
    return _binderOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) binderOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_binderOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailBinderOverTemperature;
    });
    return _binderOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) binderPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_binderPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailBinderPowerSaver;
    });
    return _binderPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) binderRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_binderRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailBinderRecoverableFailure;
    });
    return _binderRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) binderRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_binderRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailBinderRecoverableStorage;
    });
    return _binderRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) binderRemoved {
    static MSGraphPrinterProcessingStateDetail *_binderRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderRemoved.enumValue = MSGraphPrinterProcessingStateDetailBinderRemoved;
    });
    return _binderRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) binderResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_binderResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailBinderResourceAdded;
    });
    return _binderResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) binderResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_binderResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailBinderResourceRemoved;
    });
    return _binderResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) binderThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_binderThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailBinderThermistorFailure;
    });
    return _binderThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) binderTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_binderTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailBinderTimingFailure;
    });
    return _binderTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) binderTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_binderTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailBinderTurnedOff;
    });
    return _binderTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) binderTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_binderTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailBinderTurnedOn;
    });
    return _binderTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) binderUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_binderUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailBinderUnderTemperature;
    });
    return _binderUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) binderUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_binderUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailBinderUnrecoverableFailure;
    });
    return _binderUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) binderUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_binderUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailBinderUnrecoverableStorageError;
    });
    return _binderUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) binderWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_binderWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binderWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _binderWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailBinderWarmingUp;
    });
    return _binderWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) cameraFailure {
    static MSGraphPrinterProcessingStateDetail *_cameraFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cameraFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _cameraFailure.enumValue = MSGraphPrinterProcessingStateDetailCameraFailure;
    });
    return _cameraFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) chamberCooling {
    static MSGraphPrinterProcessingStateDetail *_chamberCooling;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chamberCooling = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _chamberCooling.enumValue = MSGraphPrinterProcessingStateDetailChamberCooling;
    });
    return _chamberCooling;
}
+ (MSGraphPrinterProcessingStateDetail*) chamberFailure {
    static MSGraphPrinterProcessingStateDetail *_chamberFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chamberFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _chamberFailure.enumValue = MSGraphPrinterProcessingStateDetailChamberFailure;
    });
    return _chamberFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) chamberHeating {
    static MSGraphPrinterProcessingStateDetail *_chamberHeating;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chamberHeating = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _chamberHeating.enumValue = MSGraphPrinterProcessingStateDetailChamberHeating;
    });
    return _chamberHeating;
}
+ (MSGraphPrinterProcessingStateDetail*) chamberTemperatureHigh {
    static MSGraphPrinterProcessingStateDetail *_chamberTemperatureHigh;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chamberTemperatureHigh = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _chamberTemperatureHigh.enumValue = MSGraphPrinterProcessingStateDetailChamberTemperatureHigh;
    });
    return _chamberTemperatureHigh;
}
+ (MSGraphPrinterProcessingStateDetail*) chamberTemperatureLow {
    static MSGraphPrinterProcessingStateDetail *_chamberTemperatureLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chamberTemperatureLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _chamberTemperatureLow.enumValue = MSGraphPrinterProcessingStateDetailChamberTemperatureLow;
    });
    return _chamberTemperatureLow;
}
+ (MSGraphPrinterProcessingStateDetail*) cleanerLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_cleanerLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cleanerLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _cleanerLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailCleanerLifeAlmostOver;
    });
    return _cleanerLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) cleanerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_cleanerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cleanerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _cleanerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailCleanerLifeOver;
    });
    return _cleanerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) configurationChange {
    static MSGraphPrinterProcessingStateDetail *_configurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _configurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _configurationChange.enumValue = MSGraphPrinterProcessingStateDetailConfigurationChange;
    });
    return _configurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) deactivated {
    static MSGraphPrinterProcessingStateDetail *_deactivated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deactivated = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _deactivated.enumValue = MSGraphPrinterProcessingStateDetailDeactivated;
    });
    return _deactivated;
}
+ (MSGraphPrinterProcessingStateDetail*) deleted {
    static MSGraphPrinterProcessingStateDetail *_deleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deleted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _deleted.enumValue = MSGraphPrinterProcessingStateDetailDeleted;
    });
    return _deleted;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterAdded {
    static MSGraphPrinterProcessingStateDetail *_dieCutterAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterAdded.enumValue = MSGraphPrinterProcessingStateDetailDieCutterAdded;
    });
    return _dieCutterAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_dieCutterAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailDieCutterAlmostEmpty;
    });
    return _dieCutterAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_dieCutterAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailDieCutterAlmostFull;
    });
    return _dieCutterAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterAtLimit {
    static MSGraphPrinterProcessingStateDetail *_dieCutterAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterAtLimit.enumValue = MSGraphPrinterProcessingStateDetailDieCutterAtLimit;
    });
    return _dieCutterAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterClosed {
    static MSGraphPrinterProcessingStateDetail *_dieCutterClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterClosed.enumValue = MSGraphPrinterProcessingStateDetailDieCutterClosed;
    });
    return _dieCutterClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_dieCutterConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailDieCutterConfigurationChange;
    });
    return _dieCutterConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_dieCutterCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailDieCutterCoverClosed;
    });
    return _dieCutterCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_dieCutterCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailDieCutterCoverOpen;
    });
    return _dieCutterCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterEmpty {
    static MSGraphPrinterProcessingStateDetail *_dieCutterEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterEmpty.enumValue = MSGraphPrinterProcessingStateDetailDieCutterEmpty;
    });
    return _dieCutterEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterFull {
    static MSGraphPrinterProcessingStateDetail *_dieCutterFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterFull.enumValue = MSGraphPrinterProcessingStateDetailDieCutterFull;
    });
    return _dieCutterFull;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_dieCutterInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailDieCutterInterlockClosed;
    });
    return _dieCutterInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_dieCutterInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailDieCutterInterlockOpen;
    });
    return _dieCutterInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterJam {
    static MSGraphPrinterProcessingStateDetail *_dieCutterJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterJam.enumValue = MSGraphPrinterProcessingStateDetailDieCutterJam;
    });
    return _dieCutterJam;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_dieCutterLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailDieCutterLifeAlmostOver;
    });
    return _dieCutterLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterLifeOver {
    static MSGraphPrinterProcessingStateDetail *_dieCutterLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterLifeOver.enumValue = MSGraphPrinterProcessingStateDetailDieCutterLifeOver;
    });
    return _dieCutterLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_dieCutterMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailDieCutterMemoryExhausted;
    });
    return _dieCutterMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterMissing {
    static MSGraphPrinterProcessingStateDetail *_dieCutterMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterMissing.enumValue = MSGraphPrinterProcessingStateDetailDieCutterMissing;
    });
    return _dieCutterMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_dieCutterMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailDieCutterMotorFailure;
    });
    return _dieCutterMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterNearLimit {
    static MSGraphPrinterProcessingStateDetail *_dieCutterNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterNearLimit.enumValue = MSGraphPrinterProcessingStateDetailDieCutterNearLimit;
    });
    return _dieCutterNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterOffline {
    static MSGraphPrinterProcessingStateDetail *_dieCutterOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterOffline.enumValue = MSGraphPrinterProcessingStateDetailDieCutterOffline;
    });
    return _dieCutterOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterOpened {
    static MSGraphPrinterProcessingStateDetail *_dieCutterOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterOpened.enumValue = MSGraphPrinterProcessingStateDetailDieCutterOpened;
    });
    return _dieCutterOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_dieCutterOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailDieCutterOverTemperature;
    });
    return _dieCutterOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_dieCutterPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailDieCutterPowerSaver;
    });
    return _dieCutterPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_dieCutterRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailDieCutterRecoverableFailure;
    });
    return _dieCutterRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_dieCutterRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailDieCutterRecoverableStorage;
    });
    return _dieCutterRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterRemoved {
    static MSGraphPrinterProcessingStateDetail *_dieCutterRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterRemoved.enumValue = MSGraphPrinterProcessingStateDetailDieCutterRemoved;
    });
    return _dieCutterRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_dieCutterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailDieCutterResourceAdded;
    });
    return _dieCutterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_dieCutterResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailDieCutterResourceRemoved;
    });
    return _dieCutterResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_dieCutterThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailDieCutterThermistorFailure;
    });
    return _dieCutterThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_dieCutterTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailDieCutterTimingFailure;
    });
    return _dieCutterTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_dieCutterTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailDieCutterTurnedOff;
    });
    return _dieCutterTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_dieCutterTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailDieCutterTurnedOn;
    });
    return _dieCutterTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_dieCutterUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailDieCutterUnderTemperature;
    });
    return _dieCutterUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_dieCutterUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailDieCutterUnrecoverableFailure;
    });
    return _dieCutterUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_dieCutterUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailDieCutterUnrecoverableStorageError;
    });
    return _dieCutterUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) dieCutterWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_dieCutterWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dieCutterWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _dieCutterWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailDieCutterWarmingUp;
    });
    return _dieCutterWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) extruderCooling {
    static MSGraphPrinterProcessingStateDetail *_extruderCooling;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extruderCooling = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _extruderCooling.enumValue = MSGraphPrinterProcessingStateDetailExtruderCooling;
    });
    return _extruderCooling;
}
+ (MSGraphPrinterProcessingStateDetail*) extruderFailure {
    static MSGraphPrinterProcessingStateDetail *_extruderFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extruderFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _extruderFailure.enumValue = MSGraphPrinterProcessingStateDetailExtruderFailure;
    });
    return _extruderFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) extruderHeating {
    static MSGraphPrinterProcessingStateDetail *_extruderHeating;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extruderHeating = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _extruderHeating.enumValue = MSGraphPrinterProcessingStateDetailExtruderHeating;
    });
    return _extruderHeating;
}
+ (MSGraphPrinterProcessingStateDetail*) extruderJam {
    static MSGraphPrinterProcessingStateDetail *_extruderJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extruderJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _extruderJam.enumValue = MSGraphPrinterProcessingStateDetailExtruderJam;
    });
    return _extruderJam;
}
+ (MSGraphPrinterProcessingStateDetail*) extruderTemperatureHigh {
    static MSGraphPrinterProcessingStateDetail *_extruderTemperatureHigh;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extruderTemperatureHigh = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _extruderTemperatureHigh.enumValue = MSGraphPrinterProcessingStateDetailExtruderTemperatureHigh;
    });
    return _extruderTemperatureHigh;
}
+ (MSGraphPrinterProcessingStateDetail*) extruderTemperatureLow {
    static MSGraphPrinterProcessingStateDetail *_extruderTemperatureLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extruderTemperatureLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _extruderTemperatureLow.enumValue = MSGraphPrinterProcessingStateDetailExtruderTemperatureLow;
    });
    return _extruderTemperatureLow;
}
+ (MSGraphPrinterProcessingStateDetail*) fanFailure {
    static MSGraphPrinterProcessingStateDetail *_fanFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fanFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _fanFailure.enumValue = MSGraphPrinterProcessingStateDetailFanFailure;
    });
    return _fanFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) faxModemLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_faxModemLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _faxModemLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _faxModemLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailFaxModemLifeAlmostOver;
    });
    return _faxModemLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) faxModemLifeOver {
    static MSGraphPrinterProcessingStateDetail *_faxModemLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _faxModemLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _faxModemLifeOver.enumValue = MSGraphPrinterProcessingStateDetailFaxModemLifeOver;
    });
    return _faxModemLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) faxModemMissing {
    static MSGraphPrinterProcessingStateDetail *_faxModemMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _faxModemMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _faxModemMissing.enumValue = MSGraphPrinterProcessingStateDetailFaxModemMissing;
    });
    return _faxModemMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) faxModemTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_faxModemTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _faxModemTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _faxModemTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailFaxModemTurnedOff;
    });
    return _faxModemTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) faxModemTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_faxModemTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _faxModemTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _faxModemTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailFaxModemTurnedOn;
    });
    return _faxModemTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) folderAdded {
    static MSGraphPrinterProcessingStateDetail *_folderAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderAdded.enumValue = MSGraphPrinterProcessingStateDetailFolderAdded;
    });
    return _folderAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) folderAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_folderAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailFolderAlmostEmpty;
    });
    return _folderAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) folderAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_folderAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailFolderAlmostFull;
    });
    return _folderAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) folderAtLimit {
    static MSGraphPrinterProcessingStateDetail *_folderAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderAtLimit.enumValue = MSGraphPrinterProcessingStateDetailFolderAtLimit;
    });
    return _folderAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) folderClosed {
    static MSGraphPrinterProcessingStateDetail *_folderClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderClosed.enumValue = MSGraphPrinterProcessingStateDetailFolderClosed;
    });
    return _folderClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) folderConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_folderConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailFolderConfigurationChange;
    });
    return _folderConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) folderCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_folderCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailFolderCoverClosed;
    });
    return _folderCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) folderCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_folderCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailFolderCoverOpen;
    });
    return _folderCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) folderEmpty {
    static MSGraphPrinterProcessingStateDetail *_folderEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderEmpty.enumValue = MSGraphPrinterProcessingStateDetailFolderEmpty;
    });
    return _folderEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) folderFull {
    static MSGraphPrinterProcessingStateDetail *_folderFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderFull.enumValue = MSGraphPrinterProcessingStateDetailFolderFull;
    });
    return _folderFull;
}
+ (MSGraphPrinterProcessingStateDetail*) folderInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_folderInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailFolderInterlockClosed;
    });
    return _folderInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) folderInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_folderInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailFolderInterlockOpen;
    });
    return _folderInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) folderJam {
    static MSGraphPrinterProcessingStateDetail *_folderJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderJam.enumValue = MSGraphPrinterProcessingStateDetailFolderJam;
    });
    return _folderJam;
}
+ (MSGraphPrinterProcessingStateDetail*) folderLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_folderLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailFolderLifeAlmostOver;
    });
    return _folderLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) folderLifeOver {
    static MSGraphPrinterProcessingStateDetail *_folderLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderLifeOver.enumValue = MSGraphPrinterProcessingStateDetailFolderLifeOver;
    });
    return _folderLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) folderMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_folderMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailFolderMemoryExhausted;
    });
    return _folderMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) folderMissing {
    static MSGraphPrinterProcessingStateDetail *_folderMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderMissing.enumValue = MSGraphPrinterProcessingStateDetailFolderMissing;
    });
    return _folderMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) folderMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_folderMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailFolderMotorFailure;
    });
    return _folderMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) folderNearLimit {
    static MSGraphPrinterProcessingStateDetail *_folderNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderNearLimit.enumValue = MSGraphPrinterProcessingStateDetailFolderNearLimit;
    });
    return _folderNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) folderOffline {
    static MSGraphPrinterProcessingStateDetail *_folderOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderOffline.enumValue = MSGraphPrinterProcessingStateDetailFolderOffline;
    });
    return _folderOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) folderOpened {
    static MSGraphPrinterProcessingStateDetail *_folderOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderOpened.enumValue = MSGraphPrinterProcessingStateDetailFolderOpened;
    });
    return _folderOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) folderOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_folderOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailFolderOverTemperature;
    });
    return _folderOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) folderPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_folderPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailFolderPowerSaver;
    });
    return _folderPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) folderRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_folderRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailFolderRecoverableFailure;
    });
    return _folderRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) folderRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_folderRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailFolderRecoverableStorage;
    });
    return _folderRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) folderRemoved {
    static MSGraphPrinterProcessingStateDetail *_folderRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderRemoved.enumValue = MSGraphPrinterProcessingStateDetailFolderRemoved;
    });
    return _folderRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) folderResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_folderResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailFolderResourceAdded;
    });
    return _folderResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) folderResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_folderResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailFolderResourceRemoved;
    });
    return _folderResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) folderThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_folderThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailFolderThermistorFailure;
    });
    return _folderThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) folderTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_folderTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailFolderTimingFailure;
    });
    return _folderTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) folderTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_folderTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailFolderTurnedOff;
    });
    return _folderTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) folderTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_folderTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailFolderTurnedOn;
    });
    return _folderTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) folderUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_folderUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailFolderUnderTemperature;
    });
    return _folderUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) folderUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_folderUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailFolderUnrecoverableFailure;
    });
    return _folderUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) folderUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_folderUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailFolderUnrecoverableStorageError;
    });
    return _folderUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) folderWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_folderWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _folderWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _folderWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailFolderWarmingUp;
    });
    return _folderWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) hibernate {
    static MSGraphPrinterProcessingStateDetail *_hibernate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hibernate = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _hibernate.enumValue = MSGraphPrinterProcessingStateDetailHibernate;
    });
    return _hibernate;
}
+ (MSGraphPrinterProcessingStateDetail*) holdNewJobs {
    static MSGraphPrinterProcessingStateDetail *_holdNewJobs;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _holdNewJobs = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _holdNewJobs.enumValue = MSGraphPrinterProcessingStateDetailHoldNewJobs;
    });
    return _holdNewJobs;
}
+ (MSGraphPrinterProcessingStateDetail*) identifyPrinterRequested {
    static MSGraphPrinterProcessingStateDetail *_identifyPrinterRequested;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _identifyPrinterRequested = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _identifyPrinterRequested.enumValue = MSGraphPrinterProcessingStateDetailIdentifyPrinterRequested;
    });
    return _identifyPrinterRequested;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterAdded {
    static MSGraphPrinterProcessingStateDetail *_imprinterAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterAdded.enumValue = MSGraphPrinterProcessingStateDetailImprinterAdded;
    });
    return _imprinterAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_imprinterAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailImprinterAlmostEmpty;
    });
    return _imprinterAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_imprinterAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailImprinterAlmostFull;
    });
    return _imprinterAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterAtLimit {
    static MSGraphPrinterProcessingStateDetail *_imprinterAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterAtLimit.enumValue = MSGraphPrinterProcessingStateDetailImprinterAtLimit;
    });
    return _imprinterAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterClosed {
    static MSGraphPrinterProcessingStateDetail *_imprinterClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterClosed.enumValue = MSGraphPrinterProcessingStateDetailImprinterClosed;
    });
    return _imprinterClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_imprinterConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailImprinterConfigurationChange;
    });
    return _imprinterConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_imprinterCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailImprinterCoverClosed;
    });
    return _imprinterCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_imprinterCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailImprinterCoverOpen;
    });
    return _imprinterCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterEmpty {
    static MSGraphPrinterProcessingStateDetail *_imprinterEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterEmpty.enumValue = MSGraphPrinterProcessingStateDetailImprinterEmpty;
    });
    return _imprinterEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterFull {
    static MSGraphPrinterProcessingStateDetail *_imprinterFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterFull.enumValue = MSGraphPrinterProcessingStateDetailImprinterFull;
    });
    return _imprinterFull;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_imprinterInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailImprinterInterlockClosed;
    });
    return _imprinterInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_imprinterInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailImprinterInterlockOpen;
    });
    return _imprinterInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterJam {
    static MSGraphPrinterProcessingStateDetail *_imprinterJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterJam.enumValue = MSGraphPrinterProcessingStateDetailImprinterJam;
    });
    return _imprinterJam;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_imprinterLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailImprinterLifeAlmostOver;
    });
    return _imprinterLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterLifeOver {
    static MSGraphPrinterProcessingStateDetail *_imprinterLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterLifeOver.enumValue = MSGraphPrinterProcessingStateDetailImprinterLifeOver;
    });
    return _imprinterLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_imprinterMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailImprinterMemoryExhausted;
    });
    return _imprinterMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterMissing {
    static MSGraphPrinterProcessingStateDetail *_imprinterMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterMissing.enumValue = MSGraphPrinterProcessingStateDetailImprinterMissing;
    });
    return _imprinterMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_imprinterMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailImprinterMotorFailure;
    });
    return _imprinterMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterNearLimit {
    static MSGraphPrinterProcessingStateDetail *_imprinterNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterNearLimit.enumValue = MSGraphPrinterProcessingStateDetailImprinterNearLimit;
    });
    return _imprinterNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterOffline {
    static MSGraphPrinterProcessingStateDetail *_imprinterOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterOffline.enumValue = MSGraphPrinterProcessingStateDetailImprinterOffline;
    });
    return _imprinterOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterOpened {
    static MSGraphPrinterProcessingStateDetail *_imprinterOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterOpened.enumValue = MSGraphPrinterProcessingStateDetailImprinterOpened;
    });
    return _imprinterOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_imprinterOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailImprinterOverTemperature;
    });
    return _imprinterOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_imprinterPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailImprinterPowerSaver;
    });
    return _imprinterPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_imprinterRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailImprinterRecoverableFailure;
    });
    return _imprinterRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_imprinterRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailImprinterRecoverableStorage;
    });
    return _imprinterRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterRemoved {
    static MSGraphPrinterProcessingStateDetail *_imprinterRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterRemoved.enumValue = MSGraphPrinterProcessingStateDetailImprinterRemoved;
    });
    return _imprinterRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_imprinterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailImprinterResourceAdded;
    });
    return _imprinterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_imprinterResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailImprinterResourceRemoved;
    });
    return _imprinterResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_imprinterThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailImprinterThermistorFailure;
    });
    return _imprinterThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_imprinterTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailImprinterTimingFailure;
    });
    return _imprinterTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_imprinterTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailImprinterTurnedOff;
    });
    return _imprinterTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_imprinterTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailImprinterTurnedOn;
    });
    return _imprinterTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_imprinterUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailImprinterUnderTemperature;
    });
    return _imprinterUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_imprinterUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailImprinterUnrecoverableFailure;
    });
    return _imprinterUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_imprinterUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailImprinterUnrecoverableStorageError;
    });
    return _imprinterUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) imprinterWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_imprinterWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _imprinterWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _imprinterWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailImprinterWarmingUp;
    });
    return _imprinterWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) inputCannotFeedSizeSelected {
    static MSGraphPrinterProcessingStateDetail *_inputCannotFeedSizeSelected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputCannotFeedSizeSelected = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputCannotFeedSizeSelected.enumValue = MSGraphPrinterProcessingStateDetailInputCannotFeedSizeSelected;
    });
    return _inputCannotFeedSizeSelected;
}
+ (MSGraphPrinterProcessingStateDetail*) inputManualInputRequest {
    static MSGraphPrinterProcessingStateDetail *_inputManualInputRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputManualInputRequest = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputManualInputRequest.enumValue = MSGraphPrinterProcessingStateDetailInputManualInputRequest;
    });
    return _inputManualInputRequest;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaColorChange {
    static MSGraphPrinterProcessingStateDetail *_inputMediaColorChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaColorChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaColorChange.enumValue = MSGraphPrinterProcessingStateDetailInputMediaColorChange;
    });
    return _inputMediaColorChange;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaFormPartsChange {
    static MSGraphPrinterProcessingStateDetail *_inputMediaFormPartsChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaFormPartsChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaFormPartsChange.enumValue = MSGraphPrinterProcessingStateDetailInputMediaFormPartsChange;
    });
    return _inputMediaFormPartsChange;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaSizeChange {
    static MSGraphPrinterProcessingStateDetail *_inputMediaSizeChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaSizeChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaSizeChange.enumValue = MSGraphPrinterProcessingStateDetailInputMediaSizeChange;
    });
    return _inputMediaSizeChange;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaTrayFailure {
    static MSGraphPrinterProcessingStateDetail *_inputMediaTrayFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaTrayFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaTrayFailure.enumValue = MSGraphPrinterProcessingStateDetailInputMediaTrayFailure;
    });
    return _inputMediaTrayFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaTrayFeedError {
    static MSGraphPrinterProcessingStateDetail *_inputMediaTrayFeedError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaTrayFeedError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaTrayFeedError.enumValue = MSGraphPrinterProcessingStateDetailInputMediaTrayFeedError;
    });
    return _inputMediaTrayFeedError;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaTrayJam {
    static MSGraphPrinterProcessingStateDetail *_inputMediaTrayJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaTrayJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaTrayJam.enumValue = MSGraphPrinterProcessingStateDetailInputMediaTrayJam;
    });
    return _inputMediaTrayJam;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaTypeChange {
    static MSGraphPrinterProcessingStateDetail *_inputMediaTypeChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaTypeChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaTypeChange.enumValue = MSGraphPrinterProcessingStateDetailInputMediaTypeChange;
    });
    return _inputMediaTypeChange;
}
+ (MSGraphPrinterProcessingStateDetail*) inputMediaWeightChange {
    static MSGraphPrinterProcessingStateDetail *_inputMediaWeightChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputMediaWeightChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputMediaWeightChange.enumValue = MSGraphPrinterProcessingStateDetailInputMediaWeightChange;
    });
    return _inputMediaWeightChange;
}
+ (MSGraphPrinterProcessingStateDetail*) inputPickRollerFailure {
    static MSGraphPrinterProcessingStateDetail *_inputPickRollerFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputPickRollerFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputPickRollerFailure.enumValue = MSGraphPrinterProcessingStateDetailInputPickRollerFailure;
    });
    return _inputPickRollerFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inputPickRollerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_inputPickRollerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputPickRollerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputPickRollerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailInputPickRollerLifeOver;
    });
    return _inputPickRollerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) inputPickRollerLifeWarn {
    static MSGraphPrinterProcessingStateDetail *_inputPickRollerLifeWarn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputPickRollerLifeWarn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputPickRollerLifeWarn.enumValue = MSGraphPrinterProcessingStateDetailInputPickRollerLifeWarn;
    });
    return _inputPickRollerLifeWarn;
}
+ (MSGraphPrinterProcessingStateDetail*) inputPickRollerMissing {
    static MSGraphPrinterProcessingStateDetail *_inputPickRollerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputPickRollerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputPickRollerMissing.enumValue = MSGraphPrinterProcessingStateDetailInputPickRollerMissing;
    });
    return _inputPickRollerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) inputTrayElevationFailure {
    static MSGraphPrinterProcessingStateDetail *_inputTrayElevationFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputTrayElevationFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputTrayElevationFailure.enumValue = MSGraphPrinterProcessingStateDetailInputTrayElevationFailure;
    });
    return _inputTrayElevationFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inputTrayPositionFailure {
    static MSGraphPrinterProcessingStateDetail *_inputTrayPositionFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inputTrayPositionFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inputTrayPositionFailure.enumValue = MSGraphPrinterProcessingStateDetailInputTrayPositionFailure;
    });
    return _inputTrayPositionFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterAdded {
    static MSGraphPrinterProcessingStateDetail *_inserterAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterAdded.enumValue = MSGraphPrinterProcessingStateDetailInserterAdded;
    });
    return _inserterAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_inserterAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailInserterAlmostEmpty;
    });
    return _inserterAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_inserterAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailInserterAlmostFull;
    });
    return _inserterAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterAtLimit {
    static MSGraphPrinterProcessingStateDetail *_inserterAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterAtLimit.enumValue = MSGraphPrinterProcessingStateDetailInserterAtLimit;
    });
    return _inserterAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterClosed {
    static MSGraphPrinterProcessingStateDetail *_inserterClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterClosed.enumValue = MSGraphPrinterProcessingStateDetailInserterClosed;
    });
    return _inserterClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_inserterConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailInserterConfigurationChange;
    });
    return _inserterConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_inserterCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailInserterCoverClosed;
    });
    return _inserterCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_inserterCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailInserterCoverOpen;
    });
    return _inserterCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterEmpty {
    static MSGraphPrinterProcessingStateDetail *_inserterEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterEmpty.enumValue = MSGraphPrinterProcessingStateDetailInserterEmpty;
    });
    return _inserterEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterFull {
    static MSGraphPrinterProcessingStateDetail *_inserterFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterFull.enumValue = MSGraphPrinterProcessingStateDetailInserterFull;
    });
    return _inserterFull;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_inserterInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailInserterInterlockClosed;
    });
    return _inserterInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_inserterInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailInserterInterlockOpen;
    });
    return _inserterInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterJam {
    static MSGraphPrinterProcessingStateDetail *_inserterJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterJam.enumValue = MSGraphPrinterProcessingStateDetailInserterJam;
    });
    return _inserterJam;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_inserterLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailInserterLifeAlmostOver;
    });
    return _inserterLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterLifeOver {
    static MSGraphPrinterProcessingStateDetail *_inserterLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterLifeOver.enumValue = MSGraphPrinterProcessingStateDetailInserterLifeOver;
    });
    return _inserterLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_inserterMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailInserterMemoryExhausted;
    });
    return _inserterMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterMissing {
    static MSGraphPrinterProcessingStateDetail *_inserterMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterMissing.enumValue = MSGraphPrinterProcessingStateDetailInserterMissing;
    });
    return _inserterMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_inserterMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailInserterMotorFailure;
    });
    return _inserterMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterNearLimit {
    static MSGraphPrinterProcessingStateDetail *_inserterNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterNearLimit.enumValue = MSGraphPrinterProcessingStateDetailInserterNearLimit;
    });
    return _inserterNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterOffline {
    static MSGraphPrinterProcessingStateDetail *_inserterOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterOffline.enumValue = MSGraphPrinterProcessingStateDetailInserterOffline;
    });
    return _inserterOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterOpened {
    static MSGraphPrinterProcessingStateDetail *_inserterOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterOpened.enumValue = MSGraphPrinterProcessingStateDetailInserterOpened;
    });
    return _inserterOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_inserterOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailInserterOverTemperature;
    });
    return _inserterOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_inserterPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailInserterPowerSaver;
    });
    return _inserterPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_inserterRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailInserterRecoverableFailure;
    });
    return _inserterRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_inserterRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailInserterRecoverableStorage;
    });
    return _inserterRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterRemoved {
    static MSGraphPrinterProcessingStateDetail *_inserterRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterRemoved.enumValue = MSGraphPrinterProcessingStateDetailInserterRemoved;
    });
    return _inserterRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_inserterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailInserterResourceAdded;
    });
    return _inserterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_inserterResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailInserterResourceRemoved;
    });
    return _inserterResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_inserterThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailInserterThermistorFailure;
    });
    return _inserterThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_inserterTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailInserterTimingFailure;
    });
    return _inserterTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_inserterTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailInserterTurnedOff;
    });
    return _inserterTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_inserterTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailInserterTurnedOn;
    });
    return _inserterTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_inserterUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailInserterUnderTemperature;
    });
    return _inserterUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_inserterUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailInserterUnrecoverableFailure;
    });
    return _inserterUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_inserterUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailInserterUnrecoverableStorageError;
    });
    return _inserterUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) inserterWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_inserterWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inserterWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _inserterWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailInserterWarmingUp;
    });
    return _inserterWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) interlockClosed {
    static MSGraphPrinterProcessingStateDetail *_interlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interlockClosed.enumValue = MSGraphPrinterProcessingStateDetailInterlockClosed;
    });
    return _interlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterCartridgeAdded {
    static MSGraphPrinterProcessingStateDetail *_interpreterCartridgeAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterCartridgeAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterCartridgeAdded.enumValue = MSGraphPrinterProcessingStateDetailInterpreterCartridgeAdded;
    });
    return _interpreterCartridgeAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterCartridgeDeleted {
    static MSGraphPrinterProcessingStateDetail *_interpreterCartridgeDeleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterCartridgeDeleted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterCartridgeDeleted.enumValue = MSGraphPrinterProcessingStateDetailInterpreterCartridgeDeleted;
    });
    return _interpreterCartridgeDeleted;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterComplexPageEncountered {
    static MSGraphPrinterProcessingStateDetail *_interpreterComplexPageEncountered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterComplexPageEncountered = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterComplexPageEncountered.enumValue = MSGraphPrinterProcessingStateDetailInterpreterComplexPageEncountered;
    });
    return _interpreterComplexPageEncountered;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterMemoryDecrease {
    static MSGraphPrinterProcessingStateDetail *_interpreterMemoryDecrease;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterMemoryDecrease = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterMemoryDecrease.enumValue = MSGraphPrinterProcessingStateDetailInterpreterMemoryDecrease;
    });
    return _interpreterMemoryDecrease;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterMemoryIncrease {
    static MSGraphPrinterProcessingStateDetail *_interpreterMemoryIncrease;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterMemoryIncrease = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterMemoryIncrease.enumValue = MSGraphPrinterProcessingStateDetailInterpreterMemoryIncrease;
    });
    return _interpreterMemoryIncrease;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_interpreterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailInterpreterResourceAdded;
    });
    return _interpreterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) interpreterResourceDeleted {
    static MSGraphPrinterProcessingStateDetail *_interpreterResourceDeleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _interpreterResourceDeleted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _interpreterResourceDeleted.enumValue = MSGraphPrinterProcessingStateDetailInterpreterResourceDeleted;
    });
    return _interpreterResourceDeleted;
}
+ (MSGraphPrinterProcessingStateDetail*) lampAtEol {
    static MSGraphPrinterProcessingStateDetail *_lampAtEol;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lampAtEol = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _lampAtEol.enumValue = MSGraphPrinterProcessingStateDetailLampAtEol;
    });
    return _lampAtEol;
}
+ (MSGraphPrinterProcessingStateDetail*) lampFailure {
    static MSGraphPrinterProcessingStateDetail *_lampFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lampFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _lampFailure.enumValue = MSGraphPrinterProcessingStateDetailLampFailure;
    });
    return _lampFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) lampNearEol {
    static MSGraphPrinterProcessingStateDetail *_lampNearEol;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lampNearEol = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _lampNearEol.enumValue = MSGraphPrinterProcessingStateDetailLampNearEol;
    });
    return _lampNearEol;
}
+ (MSGraphPrinterProcessingStateDetail*) laserAtEol {
    static MSGraphPrinterProcessingStateDetail *_laserAtEol;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _laserAtEol = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _laserAtEol.enumValue = MSGraphPrinterProcessingStateDetailLaserAtEol;
    });
    return _laserAtEol;
}
+ (MSGraphPrinterProcessingStateDetail*) laserFailure {
    static MSGraphPrinterProcessingStateDetail *_laserFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _laserFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _laserFailure.enumValue = MSGraphPrinterProcessingStateDetailLaserFailure;
    });
    return _laserFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) laserNearEol {
    static MSGraphPrinterProcessingStateDetail *_laserNearEol;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _laserNearEol = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _laserNearEol.enumValue = MSGraphPrinterProcessingStateDetailLaserNearEol;
    });
    return _laserNearEol;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeAdded {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeAdded.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeAdded;
    });
    return _makeEnvelopeAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeAlmostEmpty;
    });
    return _makeEnvelopeAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeAlmostFull;
    });
    return _makeEnvelopeAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeAtLimit {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeAtLimit.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeAtLimit;
    });
    return _makeEnvelopeAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeClosed {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeClosed.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeClosed;
    });
    return _makeEnvelopeClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeConfigurationChange;
    });
    return _makeEnvelopeConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeCoverClosed;
    });
    return _makeEnvelopeCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeCoverOpen;
    });
    return _makeEnvelopeCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeEmpty {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeEmpty.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeEmpty;
    });
    return _makeEnvelopeEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeFull {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeFull.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeFull;
    });
    return _makeEnvelopeFull;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeInterlockClosed;
    });
    return _makeEnvelopeInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeInterlockOpen;
    });
    return _makeEnvelopeInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeJam {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeJam.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeJam;
    });
    return _makeEnvelopeJam;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeLifeAlmostOver;
    });
    return _makeEnvelopeLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeLifeOver {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeLifeOver.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeLifeOver;
    });
    return _makeEnvelopeLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeMemoryExhausted;
    });
    return _makeEnvelopeMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeMissing {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeMissing.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeMissing;
    });
    return _makeEnvelopeMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeMotorFailure;
    });
    return _makeEnvelopeMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeNearLimit {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeNearLimit.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeNearLimit;
    });
    return _makeEnvelopeNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeOffline {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeOffline.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeOffline;
    });
    return _makeEnvelopeOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeOpened {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeOpened.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeOpened;
    });
    return _makeEnvelopeOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeOverTemperature;
    });
    return _makeEnvelopeOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopePowerSaver {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopePowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopePowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopePowerSaver.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopePowerSaver;
    });
    return _makeEnvelopePowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeRecoverableFailure;
    });
    return _makeEnvelopeRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeRecoverableStorage;
    });
    return _makeEnvelopeRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeRemoved {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeRemoved.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeRemoved;
    });
    return _makeEnvelopeRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeResourceAdded;
    });
    return _makeEnvelopeResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeResourceRemoved;
    });
    return _makeEnvelopeResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeThermistorFailure;
    });
    return _makeEnvelopeThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeTimingFailure;
    });
    return _makeEnvelopeTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeTurnedOff;
    });
    return _makeEnvelopeTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeTurnedOn;
    });
    return _makeEnvelopeTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeUnderTemperature;
    });
    return _makeEnvelopeUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeUnrecoverableFailure;
    });
    return _makeEnvelopeUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeUnrecoverableStorageError;
    });
    return _makeEnvelopeUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) makeEnvelopeWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_makeEnvelopeWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _makeEnvelopeWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _makeEnvelopeWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailMakeEnvelopeWarmingUp;
    });
    return _makeEnvelopeWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) markerAdjustingPrintQuality {
    static MSGraphPrinterProcessingStateDetail *_markerAdjustingPrintQuality;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerAdjustingPrintQuality = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerAdjustingPrintQuality.enumValue = MSGraphPrinterProcessingStateDetailMarkerAdjustingPrintQuality;
    });
    return _markerAdjustingPrintQuality;
}
+ (MSGraphPrinterProcessingStateDetail*) markerCleanerMissing {
    static MSGraphPrinterProcessingStateDetail *_markerCleanerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerCleanerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerCleanerMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerCleanerMissing;
    });
    return _markerCleanerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerDeveloperAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerDeveloperAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerDeveloperAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerDeveloperAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerDeveloperAlmostEmpty;
    });
    return _markerDeveloperAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerDeveloperEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerDeveloperEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerDeveloperEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerDeveloperEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerDeveloperEmpty;
    });
    return _markerDeveloperEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerDeveloperMissing {
    static MSGraphPrinterProcessingStateDetail *_markerDeveloperMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerDeveloperMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerDeveloperMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerDeveloperMissing;
    });
    return _markerDeveloperMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerFuserMissing {
    static MSGraphPrinterProcessingStateDetail *_markerFuserMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerFuserMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerFuserMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerFuserMissing;
    });
    return _markerFuserMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerFuserThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_markerFuserThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerFuserThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerFuserThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailMarkerFuserThermistorFailure;
    });
    return _markerFuserThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) markerFuserTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_markerFuserTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerFuserTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerFuserTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailMarkerFuserTimingFailure;
    });
    return _markerFuserTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) markerInkAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerInkAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerInkAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerInkAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerInkAlmostEmpty;
    });
    return _markerInkAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerInkEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerInkEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerInkEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerInkEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerInkEmpty;
    });
    return _markerInkEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerInkMissing {
    static MSGraphPrinterProcessingStateDetail *_markerInkMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerInkMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerInkMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerInkMissing;
    });
    return _markerInkMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerOpcMissing {
    static MSGraphPrinterProcessingStateDetail *_markerOpcMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerOpcMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerOpcMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerOpcMissing;
    });
    return _markerOpcMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerPrintRibbonAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerPrintRibbonAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerPrintRibbonAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerPrintRibbonAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerPrintRibbonAlmostEmpty;
    });
    return _markerPrintRibbonAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerPrintRibbonEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerPrintRibbonEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerPrintRibbonEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerPrintRibbonEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerPrintRibbonEmpty;
    });
    return _markerPrintRibbonEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerPrintRibbonMissing {
    static MSGraphPrinterProcessingStateDetail *_markerPrintRibbonMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerPrintRibbonMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerPrintRibbonMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerPrintRibbonMissing;
    });
    return _markerPrintRibbonMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerSupplyAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_markerSupplyAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerSupplyAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerSupplyAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailMarkerSupplyAlmostEmpty;
    });
    return _markerSupplyAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) markerSupplyMissing {
    static MSGraphPrinterProcessingStateDetail *_markerSupplyMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerSupplyMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerSupplyMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerSupplyMissing;
    });
    return _markerSupplyMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerTonerCartridgeMissing {
    static MSGraphPrinterProcessingStateDetail *_markerTonerCartridgeMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerTonerCartridgeMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerTonerCartridgeMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerTonerCartridgeMissing;
    });
    return _markerTonerCartridgeMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerTonerMissing {
    static MSGraphPrinterProcessingStateDetail *_markerTonerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerTonerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerTonerMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerTonerMissing;
    });
    return _markerTonerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteInkReceptacleAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_markerWasteInkReceptacleAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteInkReceptacleAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteInkReceptacleAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleAlmostFull;
    });
    return _markerWasteInkReceptacleAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteInkReceptacleFull {
    static MSGraphPrinterProcessingStateDetail *_markerWasteInkReceptacleFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteInkReceptacleFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteInkReceptacleFull.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleFull;
    });
    return _markerWasteInkReceptacleFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteInkReceptacleMissing {
    static MSGraphPrinterProcessingStateDetail *_markerWasteInkReceptacleMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteInkReceptacleMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteInkReceptacleMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleMissing;
    });
    return _markerWasteInkReceptacleMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteMissing {
    static MSGraphPrinterProcessingStateDetail *_markerWasteMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteMissing;
    });
    return _markerWasteMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteTonerReceptacleAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_markerWasteTonerReceptacleAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteTonerReceptacleAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteTonerReceptacleAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleAlmostFull;
    });
    return _markerWasteTonerReceptacleAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteTonerReceptacleFull {
    static MSGraphPrinterProcessingStateDetail *_markerWasteTonerReceptacleFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteTonerReceptacleFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteTonerReceptacleFull.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleFull;
    });
    return _markerWasteTonerReceptacleFull;
}
+ (MSGraphPrinterProcessingStateDetail*) markerWasteTonerReceptacleMissing {
    static MSGraphPrinterProcessingStateDetail *_markerWasteTonerReceptacleMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _markerWasteTonerReceptacleMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _markerWasteTonerReceptacleMissing.enumValue = MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleMissing;
    });
    return _markerWasteTonerReceptacleMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) materialEmpty {
    static MSGraphPrinterProcessingStateDetail *_materialEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _materialEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _materialEmpty.enumValue = MSGraphPrinterProcessingStateDetailMaterialEmpty;
    });
    return _materialEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) materialLow {
    static MSGraphPrinterProcessingStateDetail *_materialLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _materialLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _materialLow.enumValue = MSGraphPrinterProcessingStateDetailMaterialLow;
    });
    return _materialLow;
}
+ (MSGraphPrinterProcessingStateDetail*) materialNeeded {
    static MSGraphPrinterProcessingStateDetail *_materialNeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _materialNeeded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _materialNeeded.enumValue = MSGraphPrinterProcessingStateDetailMaterialNeeded;
    });
    return _materialNeeded;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaDrying {
    static MSGraphPrinterProcessingStateDetail *_mediaDrying;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaDrying = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaDrying.enumValue = MSGraphPrinterProcessingStateDetailMediaDrying;
    });
    return _mediaDrying;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathCannotDuplexMediaSelected {
    static MSGraphPrinterProcessingStateDetail *_mediaPathCannotDuplexMediaSelected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathCannotDuplexMediaSelected = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathCannotDuplexMediaSelected.enumValue = MSGraphPrinterProcessingStateDetailMediaPathCannotDuplexMediaSelected;
    });
    return _mediaPathCannotDuplexMediaSelected;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathFailure {
    static MSGraphPrinterProcessingStateDetail *_mediaPathFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathFailure.enumValue = MSGraphPrinterProcessingStateDetailMediaPathFailure;
    });
    return _mediaPathFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathInputEmpty {
    static MSGraphPrinterProcessingStateDetail *_mediaPathInputEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathInputEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathInputEmpty.enumValue = MSGraphPrinterProcessingStateDetailMediaPathInputEmpty;
    });
    return _mediaPathInputEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathInputFeedError {
    static MSGraphPrinterProcessingStateDetail *_mediaPathInputFeedError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathInputFeedError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathInputFeedError.enumValue = MSGraphPrinterProcessingStateDetailMediaPathInputFeedError;
    });
    return _mediaPathInputFeedError;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathInputJam {
    static MSGraphPrinterProcessingStateDetail *_mediaPathInputJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathInputJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathInputJam.enumValue = MSGraphPrinterProcessingStateDetailMediaPathInputJam;
    });
    return _mediaPathInputJam;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathInputRequest {
    static MSGraphPrinterProcessingStateDetail *_mediaPathInputRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathInputRequest = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathInputRequest.enumValue = MSGraphPrinterProcessingStateDetailMediaPathInputRequest;
    });
    return _mediaPathInputRequest;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathJam {
    static MSGraphPrinterProcessingStateDetail *_mediaPathJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathJam.enumValue = MSGraphPrinterProcessingStateDetailMediaPathJam;
    });
    return _mediaPathJam;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathMediaTrayAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_mediaPathMediaTrayAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathMediaTrayAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathMediaTrayAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailMediaPathMediaTrayAlmostFull;
    });
    return _mediaPathMediaTrayAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathMediaTrayFull {
    static MSGraphPrinterProcessingStateDetail *_mediaPathMediaTrayFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathMediaTrayFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathMediaTrayFull.enumValue = MSGraphPrinterProcessingStateDetailMediaPathMediaTrayFull;
    });
    return _mediaPathMediaTrayFull;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathMediaTrayMissing {
    static MSGraphPrinterProcessingStateDetail *_mediaPathMediaTrayMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathMediaTrayMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathMediaTrayMissing.enumValue = MSGraphPrinterProcessingStateDetailMediaPathMediaTrayMissing;
    });
    return _mediaPathMediaTrayMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathOutputFeedError {
    static MSGraphPrinterProcessingStateDetail *_mediaPathOutputFeedError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathOutputFeedError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathOutputFeedError.enumValue = MSGraphPrinterProcessingStateDetailMediaPathOutputFeedError;
    });
    return _mediaPathOutputFeedError;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathOutputFull {
    static MSGraphPrinterProcessingStateDetail *_mediaPathOutputFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathOutputFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathOutputFull.enumValue = MSGraphPrinterProcessingStateDetailMediaPathOutputFull;
    });
    return _mediaPathOutputFull;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathOutputJam {
    static MSGraphPrinterProcessingStateDetail *_mediaPathOutputJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathOutputJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathOutputJam.enumValue = MSGraphPrinterProcessingStateDetailMediaPathOutputJam;
    });
    return _mediaPathOutputJam;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathPickRollerFailure {
    static MSGraphPrinterProcessingStateDetail *_mediaPathPickRollerFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathPickRollerFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathPickRollerFailure.enumValue = MSGraphPrinterProcessingStateDetailMediaPathPickRollerFailure;
    });
    return _mediaPathPickRollerFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathPickRollerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_mediaPathPickRollerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathPickRollerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathPickRollerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailMediaPathPickRollerLifeOver;
    });
    return _mediaPathPickRollerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathPickRollerLifeWarn {
    static MSGraphPrinterProcessingStateDetail *_mediaPathPickRollerLifeWarn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathPickRollerLifeWarn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathPickRollerLifeWarn.enumValue = MSGraphPrinterProcessingStateDetailMediaPathPickRollerLifeWarn;
    });
    return _mediaPathPickRollerLifeWarn;
}
+ (MSGraphPrinterProcessingStateDetail*) mediaPathPickRollerMissing {
    static MSGraphPrinterProcessingStateDetail *_mediaPathPickRollerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediaPathPickRollerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _mediaPathPickRollerMissing.enumValue = MSGraphPrinterProcessingStateDetailMediaPathPickRollerMissing;
    });
    return _mediaPathPickRollerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) motorFailure {
    static MSGraphPrinterProcessingStateDetail *_motorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _motorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _motorFailure.enumValue = MSGraphPrinterProcessingStateDetailMotorFailure;
    });
    return _motorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) outputMailboxSelectFailure {
    static MSGraphPrinterProcessingStateDetail *_outputMailboxSelectFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputMailboxSelectFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputMailboxSelectFailure.enumValue = MSGraphPrinterProcessingStateDetailOutputMailboxSelectFailure;
    });
    return _outputMailboxSelectFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) outputMediaTrayFailure {
    static MSGraphPrinterProcessingStateDetail *_outputMediaTrayFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputMediaTrayFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputMediaTrayFailure.enumValue = MSGraphPrinterProcessingStateDetailOutputMediaTrayFailure;
    });
    return _outputMediaTrayFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) outputMediaTrayFeedError {
    static MSGraphPrinterProcessingStateDetail *_outputMediaTrayFeedError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputMediaTrayFeedError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputMediaTrayFeedError.enumValue = MSGraphPrinterProcessingStateDetailOutputMediaTrayFeedError;
    });
    return _outputMediaTrayFeedError;
}
+ (MSGraphPrinterProcessingStateDetail*) outputMediaTrayJam {
    static MSGraphPrinterProcessingStateDetail *_outputMediaTrayJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outputMediaTrayJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _outputMediaTrayJam.enumValue = MSGraphPrinterProcessingStateDetailOutputMediaTrayJam;
    });
    return _outputMediaTrayJam;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterAdded {
    static MSGraphPrinterProcessingStateDetail *_perforaterAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterAdded.enumValue = MSGraphPrinterProcessingStateDetailPerforaterAdded;
    });
    return _perforaterAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_perforaterAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailPerforaterAlmostEmpty;
    });
    return _perforaterAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_perforaterAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailPerforaterAlmostFull;
    });
    return _perforaterAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterAtLimit {
    static MSGraphPrinterProcessingStateDetail *_perforaterAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterAtLimit.enumValue = MSGraphPrinterProcessingStateDetailPerforaterAtLimit;
    });
    return _perforaterAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterClosed {
    static MSGraphPrinterProcessingStateDetail *_perforaterClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterClosed.enumValue = MSGraphPrinterProcessingStateDetailPerforaterClosed;
    });
    return _perforaterClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_perforaterConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailPerforaterConfigurationChange;
    });
    return _perforaterConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_perforaterCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailPerforaterCoverClosed;
    });
    return _perforaterCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_perforaterCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailPerforaterCoverOpen;
    });
    return _perforaterCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterEmpty {
    static MSGraphPrinterProcessingStateDetail *_perforaterEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterEmpty.enumValue = MSGraphPrinterProcessingStateDetailPerforaterEmpty;
    });
    return _perforaterEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterFull {
    static MSGraphPrinterProcessingStateDetail *_perforaterFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterFull.enumValue = MSGraphPrinterProcessingStateDetailPerforaterFull;
    });
    return _perforaterFull;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_perforaterInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailPerforaterInterlockClosed;
    });
    return _perforaterInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_perforaterInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailPerforaterInterlockOpen;
    });
    return _perforaterInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterJam {
    static MSGraphPrinterProcessingStateDetail *_perforaterJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterJam.enumValue = MSGraphPrinterProcessingStateDetailPerforaterJam;
    });
    return _perforaterJam;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_perforaterLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailPerforaterLifeAlmostOver;
    });
    return _perforaterLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterLifeOver {
    static MSGraphPrinterProcessingStateDetail *_perforaterLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterLifeOver.enumValue = MSGraphPrinterProcessingStateDetailPerforaterLifeOver;
    });
    return _perforaterLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_perforaterMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailPerforaterMemoryExhausted;
    });
    return _perforaterMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterMissing {
    static MSGraphPrinterProcessingStateDetail *_perforaterMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterMissing.enumValue = MSGraphPrinterProcessingStateDetailPerforaterMissing;
    });
    return _perforaterMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_perforaterMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailPerforaterMotorFailure;
    });
    return _perforaterMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterNearLimit {
    static MSGraphPrinterProcessingStateDetail *_perforaterNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterNearLimit.enumValue = MSGraphPrinterProcessingStateDetailPerforaterNearLimit;
    });
    return _perforaterNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterOffline {
    static MSGraphPrinterProcessingStateDetail *_perforaterOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterOffline.enumValue = MSGraphPrinterProcessingStateDetailPerforaterOffline;
    });
    return _perforaterOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterOpened {
    static MSGraphPrinterProcessingStateDetail *_perforaterOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterOpened.enumValue = MSGraphPrinterProcessingStateDetailPerforaterOpened;
    });
    return _perforaterOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_perforaterOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailPerforaterOverTemperature;
    });
    return _perforaterOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_perforaterPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailPerforaterPowerSaver;
    });
    return _perforaterPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_perforaterRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailPerforaterRecoverableFailure;
    });
    return _perforaterRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_perforaterRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailPerforaterRecoverableStorage;
    });
    return _perforaterRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterRemoved {
    static MSGraphPrinterProcessingStateDetail *_perforaterRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterRemoved.enumValue = MSGraphPrinterProcessingStateDetailPerforaterRemoved;
    });
    return _perforaterRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_perforaterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailPerforaterResourceAdded;
    });
    return _perforaterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_perforaterResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailPerforaterResourceRemoved;
    });
    return _perforaterResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_perforaterThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailPerforaterThermistorFailure;
    });
    return _perforaterThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_perforaterTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailPerforaterTimingFailure;
    });
    return _perforaterTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_perforaterTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailPerforaterTurnedOff;
    });
    return _perforaterTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_perforaterTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailPerforaterTurnedOn;
    });
    return _perforaterTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_perforaterUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailPerforaterUnderTemperature;
    });
    return _perforaterUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_perforaterUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailPerforaterUnrecoverableFailure;
    });
    return _perforaterUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_perforaterUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailPerforaterUnrecoverableStorageError;
    });
    return _perforaterUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) perforaterWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_perforaterWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perforaterWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _perforaterWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailPerforaterWarmingUp;
    });
    return _perforaterWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) platformCooling {
    static MSGraphPrinterProcessingStateDetail *_platformCooling;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _platformCooling = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _platformCooling.enumValue = MSGraphPrinterProcessingStateDetailPlatformCooling;
    });
    return _platformCooling;
}
+ (MSGraphPrinterProcessingStateDetail*) platformFailure {
    static MSGraphPrinterProcessingStateDetail *_platformFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _platformFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _platformFailure.enumValue = MSGraphPrinterProcessingStateDetailPlatformFailure;
    });
    return _platformFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) platformHeating {
    static MSGraphPrinterProcessingStateDetail *_platformHeating;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _platformHeating = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _platformHeating.enumValue = MSGraphPrinterProcessingStateDetailPlatformHeating;
    });
    return _platformHeating;
}
+ (MSGraphPrinterProcessingStateDetail*) platformTemperatureHigh {
    static MSGraphPrinterProcessingStateDetail *_platformTemperatureHigh;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _platformTemperatureHigh = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _platformTemperatureHigh.enumValue = MSGraphPrinterProcessingStateDetailPlatformTemperatureHigh;
    });
    return _platformTemperatureHigh;
}
+ (MSGraphPrinterProcessingStateDetail*) platformTemperatureLow {
    static MSGraphPrinterProcessingStateDetail *_platformTemperatureLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _platformTemperatureLow = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _platformTemperatureLow.enumValue = MSGraphPrinterProcessingStateDetailPlatformTemperatureLow;
    });
    return _platformTemperatureLow;
}
+ (MSGraphPrinterProcessingStateDetail*) powerDown {
    static MSGraphPrinterProcessingStateDetail *_powerDown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _powerDown = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _powerDown.enumValue = MSGraphPrinterProcessingStateDetailPowerDown;
    });
    return _powerDown;
}
+ (MSGraphPrinterProcessingStateDetail*) powerUp {
    static MSGraphPrinterProcessingStateDetail *_powerUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _powerUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _powerUp.enumValue = MSGraphPrinterProcessingStateDetailPowerUp;
    });
    return _powerUp;
}
+ (MSGraphPrinterProcessingStateDetail*) printerManualReset {
    static MSGraphPrinterProcessingStateDetail *_printerManualReset;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _printerManualReset = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _printerManualReset.enumValue = MSGraphPrinterProcessingStateDetailPrinterManualReset;
    });
    return _printerManualReset;
}
+ (MSGraphPrinterProcessingStateDetail*) printerNmsReset {
    static MSGraphPrinterProcessingStateDetail *_printerNmsReset;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _printerNmsReset = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _printerNmsReset.enumValue = MSGraphPrinterProcessingStateDetailPrinterNmsReset;
    });
    return _printerNmsReset;
}
+ (MSGraphPrinterProcessingStateDetail*) printerReadyToPrint {
    static MSGraphPrinterProcessingStateDetail *_printerReadyToPrint;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _printerReadyToPrint = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _printerReadyToPrint.enumValue = MSGraphPrinterProcessingStateDetailPrinterReadyToPrint;
    });
    return _printerReadyToPrint;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherAdded {
    static MSGraphPrinterProcessingStateDetail *_puncherAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherAdded.enumValue = MSGraphPrinterProcessingStateDetailPuncherAdded;
    });
    return _puncherAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_puncherAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailPuncherAlmostEmpty;
    });
    return _puncherAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_puncherAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailPuncherAlmostFull;
    });
    return _puncherAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherAtLimit {
    static MSGraphPrinterProcessingStateDetail *_puncherAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherAtLimit.enumValue = MSGraphPrinterProcessingStateDetailPuncherAtLimit;
    });
    return _puncherAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherClosed {
    static MSGraphPrinterProcessingStateDetail *_puncherClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherClosed.enumValue = MSGraphPrinterProcessingStateDetailPuncherClosed;
    });
    return _puncherClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_puncherConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailPuncherConfigurationChange;
    });
    return _puncherConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_puncherCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailPuncherCoverClosed;
    });
    return _puncherCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_puncherCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailPuncherCoverOpen;
    });
    return _puncherCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherEmpty {
    static MSGraphPrinterProcessingStateDetail *_puncherEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherEmpty.enumValue = MSGraphPrinterProcessingStateDetailPuncherEmpty;
    });
    return _puncherEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherFull {
    static MSGraphPrinterProcessingStateDetail *_puncherFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherFull.enumValue = MSGraphPrinterProcessingStateDetailPuncherFull;
    });
    return _puncherFull;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_puncherInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailPuncherInterlockClosed;
    });
    return _puncherInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_puncherInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailPuncherInterlockOpen;
    });
    return _puncherInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherJam {
    static MSGraphPrinterProcessingStateDetail *_puncherJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherJam.enumValue = MSGraphPrinterProcessingStateDetailPuncherJam;
    });
    return _puncherJam;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_puncherLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailPuncherLifeAlmostOver;
    });
    return _puncherLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherLifeOver {
    static MSGraphPrinterProcessingStateDetail *_puncherLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherLifeOver.enumValue = MSGraphPrinterProcessingStateDetailPuncherLifeOver;
    });
    return _puncherLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_puncherMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailPuncherMemoryExhausted;
    });
    return _puncherMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherMissing {
    static MSGraphPrinterProcessingStateDetail *_puncherMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherMissing.enumValue = MSGraphPrinterProcessingStateDetailPuncherMissing;
    });
    return _puncherMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_puncherMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailPuncherMotorFailure;
    });
    return _puncherMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherNearLimit {
    static MSGraphPrinterProcessingStateDetail *_puncherNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherNearLimit.enumValue = MSGraphPrinterProcessingStateDetailPuncherNearLimit;
    });
    return _puncherNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherOffline {
    static MSGraphPrinterProcessingStateDetail *_puncherOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherOffline.enumValue = MSGraphPrinterProcessingStateDetailPuncherOffline;
    });
    return _puncherOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherOpened {
    static MSGraphPrinterProcessingStateDetail *_puncherOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherOpened.enumValue = MSGraphPrinterProcessingStateDetailPuncherOpened;
    });
    return _puncherOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_puncherOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailPuncherOverTemperature;
    });
    return _puncherOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_puncherPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailPuncherPowerSaver;
    });
    return _puncherPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_puncherRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailPuncherRecoverableFailure;
    });
    return _puncherRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_puncherRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailPuncherRecoverableStorage;
    });
    return _puncherRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherRemoved {
    static MSGraphPrinterProcessingStateDetail *_puncherRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherRemoved.enumValue = MSGraphPrinterProcessingStateDetailPuncherRemoved;
    });
    return _puncherRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_puncherResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailPuncherResourceAdded;
    });
    return _puncherResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_puncherResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailPuncherResourceRemoved;
    });
    return _puncherResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_puncherThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailPuncherThermistorFailure;
    });
    return _puncherThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_puncherTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailPuncherTimingFailure;
    });
    return _puncherTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_puncherTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailPuncherTurnedOff;
    });
    return _puncherTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_puncherTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailPuncherTurnedOn;
    });
    return _puncherTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_puncherUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailPuncherUnderTemperature;
    });
    return _puncherUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_puncherUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailPuncherUnrecoverableFailure;
    });
    return _puncherUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_puncherUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailPuncherUnrecoverableStorageError;
    });
    return _puncherUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) puncherWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_puncherWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _puncherWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _puncherWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailPuncherWarmingUp;
    });
    return _puncherWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) resuming {
    static MSGraphPrinterProcessingStateDetail *_resuming;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _resuming = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _resuming.enumValue = MSGraphPrinterProcessingStateDetailResuming;
    });
    return _resuming;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathFailure {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathFailure.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathFailure;
    });
    return _scanMediaPathFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathInputEmpty {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathInputEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathInputEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathInputEmpty.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathInputEmpty;
    });
    return _scanMediaPathInputEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathInputFeedError {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathInputFeedError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathInputFeedError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathInputFeedError.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathInputFeedError;
    });
    return _scanMediaPathInputFeedError;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathInputJam {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathInputJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathInputJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathInputJam.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathInputJam;
    });
    return _scanMediaPathInputJam;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathInputRequest {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathInputRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathInputRequest = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathInputRequest.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathInputRequest;
    });
    return _scanMediaPathInputRequest;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathJam {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathJam.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathJam;
    });
    return _scanMediaPathJam;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathOutputFeedError {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathOutputFeedError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathOutputFeedError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathOutputFeedError.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathOutputFeedError;
    });
    return _scanMediaPathOutputFeedError;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathOutputFull {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathOutputFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathOutputFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathOutputFull.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathOutputFull;
    });
    return _scanMediaPathOutputFull;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathOutputJam {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathOutputJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathOutputJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathOutputJam.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathOutputJam;
    });
    return _scanMediaPathOutputJam;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathPickRollerFailure {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathPickRollerFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathPickRollerFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathPickRollerFailure.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerFailure;
    });
    return _scanMediaPathPickRollerFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathPickRollerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathPickRollerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathPickRollerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathPickRollerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerLifeOver;
    });
    return _scanMediaPathPickRollerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathPickRollerLifeWarn {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathPickRollerLifeWarn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathPickRollerLifeWarn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathPickRollerLifeWarn.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerLifeWarn;
    });
    return _scanMediaPathPickRollerLifeWarn;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathPickRollerMissing {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathPickRollerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathPickRollerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathPickRollerMissing.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerMissing;
    });
    return _scanMediaPathPickRollerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathTrayAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathTrayAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathTrayAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathTrayAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathTrayAlmostFull;
    });
    return _scanMediaPathTrayAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathTrayFull {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathTrayFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathTrayFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathTrayFull.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathTrayFull;
    });
    return _scanMediaPathTrayFull;
}
+ (MSGraphPrinterProcessingStateDetail*) scanMediaPathTrayMissing {
    static MSGraphPrinterProcessingStateDetail *_scanMediaPathTrayMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scanMediaPathTrayMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scanMediaPathTrayMissing.enumValue = MSGraphPrinterProcessingStateDetailScanMediaPathTrayMissing;
    });
    return _scanMediaPathTrayMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerLightFailure {
    static MSGraphPrinterProcessingStateDetail *_scannerLightFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerLightFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerLightFailure.enumValue = MSGraphPrinterProcessingStateDetailScannerLightFailure;
    });
    return _scannerLightFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerLightLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_scannerLightLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerLightLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerLightLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailScannerLightLifeAlmostOver;
    });
    return _scannerLightLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerLightLifeOver {
    static MSGraphPrinterProcessingStateDetail *_scannerLightLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerLightLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerLightLifeOver.enumValue = MSGraphPrinterProcessingStateDetailScannerLightLifeOver;
    });
    return _scannerLightLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerLightMissing {
    static MSGraphPrinterProcessingStateDetail *_scannerLightMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerLightMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerLightMissing.enumValue = MSGraphPrinterProcessingStateDetailScannerLightMissing;
    });
    return _scannerLightMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerSensorFailure {
    static MSGraphPrinterProcessingStateDetail *_scannerSensorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerSensorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerSensorFailure.enumValue = MSGraphPrinterProcessingStateDetailScannerSensorFailure;
    });
    return _scannerSensorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerSensorLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_scannerSensorLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerSensorLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerSensorLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailScannerSensorLifeAlmostOver;
    });
    return _scannerSensorLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerSensorLifeOver {
    static MSGraphPrinterProcessingStateDetail *_scannerSensorLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerSensorLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerSensorLifeOver.enumValue = MSGraphPrinterProcessingStateDetailScannerSensorLifeOver;
    });
    return _scannerSensorLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) scannerSensorMissing {
    static MSGraphPrinterProcessingStateDetail *_scannerSensorMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scannerSensorMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _scannerSensorMissing.enumValue = MSGraphPrinterProcessingStateDetailScannerSensorMissing;
    });
    return _scannerSensorMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterAdded {
    static MSGraphPrinterProcessingStateDetail *_separationCutterAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterAdded.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterAdded;
    });
    return _separationCutterAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_separationCutterAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterAlmostEmpty;
    });
    return _separationCutterAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_separationCutterAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterAlmostFull;
    });
    return _separationCutterAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterAtLimit {
    static MSGraphPrinterProcessingStateDetail *_separationCutterAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterAtLimit.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterAtLimit;
    });
    return _separationCutterAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterClosed {
    static MSGraphPrinterProcessingStateDetail *_separationCutterClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterClosed.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterClosed;
    });
    return _separationCutterClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_separationCutterConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterConfigurationChange;
    });
    return _separationCutterConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_separationCutterCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterCoverClosed;
    });
    return _separationCutterCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_separationCutterCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterCoverOpen;
    });
    return _separationCutterCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterEmpty {
    static MSGraphPrinterProcessingStateDetail *_separationCutterEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterEmpty.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterEmpty;
    });
    return _separationCutterEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterFull {
    static MSGraphPrinterProcessingStateDetail *_separationCutterFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterFull.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterFull;
    });
    return _separationCutterFull;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_separationCutterInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterInterlockClosed;
    });
    return _separationCutterInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_separationCutterInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterInterlockOpen;
    });
    return _separationCutterInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterJam {
    static MSGraphPrinterProcessingStateDetail *_separationCutterJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterJam.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterJam;
    });
    return _separationCutterJam;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_separationCutterLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterLifeAlmostOver;
    });
    return _separationCutterLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterLifeOver {
    static MSGraphPrinterProcessingStateDetail *_separationCutterLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterLifeOver.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterLifeOver;
    });
    return _separationCutterLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_separationCutterMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterMemoryExhausted;
    });
    return _separationCutterMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterMissing {
    static MSGraphPrinterProcessingStateDetail *_separationCutterMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterMissing.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterMissing;
    });
    return _separationCutterMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_separationCutterMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterMotorFailure;
    });
    return _separationCutterMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterNearLimit {
    static MSGraphPrinterProcessingStateDetail *_separationCutterNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterNearLimit.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterNearLimit;
    });
    return _separationCutterNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterOffline {
    static MSGraphPrinterProcessingStateDetail *_separationCutterOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterOffline.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterOffline;
    });
    return _separationCutterOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterOpened {
    static MSGraphPrinterProcessingStateDetail *_separationCutterOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterOpened.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterOpened;
    });
    return _separationCutterOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_separationCutterOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterOverTemperature;
    });
    return _separationCutterOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_separationCutterPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterPowerSaver;
    });
    return _separationCutterPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_separationCutterRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterRecoverableFailure;
    });
    return _separationCutterRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_separationCutterRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterRecoverableStorage;
    });
    return _separationCutterRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterRemoved {
    static MSGraphPrinterProcessingStateDetail *_separationCutterRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterRemoved.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterRemoved;
    });
    return _separationCutterRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_separationCutterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterResourceAdded;
    });
    return _separationCutterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_separationCutterResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterResourceRemoved;
    });
    return _separationCutterResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_separationCutterThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterThermistorFailure;
    });
    return _separationCutterThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_separationCutterTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterTimingFailure;
    });
    return _separationCutterTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_separationCutterTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterTurnedOff;
    });
    return _separationCutterTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_separationCutterTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterTurnedOn;
    });
    return _separationCutterTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_separationCutterUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterUnderTemperature;
    });
    return _separationCutterUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_separationCutterUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterUnrecoverableFailure;
    });
    return _separationCutterUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_separationCutterUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterUnrecoverableStorageError;
    });
    return _separationCutterUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) separationCutterWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_separationCutterWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _separationCutterWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _separationCutterWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailSeparationCutterWarmingUp;
    });
    return _separationCutterWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorAdded {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorAdded.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorAdded;
    });
    return _sheetRotatorAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorAlmostEmpty;
    });
    return _sheetRotatorAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorAlmostFull;
    });
    return _sheetRotatorAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorAtLimit {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorAtLimit.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorAtLimit;
    });
    return _sheetRotatorAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorClosed {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorClosed.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorClosed;
    });
    return _sheetRotatorClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorConfigurationChange;
    });
    return _sheetRotatorConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorCoverClosed;
    });
    return _sheetRotatorCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorCoverOpen;
    });
    return _sheetRotatorCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorEmpty {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorEmpty.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorEmpty;
    });
    return _sheetRotatorEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorFull {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorFull.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorFull;
    });
    return _sheetRotatorFull;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorInterlockClosed;
    });
    return _sheetRotatorInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorInterlockOpen;
    });
    return _sheetRotatorInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorJam {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorJam.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorJam;
    });
    return _sheetRotatorJam;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorLifeAlmostOver;
    });
    return _sheetRotatorLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorLifeOver {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorLifeOver.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorLifeOver;
    });
    return _sheetRotatorLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorMemoryExhausted;
    });
    return _sheetRotatorMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorMissing {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorMissing.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorMissing;
    });
    return _sheetRotatorMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorMotorFailure;
    });
    return _sheetRotatorMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorNearLimit {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorNearLimit.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorNearLimit;
    });
    return _sheetRotatorNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorOffline {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorOffline.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorOffline;
    });
    return _sheetRotatorOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorOpened {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorOpened.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorOpened;
    });
    return _sheetRotatorOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorOverTemperature;
    });
    return _sheetRotatorOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorPowerSaver;
    });
    return _sheetRotatorPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorRecoverableFailure;
    });
    return _sheetRotatorRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorRecoverableStorage;
    });
    return _sheetRotatorRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorRemoved {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorRemoved.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorRemoved;
    });
    return _sheetRotatorRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorResourceAdded;
    });
    return _sheetRotatorResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorResourceRemoved;
    });
    return _sheetRotatorResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorThermistorFailure;
    });
    return _sheetRotatorThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorTimingFailure;
    });
    return _sheetRotatorTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorTurnedOff;
    });
    return _sheetRotatorTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorTurnedOn;
    });
    return _sheetRotatorTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorUnderTemperature;
    });
    return _sheetRotatorUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorUnrecoverableFailure;
    });
    return _sheetRotatorUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorUnrecoverableStorageError;
    });
    return _sheetRotatorUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) sheetRotatorWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_sheetRotatorWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sheetRotatorWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _sheetRotatorWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailSheetRotatorWarmingUp;
    });
    return _sheetRotatorWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterAdded {
    static MSGraphPrinterProcessingStateDetail *_slitterAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterAdded.enumValue = MSGraphPrinterProcessingStateDetailSlitterAdded;
    });
    return _slitterAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_slitterAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailSlitterAlmostEmpty;
    });
    return _slitterAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_slitterAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailSlitterAlmostFull;
    });
    return _slitterAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterAtLimit {
    static MSGraphPrinterProcessingStateDetail *_slitterAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterAtLimit.enumValue = MSGraphPrinterProcessingStateDetailSlitterAtLimit;
    });
    return _slitterAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterClosed {
    static MSGraphPrinterProcessingStateDetail *_slitterClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterClosed.enumValue = MSGraphPrinterProcessingStateDetailSlitterClosed;
    });
    return _slitterClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_slitterConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailSlitterConfigurationChange;
    });
    return _slitterConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_slitterCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailSlitterCoverClosed;
    });
    return _slitterCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_slitterCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailSlitterCoverOpen;
    });
    return _slitterCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterEmpty {
    static MSGraphPrinterProcessingStateDetail *_slitterEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterEmpty.enumValue = MSGraphPrinterProcessingStateDetailSlitterEmpty;
    });
    return _slitterEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterFull {
    static MSGraphPrinterProcessingStateDetail *_slitterFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterFull.enumValue = MSGraphPrinterProcessingStateDetailSlitterFull;
    });
    return _slitterFull;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_slitterInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailSlitterInterlockClosed;
    });
    return _slitterInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_slitterInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailSlitterInterlockOpen;
    });
    return _slitterInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterJam {
    static MSGraphPrinterProcessingStateDetail *_slitterJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterJam.enumValue = MSGraphPrinterProcessingStateDetailSlitterJam;
    });
    return _slitterJam;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_slitterLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailSlitterLifeAlmostOver;
    });
    return _slitterLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterLifeOver {
    static MSGraphPrinterProcessingStateDetail *_slitterLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterLifeOver.enumValue = MSGraphPrinterProcessingStateDetailSlitterLifeOver;
    });
    return _slitterLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_slitterMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailSlitterMemoryExhausted;
    });
    return _slitterMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterMissing {
    static MSGraphPrinterProcessingStateDetail *_slitterMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterMissing.enumValue = MSGraphPrinterProcessingStateDetailSlitterMissing;
    });
    return _slitterMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_slitterMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailSlitterMotorFailure;
    });
    return _slitterMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterNearLimit {
    static MSGraphPrinterProcessingStateDetail *_slitterNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterNearLimit.enumValue = MSGraphPrinterProcessingStateDetailSlitterNearLimit;
    });
    return _slitterNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterOffline {
    static MSGraphPrinterProcessingStateDetail *_slitterOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterOffline.enumValue = MSGraphPrinterProcessingStateDetailSlitterOffline;
    });
    return _slitterOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterOpened {
    static MSGraphPrinterProcessingStateDetail *_slitterOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterOpened.enumValue = MSGraphPrinterProcessingStateDetailSlitterOpened;
    });
    return _slitterOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_slitterOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailSlitterOverTemperature;
    });
    return _slitterOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_slitterPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailSlitterPowerSaver;
    });
    return _slitterPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_slitterRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSlitterRecoverableFailure;
    });
    return _slitterRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_slitterRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailSlitterRecoverableStorage;
    });
    return _slitterRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterRemoved {
    static MSGraphPrinterProcessingStateDetail *_slitterRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterRemoved.enumValue = MSGraphPrinterProcessingStateDetailSlitterRemoved;
    });
    return _slitterRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_slitterResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailSlitterResourceAdded;
    });
    return _slitterResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_slitterResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailSlitterResourceRemoved;
    });
    return _slitterResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_slitterThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailSlitterThermistorFailure;
    });
    return _slitterThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_slitterTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailSlitterTimingFailure;
    });
    return _slitterTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_slitterTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailSlitterTurnedOff;
    });
    return _slitterTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_slitterTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailSlitterTurnedOn;
    });
    return _slitterTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_slitterUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailSlitterUnderTemperature;
    });
    return _slitterUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_slitterUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSlitterUnrecoverableFailure;
    });
    return _slitterUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_slitterUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailSlitterUnrecoverableStorageError;
    });
    return _slitterUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) slitterWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_slitterWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _slitterWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _slitterWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailSlitterWarmingUp;
    });
    return _slitterWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerAdded {
    static MSGraphPrinterProcessingStateDetail *_stackerAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerAdded.enumValue = MSGraphPrinterProcessingStateDetailStackerAdded;
    });
    return _stackerAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_stackerAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailStackerAlmostEmpty;
    });
    return _stackerAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_stackerAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailStackerAlmostFull;
    });
    return _stackerAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerAtLimit {
    static MSGraphPrinterProcessingStateDetail *_stackerAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerAtLimit.enumValue = MSGraphPrinterProcessingStateDetailStackerAtLimit;
    });
    return _stackerAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerClosed {
    static MSGraphPrinterProcessingStateDetail *_stackerClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerClosed.enumValue = MSGraphPrinterProcessingStateDetailStackerClosed;
    });
    return _stackerClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_stackerConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailStackerConfigurationChange;
    });
    return _stackerConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_stackerCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailStackerCoverClosed;
    });
    return _stackerCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_stackerCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailStackerCoverOpen;
    });
    return _stackerCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerEmpty {
    static MSGraphPrinterProcessingStateDetail *_stackerEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerEmpty.enumValue = MSGraphPrinterProcessingStateDetailStackerEmpty;
    });
    return _stackerEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerFull {
    static MSGraphPrinterProcessingStateDetail *_stackerFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerFull.enumValue = MSGraphPrinterProcessingStateDetailStackerFull;
    });
    return _stackerFull;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_stackerInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailStackerInterlockClosed;
    });
    return _stackerInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_stackerInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailStackerInterlockOpen;
    });
    return _stackerInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerJam {
    static MSGraphPrinterProcessingStateDetail *_stackerJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerJam.enumValue = MSGraphPrinterProcessingStateDetailStackerJam;
    });
    return _stackerJam;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_stackerLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailStackerLifeAlmostOver;
    });
    return _stackerLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_stackerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailStackerLifeOver;
    });
    return _stackerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_stackerMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailStackerMemoryExhausted;
    });
    return _stackerMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerMissing {
    static MSGraphPrinterProcessingStateDetail *_stackerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerMissing.enumValue = MSGraphPrinterProcessingStateDetailStackerMissing;
    });
    return _stackerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_stackerMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailStackerMotorFailure;
    });
    return _stackerMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerNearLimit {
    static MSGraphPrinterProcessingStateDetail *_stackerNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerNearLimit.enumValue = MSGraphPrinterProcessingStateDetailStackerNearLimit;
    });
    return _stackerNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerOffline {
    static MSGraphPrinterProcessingStateDetail *_stackerOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerOffline.enumValue = MSGraphPrinterProcessingStateDetailStackerOffline;
    });
    return _stackerOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerOpened {
    static MSGraphPrinterProcessingStateDetail *_stackerOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerOpened.enumValue = MSGraphPrinterProcessingStateDetailStackerOpened;
    });
    return _stackerOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_stackerOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailStackerOverTemperature;
    });
    return _stackerOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_stackerPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailStackerPowerSaver;
    });
    return _stackerPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_stackerRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailStackerRecoverableFailure;
    });
    return _stackerRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_stackerRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailStackerRecoverableStorage;
    });
    return _stackerRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerRemoved {
    static MSGraphPrinterProcessingStateDetail *_stackerRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerRemoved.enumValue = MSGraphPrinterProcessingStateDetailStackerRemoved;
    });
    return _stackerRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_stackerResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailStackerResourceAdded;
    });
    return _stackerResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_stackerResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailStackerResourceRemoved;
    });
    return _stackerResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_stackerThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailStackerThermistorFailure;
    });
    return _stackerThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_stackerTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailStackerTimingFailure;
    });
    return _stackerTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_stackerTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailStackerTurnedOff;
    });
    return _stackerTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_stackerTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailStackerTurnedOn;
    });
    return _stackerTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_stackerUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailStackerUnderTemperature;
    });
    return _stackerUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_stackerUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailStackerUnrecoverableFailure;
    });
    return _stackerUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_stackerUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailStackerUnrecoverableStorageError;
    });
    return _stackerUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) stackerWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_stackerWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stackerWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stackerWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailStackerWarmingUp;
    });
    return _stackerWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) standby {
    static MSGraphPrinterProcessingStateDetail *_standby;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _standby = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _standby.enumValue = MSGraphPrinterProcessingStateDetailStandby;
    });
    return _standby;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerAdded {
    static MSGraphPrinterProcessingStateDetail *_staplerAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerAdded.enumValue = MSGraphPrinterProcessingStateDetailStaplerAdded;
    });
    return _staplerAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_staplerAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailStaplerAlmostEmpty;
    });
    return _staplerAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_staplerAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailStaplerAlmostFull;
    });
    return _staplerAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerAtLimit {
    static MSGraphPrinterProcessingStateDetail *_staplerAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerAtLimit.enumValue = MSGraphPrinterProcessingStateDetailStaplerAtLimit;
    });
    return _staplerAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerClosed {
    static MSGraphPrinterProcessingStateDetail *_staplerClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerClosed.enumValue = MSGraphPrinterProcessingStateDetailStaplerClosed;
    });
    return _staplerClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_staplerConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailStaplerConfigurationChange;
    });
    return _staplerConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_staplerCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailStaplerCoverClosed;
    });
    return _staplerCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_staplerCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailStaplerCoverOpen;
    });
    return _staplerCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerEmpty {
    static MSGraphPrinterProcessingStateDetail *_staplerEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerEmpty.enumValue = MSGraphPrinterProcessingStateDetailStaplerEmpty;
    });
    return _staplerEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerFull {
    static MSGraphPrinterProcessingStateDetail *_staplerFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerFull.enumValue = MSGraphPrinterProcessingStateDetailStaplerFull;
    });
    return _staplerFull;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_staplerInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailStaplerInterlockClosed;
    });
    return _staplerInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_staplerInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailStaplerInterlockOpen;
    });
    return _staplerInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerJam {
    static MSGraphPrinterProcessingStateDetail *_staplerJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerJam.enumValue = MSGraphPrinterProcessingStateDetailStaplerJam;
    });
    return _staplerJam;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_staplerLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailStaplerLifeAlmostOver;
    });
    return _staplerLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_staplerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailStaplerLifeOver;
    });
    return _staplerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_staplerMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailStaplerMemoryExhausted;
    });
    return _staplerMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerMissing {
    static MSGraphPrinterProcessingStateDetail *_staplerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerMissing.enumValue = MSGraphPrinterProcessingStateDetailStaplerMissing;
    });
    return _staplerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_staplerMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailStaplerMotorFailure;
    });
    return _staplerMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerNearLimit {
    static MSGraphPrinterProcessingStateDetail *_staplerNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerNearLimit.enumValue = MSGraphPrinterProcessingStateDetailStaplerNearLimit;
    });
    return _staplerNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerOffline {
    static MSGraphPrinterProcessingStateDetail *_staplerOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerOffline.enumValue = MSGraphPrinterProcessingStateDetailStaplerOffline;
    });
    return _staplerOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerOpened {
    static MSGraphPrinterProcessingStateDetail *_staplerOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerOpened.enumValue = MSGraphPrinterProcessingStateDetailStaplerOpened;
    });
    return _staplerOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_staplerOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailStaplerOverTemperature;
    });
    return _staplerOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_staplerPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailStaplerPowerSaver;
    });
    return _staplerPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_staplerRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailStaplerRecoverableFailure;
    });
    return _staplerRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_staplerRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailStaplerRecoverableStorage;
    });
    return _staplerRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerRemoved {
    static MSGraphPrinterProcessingStateDetail *_staplerRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerRemoved.enumValue = MSGraphPrinterProcessingStateDetailStaplerRemoved;
    });
    return _staplerRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_staplerResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailStaplerResourceAdded;
    });
    return _staplerResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_staplerResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailStaplerResourceRemoved;
    });
    return _staplerResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_staplerThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailStaplerThermistorFailure;
    });
    return _staplerThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_staplerTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailStaplerTimingFailure;
    });
    return _staplerTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_staplerTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailStaplerTurnedOff;
    });
    return _staplerTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_staplerTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailStaplerTurnedOn;
    });
    return _staplerTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_staplerUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailStaplerUnderTemperature;
    });
    return _staplerUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_staplerUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailStaplerUnrecoverableFailure;
    });
    return _staplerUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_staplerUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailStaplerUnrecoverableStorageError;
    });
    return _staplerUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) staplerWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_staplerWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staplerWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _staplerWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailStaplerWarmingUp;
    });
    return _staplerWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherAdded {
    static MSGraphPrinterProcessingStateDetail *_stitcherAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherAdded.enumValue = MSGraphPrinterProcessingStateDetailStitcherAdded;
    });
    return _stitcherAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_stitcherAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailStitcherAlmostEmpty;
    });
    return _stitcherAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_stitcherAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailStitcherAlmostFull;
    });
    return _stitcherAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherAtLimit {
    static MSGraphPrinterProcessingStateDetail *_stitcherAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherAtLimit.enumValue = MSGraphPrinterProcessingStateDetailStitcherAtLimit;
    });
    return _stitcherAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherClosed {
    static MSGraphPrinterProcessingStateDetail *_stitcherClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherClosed.enumValue = MSGraphPrinterProcessingStateDetailStitcherClosed;
    });
    return _stitcherClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_stitcherConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailStitcherConfigurationChange;
    });
    return _stitcherConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_stitcherCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailStitcherCoverClosed;
    });
    return _stitcherCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_stitcherCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailStitcherCoverOpen;
    });
    return _stitcherCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherEmpty {
    static MSGraphPrinterProcessingStateDetail *_stitcherEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherEmpty.enumValue = MSGraphPrinterProcessingStateDetailStitcherEmpty;
    });
    return _stitcherEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherFull {
    static MSGraphPrinterProcessingStateDetail *_stitcherFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherFull.enumValue = MSGraphPrinterProcessingStateDetailStitcherFull;
    });
    return _stitcherFull;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_stitcherInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailStitcherInterlockClosed;
    });
    return _stitcherInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_stitcherInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailStitcherInterlockOpen;
    });
    return _stitcherInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherJam {
    static MSGraphPrinterProcessingStateDetail *_stitcherJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherJam.enumValue = MSGraphPrinterProcessingStateDetailStitcherJam;
    });
    return _stitcherJam;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_stitcherLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailStitcherLifeAlmostOver;
    });
    return _stitcherLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherLifeOver {
    static MSGraphPrinterProcessingStateDetail *_stitcherLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherLifeOver.enumValue = MSGraphPrinterProcessingStateDetailStitcherLifeOver;
    });
    return _stitcherLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_stitcherMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailStitcherMemoryExhausted;
    });
    return _stitcherMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherMissing {
    static MSGraphPrinterProcessingStateDetail *_stitcherMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherMissing.enumValue = MSGraphPrinterProcessingStateDetailStitcherMissing;
    });
    return _stitcherMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_stitcherMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailStitcherMotorFailure;
    });
    return _stitcherMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherNearLimit {
    static MSGraphPrinterProcessingStateDetail *_stitcherNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherNearLimit.enumValue = MSGraphPrinterProcessingStateDetailStitcherNearLimit;
    });
    return _stitcherNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherOffline {
    static MSGraphPrinterProcessingStateDetail *_stitcherOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherOffline.enumValue = MSGraphPrinterProcessingStateDetailStitcherOffline;
    });
    return _stitcherOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherOpened {
    static MSGraphPrinterProcessingStateDetail *_stitcherOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherOpened.enumValue = MSGraphPrinterProcessingStateDetailStitcherOpened;
    });
    return _stitcherOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_stitcherOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailStitcherOverTemperature;
    });
    return _stitcherOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_stitcherPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailStitcherPowerSaver;
    });
    return _stitcherPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_stitcherRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailStitcherRecoverableFailure;
    });
    return _stitcherRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_stitcherRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailStitcherRecoverableStorage;
    });
    return _stitcherRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherRemoved {
    static MSGraphPrinterProcessingStateDetail *_stitcherRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherRemoved.enumValue = MSGraphPrinterProcessingStateDetailStitcherRemoved;
    });
    return _stitcherRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_stitcherResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailStitcherResourceAdded;
    });
    return _stitcherResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_stitcherResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailStitcherResourceRemoved;
    });
    return _stitcherResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_stitcherThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailStitcherThermistorFailure;
    });
    return _stitcherThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_stitcherTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailStitcherTimingFailure;
    });
    return _stitcherTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_stitcherTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailStitcherTurnedOff;
    });
    return _stitcherTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_stitcherTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailStitcherTurnedOn;
    });
    return _stitcherTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_stitcherUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailStitcherUnderTemperature;
    });
    return _stitcherUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_stitcherUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailStitcherUnrecoverableFailure;
    });
    return _stitcherUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_stitcherUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailStitcherUnrecoverableStorageError;
    });
    return _stitcherUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) stitcherWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_stitcherWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitcherWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _stitcherWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailStitcherWarmingUp;
    });
    return _stitcherWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitAdded {
    static MSGraphPrinterProcessingStateDetail *_subunitAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitAdded.enumValue = MSGraphPrinterProcessingStateDetailSubunitAdded;
    });
    return _subunitAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_subunitAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailSubunitAlmostEmpty;
    });
    return _subunitAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_subunitAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailSubunitAlmostFull;
    });
    return _subunitAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitAtLimit {
    static MSGraphPrinterProcessingStateDetail *_subunitAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitAtLimit.enumValue = MSGraphPrinterProcessingStateDetailSubunitAtLimit;
    });
    return _subunitAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitClosed {
    static MSGraphPrinterProcessingStateDetail *_subunitClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitClosed.enumValue = MSGraphPrinterProcessingStateDetailSubunitClosed;
    });
    return _subunitClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitCoolingDown {
    static MSGraphPrinterProcessingStateDetail *_subunitCoolingDown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitCoolingDown = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitCoolingDown.enumValue = MSGraphPrinterProcessingStateDetailSubunitCoolingDown;
    });
    return _subunitCoolingDown;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitEmpty {
    static MSGraphPrinterProcessingStateDetail *_subunitEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitEmpty.enumValue = MSGraphPrinterProcessingStateDetailSubunitEmpty;
    });
    return _subunitEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitFull {
    static MSGraphPrinterProcessingStateDetail *_subunitFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitFull.enumValue = MSGraphPrinterProcessingStateDetailSubunitFull;
    });
    return _subunitFull;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_subunitLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailSubunitLifeAlmostOver;
    });
    return _subunitLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitLifeOver {
    static MSGraphPrinterProcessingStateDetail *_subunitLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitLifeOver.enumValue = MSGraphPrinterProcessingStateDetailSubunitLifeOver;
    });
    return _subunitLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_subunitMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailSubunitMemoryExhausted;
    });
    return _subunitMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitMissing {
    static MSGraphPrinterProcessingStateDetail *_subunitMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitMissing.enumValue = MSGraphPrinterProcessingStateDetailSubunitMissing;
    });
    return _subunitMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_subunitMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailSubunitMotorFailure;
    });
    return _subunitMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitNearLimit {
    static MSGraphPrinterProcessingStateDetail *_subunitNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitNearLimit.enumValue = MSGraphPrinterProcessingStateDetailSubunitNearLimit;
    });
    return _subunitNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitOffline {
    static MSGraphPrinterProcessingStateDetail *_subunitOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitOffline.enumValue = MSGraphPrinterProcessingStateDetailSubunitOffline;
    });
    return _subunitOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitOpened {
    static MSGraphPrinterProcessingStateDetail *_subunitOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitOpened.enumValue = MSGraphPrinterProcessingStateDetailSubunitOpened;
    });
    return _subunitOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_subunitOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailSubunitOverTemperature;
    });
    return _subunitOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_subunitPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailSubunitPowerSaver;
    });
    return _subunitPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_subunitRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSubunitRecoverableFailure;
    });
    return _subunitRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_subunitRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailSubunitRecoverableStorage;
    });
    return _subunitRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitRemoved {
    static MSGraphPrinterProcessingStateDetail *_subunitRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitRemoved.enumValue = MSGraphPrinterProcessingStateDetailSubunitRemoved;
    });
    return _subunitRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_subunitResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailSubunitResourceAdded;
    });
    return _subunitResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_subunitResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailSubunitResourceRemoved;
    });
    return _subunitResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_subunitThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailSubunitThermistorFailure;
    });
    return _subunitThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_subunitTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailSubunitTimingFailure;
    });
    return _subunitTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_subunitTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailSubunitTurnedOff;
    });
    return _subunitTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_subunitTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailSubunitTurnedOn;
    });
    return _subunitTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_subunitUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailSubunitUnderTemperature;
    });
    return _subunitUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_subunitUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailSubunitUnrecoverableFailure;
    });
    return _subunitUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitUnrecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_subunitUnrecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitUnrecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitUnrecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailSubunitUnrecoverableStorage;
    });
    return _subunitUnrecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) subunitWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_subunitWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subunitWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _subunitWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailSubunitWarmingUp;
    });
    return _subunitWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) suspend {
    static MSGraphPrinterProcessingStateDetail *_suspend;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _suspend = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _suspend.enumValue = MSGraphPrinterProcessingStateDetailSuspend;
    });
    return _suspend;
}
+ (MSGraphPrinterProcessingStateDetail*) testing {
    static MSGraphPrinterProcessingStateDetail *_testing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _testing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _testing.enumValue = MSGraphPrinterProcessingStateDetailTesting;
    });
    return _testing;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerAdded {
    static MSGraphPrinterProcessingStateDetail *_trimmerAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerAdded.enumValue = MSGraphPrinterProcessingStateDetailTrimmerAdded;
    });
    return _trimmerAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_trimmerAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailTrimmerAlmostEmpty;
    });
    return _trimmerAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_trimmerAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailTrimmerAlmostFull;
    });
    return _trimmerAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerAtLimit {
    static MSGraphPrinterProcessingStateDetail *_trimmerAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerAtLimit.enumValue = MSGraphPrinterProcessingStateDetailTrimmerAtLimit;
    });
    return _trimmerAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerClosed {
    static MSGraphPrinterProcessingStateDetail *_trimmerClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerClosed.enumValue = MSGraphPrinterProcessingStateDetailTrimmerClosed;
    });
    return _trimmerClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_trimmerConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailTrimmerConfigurationChange;
    });
    return _trimmerConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_trimmerCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailTrimmerCoverClosed;
    });
    return _trimmerCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_trimmerCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailTrimmerCoverOpen;
    });
    return _trimmerCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerEmpty {
    static MSGraphPrinterProcessingStateDetail *_trimmerEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerEmpty.enumValue = MSGraphPrinterProcessingStateDetailTrimmerEmpty;
    });
    return _trimmerEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerFull {
    static MSGraphPrinterProcessingStateDetail *_trimmerFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerFull.enumValue = MSGraphPrinterProcessingStateDetailTrimmerFull;
    });
    return _trimmerFull;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_trimmerInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailTrimmerInterlockClosed;
    });
    return _trimmerInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_trimmerInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailTrimmerInterlockOpen;
    });
    return _trimmerInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerJam {
    static MSGraphPrinterProcessingStateDetail *_trimmerJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerJam.enumValue = MSGraphPrinterProcessingStateDetailTrimmerJam;
    });
    return _trimmerJam;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_trimmerLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailTrimmerLifeAlmostOver;
    });
    return _trimmerLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerLifeOver {
    static MSGraphPrinterProcessingStateDetail *_trimmerLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerLifeOver.enumValue = MSGraphPrinterProcessingStateDetailTrimmerLifeOver;
    });
    return _trimmerLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_trimmerMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailTrimmerMemoryExhausted;
    });
    return _trimmerMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerMissing {
    static MSGraphPrinterProcessingStateDetail *_trimmerMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerMissing.enumValue = MSGraphPrinterProcessingStateDetailTrimmerMissing;
    });
    return _trimmerMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_trimmerMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailTrimmerMotorFailure;
    });
    return _trimmerMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerNearLimit {
    static MSGraphPrinterProcessingStateDetail *_trimmerNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerNearLimit.enumValue = MSGraphPrinterProcessingStateDetailTrimmerNearLimit;
    });
    return _trimmerNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerOffline {
    static MSGraphPrinterProcessingStateDetail *_trimmerOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerOffline.enumValue = MSGraphPrinterProcessingStateDetailTrimmerOffline;
    });
    return _trimmerOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerOpened {
    static MSGraphPrinterProcessingStateDetail *_trimmerOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerOpened.enumValue = MSGraphPrinterProcessingStateDetailTrimmerOpened;
    });
    return _trimmerOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_trimmerOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailTrimmerOverTemperature;
    });
    return _trimmerOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_trimmerPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailTrimmerPowerSaver;
    });
    return _trimmerPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_trimmerRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailTrimmerRecoverableFailure;
    });
    return _trimmerRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_trimmerRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailTrimmerRecoverableStorage;
    });
    return _trimmerRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerRemoved {
    static MSGraphPrinterProcessingStateDetail *_trimmerRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerRemoved.enumValue = MSGraphPrinterProcessingStateDetailTrimmerRemoved;
    });
    return _trimmerRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_trimmerResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailTrimmerResourceAdded;
    });
    return _trimmerResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_trimmerResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailTrimmerResourceRemoved;
    });
    return _trimmerResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_trimmerThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailTrimmerThermistorFailure;
    });
    return _trimmerThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_trimmerTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailTrimmerTimingFailure;
    });
    return _trimmerTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_trimmerTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailTrimmerTurnedOff;
    });
    return _trimmerTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_trimmerTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailTrimmerTurnedOn;
    });
    return _trimmerTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_trimmerUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailTrimmerUnderTemperature;
    });
    return _trimmerUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_trimmerUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailTrimmerUnrecoverableFailure;
    });
    return _trimmerUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_trimmerUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailTrimmerUnrecoverableStorageError;
    });
    return _trimmerUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) trimmerWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_trimmerWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trimmerWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _trimmerWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailTrimmerWarmingUp;
    });
    return _trimmerWarmingUp;
}
+ (MSGraphPrinterProcessingStateDetail*) unknown {
    static MSGraphPrinterProcessingStateDetail *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _unknown.enumValue = MSGraphPrinterProcessingStateDetailUnknown;
    });
    return _unknown;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperAdded {
    static MSGraphPrinterProcessingStateDetail *_wrapperAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperAdded.enumValue = MSGraphPrinterProcessingStateDetailWrapperAdded;
    });
    return _wrapperAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperAlmostEmpty {
    static MSGraphPrinterProcessingStateDetail *_wrapperAlmostEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperAlmostEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperAlmostEmpty.enumValue = MSGraphPrinterProcessingStateDetailWrapperAlmostEmpty;
    });
    return _wrapperAlmostEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperAlmostFull {
    static MSGraphPrinterProcessingStateDetail *_wrapperAlmostFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperAlmostFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperAlmostFull.enumValue = MSGraphPrinterProcessingStateDetailWrapperAlmostFull;
    });
    return _wrapperAlmostFull;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperAtLimit {
    static MSGraphPrinterProcessingStateDetail *_wrapperAtLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperAtLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperAtLimit.enumValue = MSGraphPrinterProcessingStateDetailWrapperAtLimit;
    });
    return _wrapperAtLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperClosed {
    static MSGraphPrinterProcessingStateDetail *_wrapperClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperClosed.enumValue = MSGraphPrinterProcessingStateDetailWrapperClosed;
    });
    return _wrapperClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperConfigurationChange {
    static MSGraphPrinterProcessingStateDetail *_wrapperConfigurationChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperConfigurationChange = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperConfigurationChange.enumValue = MSGraphPrinterProcessingStateDetailWrapperConfigurationChange;
    });
    return _wrapperConfigurationChange;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperCoverClosed {
    static MSGraphPrinterProcessingStateDetail *_wrapperCoverClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperCoverClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperCoverClosed.enumValue = MSGraphPrinterProcessingStateDetailWrapperCoverClosed;
    });
    return _wrapperCoverClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperCoverOpen {
    static MSGraphPrinterProcessingStateDetail *_wrapperCoverOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperCoverOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperCoverOpen.enumValue = MSGraphPrinterProcessingStateDetailWrapperCoverOpen;
    });
    return _wrapperCoverOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperEmpty {
    static MSGraphPrinterProcessingStateDetail *_wrapperEmpty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperEmpty = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperEmpty.enumValue = MSGraphPrinterProcessingStateDetailWrapperEmpty;
    });
    return _wrapperEmpty;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperFull {
    static MSGraphPrinterProcessingStateDetail *_wrapperFull;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperFull = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperFull.enumValue = MSGraphPrinterProcessingStateDetailWrapperFull;
    });
    return _wrapperFull;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperInterlockClosed {
    static MSGraphPrinterProcessingStateDetail *_wrapperInterlockClosed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperInterlockClosed = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperInterlockClosed.enumValue = MSGraphPrinterProcessingStateDetailWrapperInterlockClosed;
    });
    return _wrapperInterlockClosed;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperInterlockOpen {
    static MSGraphPrinterProcessingStateDetail *_wrapperInterlockOpen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperInterlockOpen = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperInterlockOpen.enumValue = MSGraphPrinterProcessingStateDetailWrapperInterlockOpen;
    });
    return _wrapperInterlockOpen;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperJam {
    static MSGraphPrinterProcessingStateDetail *_wrapperJam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperJam = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperJam.enumValue = MSGraphPrinterProcessingStateDetailWrapperJam;
    });
    return _wrapperJam;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperLifeAlmostOver {
    static MSGraphPrinterProcessingStateDetail *_wrapperLifeAlmostOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperLifeAlmostOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperLifeAlmostOver.enumValue = MSGraphPrinterProcessingStateDetailWrapperLifeAlmostOver;
    });
    return _wrapperLifeAlmostOver;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperLifeOver {
    static MSGraphPrinterProcessingStateDetail *_wrapperLifeOver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperLifeOver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperLifeOver.enumValue = MSGraphPrinterProcessingStateDetailWrapperLifeOver;
    });
    return _wrapperLifeOver;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperMemoryExhausted {
    static MSGraphPrinterProcessingStateDetail *_wrapperMemoryExhausted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperMemoryExhausted = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperMemoryExhausted.enumValue = MSGraphPrinterProcessingStateDetailWrapperMemoryExhausted;
    });
    return _wrapperMemoryExhausted;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperMissing {
    static MSGraphPrinterProcessingStateDetail *_wrapperMissing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperMissing = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperMissing.enumValue = MSGraphPrinterProcessingStateDetailWrapperMissing;
    });
    return _wrapperMissing;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperMotorFailure {
    static MSGraphPrinterProcessingStateDetail *_wrapperMotorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperMotorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperMotorFailure.enumValue = MSGraphPrinterProcessingStateDetailWrapperMotorFailure;
    });
    return _wrapperMotorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperNearLimit {
    static MSGraphPrinterProcessingStateDetail *_wrapperNearLimit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperNearLimit = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperNearLimit.enumValue = MSGraphPrinterProcessingStateDetailWrapperNearLimit;
    });
    return _wrapperNearLimit;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperOffline {
    static MSGraphPrinterProcessingStateDetail *_wrapperOffline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperOffline = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperOffline.enumValue = MSGraphPrinterProcessingStateDetailWrapperOffline;
    });
    return _wrapperOffline;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperOpened {
    static MSGraphPrinterProcessingStateDetail *_wrapperOpened;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperOpened = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperOpened.enumValue = MSGraphPrinterProcessingStateDetailWrapperOpened;
    });
    return _wrapperOpened;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperOverTemperature {
    static MSGraphPrinterProcessingStateDetail *_wrapperOverTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperOverTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperOverTemperature.enumValue = MSGraphPrinterProcessingStateDetailWrapperOverTemperature;
    });
    return _wrapperOverTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperPowerSaver {
    static MSGraphPrinterProcessingStateDetail *_wrapperPowerSaver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperPowerSaver = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperPowerSaver.enumValue = MSGraphPrinterProcessingStateDetailWrapperPowerSaver;
    });
    return _wrapperPowerSaver;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperRecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_wrapperRecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperRecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperRecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailWrapperRecoverableFailure;
    });
    return _wrapperRecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperRecoverableStorage {
    static MSGraphPrinterProcessingStateDetail *_wrapperRecoverableStorage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperRecoverableStorage = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperRecoverableStorage.enumValue = MSGraphPrinterProcessingStateDetailWrapperRecoverableStorage;
    });
    return _wrapperRecoverableStorage;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperRemoved {
    static MSGraphPrinterProcessingStateDetail *_wrapperRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperRemoved.enumValue = MSGraphPrinterProcessingStateDetailWrapperRemoved;
    });
    return _wrapperRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperResourceAdded {
    static MSGraphPrinterProcessingStateDetail *_wrapperResourceAdded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperResourceAdded = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperResourceAdded.enumValue = MSGraphPrinterProcessingStateDetailWrapperResourceAdded;
    });
    return _wrapperResourceAdded;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperResourceRemoved {
    static MSGraphPrinterProcessingStateDetail *_wrapperResourceRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperResourceRemoved = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperResourceRemoved.enumValue = MSGraphPrinterProcessingStateDetailWrapperResourceRemoved;
    });
    return _wrapperResourceRemoved;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperThermistorFailure {
    static MSGraphPrinterProcessingStateDetail *_wrapperThermistorFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperThermistorFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperThermistorFailure.enumValue = MSGraphPrinterProcessingStateDetailWrapperThermistorFailure;
    });
    return _wrapperThermistorFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperTimingFailure {
    static MSGraphPrinterProcessingStateDetail *_wrapperTimingFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperTimingFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperTimingFailure.enumValue = MSGraphPrinterProcessingStateDetailWrapperTimingFailure;
    });
    return _wrapperTimingFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperTurnedOff {
    static MSGraphPrinterProcessingStateDetail *_wrapperTurnedOff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperTurnedOff = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperTurnedOff.enumValue = MSGraphPrinterProcessingStateDetailWrapperTurnedOff;
    });
    return _wrapperTurnedOff;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperTurnedOn {
    static MSGraphPrinterProcessingStateDetail *_wrapperTurnedOn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperTurnedOn = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperTurnedOn.enumValue = MSGraphPrinterProcessingStateDetailWrapperTurnedOn;
    });
    return _wrapperTurnedOn;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperUnderTemperature {
    static MSGraphPrinterProcessingStateDetail *_wrapperUnderTemperature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperUnderTemperature = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperUnderTemperature.enumValue = MSGraphPrinterProcessingStateDetailWrapperUnderTemperature;
    });
    return _wrapperUnderTemperature;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperUnrecoverableFailure {
    static MSGraphPrinterProcessingStateDetail *_wrapperUnrecoverableFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperUnrecoverableFailure = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperUnrecoverableFailure.enumValue = MSGraphPrinterProcessingStateDetailWrapperUnrecoverableFailure;
    });
    return _wrapperUnrecoverableFailure;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperUnrecoverableStorageError {
    static MSGraphPrinterProcessingStateDetail *_wrapperUnrecoverableStorageError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperUnrecoverableStorageError = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperUnrecoverableStorageError.enumValue = MSGraphPrinterProcessingStateDetailWrapperUnrecoverableStorageError;
    });
    return _wrapperUnrecoverableStorageError;
}
+ (MSGraphPrinterProcessingStateDetail*) wrapperWarmingUp {
    static MSGraphPrinterProcessingStateDetail *_wrapperWarmingUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wrapperWarmingUp = [[MSGraphPrinterProcessingStateDetail alloc] init];
        _wrapperWarmingUp.enumValue = MSGraphPrinterProcessingStateDetailWrapperWarmingUp;
    });
    return _wrapperWarmingUp;
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
        case MSGraphPrinterProcessingStateDetailAlertRemovalOfBinaryChangeEntry:
            return [MSGraphPrinterProcessingStateDetail alertRemovalOfBinaryChangeEntry];
        case MSGraphPrinterProcessingStateDetailBanderAdded:
            return [MSGraphPrinterProcessingStateDetail banderAdded];
        case MSGraphPrinterProcessingStateDetailBanderAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail banderAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailBanderAlmostFull:
            return [MSGraphPrinterProcessingStateDetail banderAlmostFull];
        case MSGraphPrinterProcessingStateDetailBanderAtLimit:
            return [MSGraphPrinterProcessingStateDetail banderAtLimit];
        case MSGraphPrinterProcessingStateDetailBanderClosed:
            return [MSGraphPrinterProcessingStateDetail banderClosed];
        case MSGraphPrinterProcessingStateDetailBanderConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail banderConfigurationChange];
        case MSGraphPrinterProcessingStateDetailBanderCoverClosed:
            return [MSGraphPrinterProcessingStateDetail banderCoverClosed];
        case MSGraphPrinterProcessingStateDetailBanderCoverOpen:
            return [MSGraphPrinterProcessingStateDetail banderCoverOpen];
        case MSGraphPrinterProcessingStateDetailBanderEmpty:
            return [MSGraphPrinterProcessingStateDetail banderEmpty];
        case MSGraphPrinterProcessingStateDetailBanderFull:
            return [MSGraphPrinterProcessingStateDetail banderFull];
        case MSGraphPrinterProcessingStateDetailBanderInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail banderInterlockClosed];
        case MSGraphPrinterProcessingStateDetailBanderInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail banderInterlockOpen];
        case MSGraphPrinterProcessingStateDetailBanderJam:
            return [MSGraphPrinterProcessingStateDetail banderJam];
        case MSGraphPrinterProcessingStateDetailBanderLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail banderLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailBanderLifeOver:
            return [MSGraphPrinterProcessingStateDetail banderLifeOver];
        case MSGraphPrinterProcessingStateDetailBanderMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail banderMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailBanderMissing:
            return [MSGraphPrinterProcessingStateDetail banderMissing];
        case MSGraphPrinterProcessingStateDetailBanderMotorFailure:
            return [MSGraphPrinterProcessingStateDetail banderMotorFailure];
        case MSGraphPrinterProcessingStateDetailBanderNearLimit:
            return [MSGraphPrinterProcessingStateDetail banderNearLimit];
        case MSGraphPrinterProcessingStateDetailBanderOffline:
            return [MSGraphPrinterProcessingStateDetail banderOffline];
        case MSGraphPrinterProcessingStateDetailBanderOpened:
            return [MSGraphPrinterProcessingStateDetail banderOpened];
        case MSGraphPrinterProcessingStateDetailBanderOverTemperature:
            return [MSGraphPrinterProcessingStateDetail banderOverTemperature];
        case MSGraphPrinterProcessingStateDetailBanderPowerSaver:
            return [MSGraphPrinterProcessingStateDetail banderPowerSaver];
        case MSGraphPrinterProcessingStateDetailBanderRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail banderRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailBanderRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail banderRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailBanderRemoved:
            return [MSGraphPrinterProcessingStateDetail banderRemoved];
        case MSGraphPrinterProcessingStateDetailBanderResourceAdded:
            return [MSGraphPrinterProcessingStateDetail banderResourceAdded];
        case MSGraphPrinterProcessingStateDetailBanderResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail banderResourceRemoved];
        case MSGraphPrinterProcessingStateDetailBanderThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail banderThermistorFailure];
        case MSGraphPrinterProcessingStateDetailBanderTimingFailure:
            return [MSGraphPrinterProcessingStateDetail banderTimingFailure];
        case MSGraphPrinterProcessingStateDetailBanderTurnedOff:
            return [MSGraphPrinterProcessingStateDetail banderTurnedOff];
        case MSGraphPrinterProcessingStateDetailBanderTurnedOn:
            return [MSGraphPrinterProcessingStateDetail banderTurnedOn];
        case MSGraphPrinterProcessingStateDetailBanderUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail banderUnderTemperature];
        case MSGraphPrinterProcessingStateDetailBanderUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail banderUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailBanderUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail banderUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailBanderWarmingUp:
            return [MSGraphPrinterProcessingStateDetail banderWarmingUp];
        case MSGraphPrinterProcessingStateDetailBinderAdded:
            return [MSGraphPrinterProcessingStateDetail binderAdded];
        case MSGraphPrinterProcessingStateDetailBinderAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail binderAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailBinderAlmostFull:
            return [MSGraphPrinterProcessingStateDetail binderAlmostFull];
        case MSGraphPrinterProcessingStateDetailBinderAtLimit:
            return [MSGraphPrinterProcessingStateDetail binderAtLimit];
        case MSGraphPrinterProcessingStateDetailBinderClosed:
            return [MSGraphPrinterProcessingStateDetail binderClosed];
        case MSGraphPrinterProcessingStateDetailBinderConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail binderConfigurationChange];
        case MSGraphPrinterProcessingStateDetailBinderCoverClosed:
            return [MSGraphPrinterProcessingStateDetail binderCoverClosed];
        case MSGraphPrinterProcessingStateDetailBinderCoverOpen:
            return [MSGraphPrinterProcessingStateDetail binderCoverOpen];
        case MSGraphPrinterProcessingStateDetailBinderEmpty:
            return [MSGraphPrinterProcessingStateDetail binderEmpty];
        case MSGraphPrinterProcessingStateDetailBinderFull:
            return [MSGraphPrinterProcessingStateDetail binderFull];
        case MSGraphPrinterProcessingStateDetailBinderInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail binderInterlockClosed];
        case MSGraphPrinterProcessingStateDetailBinderInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail binderInterlockOpen];
        case MSGraphPrinterProcessingStateDetailBinderJam:
            return [MSGraphPrinterProcessingStateDetail binderJam];
        case MSGraphPrinterProcessingStateDetailBinderLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail binderLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailBinderLifeOver:
            return [MSGraphPrinterProcessingStateDetail binderLifeOver];
        case MSGraphPrinterProcessingStateDetailBinderMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail binderMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailBinderMissing:
            return [MSGraphPrinterProcessingStateDetail binderMissing];
        case MSGraphPrinterProcessingStateDetailBinderMotorFailure:
            return [MSGraphPrinterProcessingStateDetail binderMotorFailure];
        case MSGraphPrinterProcessingStateDetailBinderNearLimit:
            return [MSGraphPrinterProcessingStateDetail binderNearLimit];
        case MSGraphPrinterProcessingStateDetailBinderOffline:
            return [MSGraphPrinterProcessingStateDetail binderOffline];
        case MSGraphPrinterProcessingStateDetailBinderOpened:
            return [MSGraphPrinterProcessingStateDetail binderOpened];
        case MSGraphPrinterProcessingStateDetailBinderOverTemperature:
            return [MSGraphPrinterProcessingStateDetail binderOverTemperature];
        case MSGraphPrinterProcessingStateDetailBinderPowerSaver:
            return [MSGraphPrinterProcessingStateDetail binderPowerSaver];
        case MSGraphPrinterProcessingStateDetailBinderRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail binderRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailBinderRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail binderRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailBinderRemoved:
            return [MSGraphPrinterProcessingStateDetail binderRemoved];
        case MSGraphPrinterProcessingStateDetailBinderResourceAdded:
            return [MSGraphPrinterProcessingStateDetail binderResourceAdded];
        case MSGraphPrinterProcessingStateDetailBinderResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail binderResourceRemoved];
        case MSGraphPrinterProcessingStateDetailBinderThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail binderThermistorFailure];
        case MSGraphPrinterProcessingStateDetailBinderTimingFailure:
            return [MSGraphPrinterProcessingStateDetail binderTimingFailure];
        case MSGraphPrinterProcessingStateDetailBinderTurnedOff:
            return [MSGraphPrinterProcessingStateDetail binderTurnedOff];
        case MSGraphPrinterProcessingStateDetailBinderTurnedOn:
            return [MSGraphPrinterProcessingStateDetail binderTurnedOn];
        case MSGraphPrinterProcessingStateDetailBinderUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail binderUnderTemperature];
        case MSGraphPrinterProcessingStateDetailBinderUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail binderUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailBinderUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail binderUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailBinderWarmingUp:
            return [MSGraphPrinterProcessingStateDetail binderWarmingUp];
        case MSGraphPrinterProcessingStateDetailCameraFailure:
            return [MSGraphPrinterProcessingStateDetail cameraFailure];
        case MSGraphPrinterProcessingStateDetailChamberCooling:
            return [MSGraphPrinterProcessingStateDetail chamberCooling];
        case MSGraphPrinterProcessingStateDetailChamberFailure:
            return [MSGraphPrinterProcessingStateDetail chamberFailure];
        case MSGraphPrinterProcessingStateDetailChamberHeating:
            return [MSGraphPrinterProcessingStateDetail chamberHeating];
        case MSGraphPrinterProcessingStateDetailChamberTemperatureHigh:
            return [MSGraphPrinterProcessingStateDetail chamberTemperatureHigh];
        case MSGraphPrinterProcessingStateDetailChamberTemperatureLow:
            return [MSGraphPrinterProcessingStateDetail chamberTemperatureLow];
        case MSGraphPrinterProcessingStateDetailCleanerLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail cleanerLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailCleanerLifeOver:
            return [MSGraphPrinterProcessingStateDetail cleanerLifeOver];
        case MSGraphPrinterProcessingStateDetailConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail configurationChange];
        case MSGraphPrinterProcessingStateDetailDeactivated:
            return [MSGraphPrinterProcessingStateDetail deactivated];
        case MSGraphPrinterProcessingStateDetailDeleted:
            return [MSGraphPrinterProcessingStateDetail deleted];
        case MSGraphPrinterProcessingStateDetailDieCutterAdded:
            return [MSGraphPrinterProcessingStateDetail dieCutterAdded];
        case MSGraphPrinterProcessingStateDetailDieCutterAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail dieCutterAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailDieCutterAlmostFull:
            return [MSGraphPrinterProcessingStateDetail dieCutterAlmostFull];
        case MSGraphPrinterProcessingStateDetailDieCutterAtLimit:
            return [MSGraphPrinterProcessingStateDetail dieCutterAtLimit];
        case MSGraphPrinterProcessingStateDetailDieCutterClosed:
            return [MSGraphPrinterProcessingStateDetail dieCutterClosed];
        case MSGraphPrinterProcessingStateDetailDieCutterConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail dieCutterConfigurationChange];
        case MSGraphPrinterProcessingStateDetailDieCutterCoverClosed:
            return [MSGraphPrinterProcessingStateDetail dieCutterCoverClosed];
        case MSGraphPrinterProcessingStateDetailDieCutterCoverOpen:
            return [MSGraphPrinterProcessingStateDetail dieCutterCoverOpen];
        case MSGraphPrinterProcessingStateDetailDieCutterEmpty:
            return [MSGraphPrinterProcessingStateDetail dieCutterEmpty];
        case MSGraphPrinterProcessingStateDetailDieCutterFull:
            return [MSGraphPrinterProcessingStateDetail dieCutterFull];
        case MSGraphPrinterProcessingStateDetailDieCutterInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail dieCutterInterlockClosed];
        case MSGraphPrinterProcessingStateDetailDieCutterInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail dieCutterInterlockOpen];
        case MSGraphPrinterProcessingStateDetailDieCutterJam:
            return [MSGraphPrinterProcessingStateDetail dieCutterJam];
        case MSGraphPrinterProcessingStateDetailDieCutterLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail dieCutterLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailDieCutterLifeOver:
            return [MSGraphPrinterProcessingStateDetail dieCutterLifeOver];
        case MSGraphPrinterProcessingStateDetailDieCutterMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail dieCutterMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailDieCutterMissing:
            return [MSGraphPrinterProcessingStateDetail dieCutterMissing];
        case MSGraphPrinterProcessingStateDetailDieCutterMotorFailure:
            return [MSGraphPrinterProcessingStateDetail dieCutterMotorFailure];
        case MSGraphPrinterProcessingStateDetailDieCutterNearLimit:
            return [MSGraphPrinterProcessingStateDetail dieCutterNearLimit];
        case MSGraphPrinterProcessingStateDetailDieCutterOffline:
            return [MSGraphPrinterProcessingStateDetail dieCutterOffline];
        case MSGraphPrinterProcessingStateDetailDieCutterOpened:
            return [MSGraphPrinterProcessingStateDetail dieCutterOpened];
        case MSGraphPrinterProcessingStateDetailDieCutterOverTemperature:
            return [MSGraphPrinterProcessingStateDetail dieCutterOverTemperature];
        case MSGraphPrinterProcessingStateDetailDieCutterPowerSaver:
            return [MSGraphPrinterProcessingStateDetail dieCutterPowerSaver];
        case MSGraphPrinterProcessingStateDetailDieCutterRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail dieCutterRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailDieCutterRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail dieCutterRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailDieCutterRemoved:
            return [MSGraphPrinterProcessingStateDetail dieCutterRemoved];
        case MSGraphPrinterProcessingStateDetailDieCutterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail dieCutterResourceAdded];
        case MSGraphPrinterProcessingStateDetailDieCutterResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail dieCutterResourceRemoved];
        case MSGraphPrinterProcessingStateDetailDieCutterThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail dieCutterThermistorFailure];
        case MSGraphPrinterProcessingStateDetailDieCutterTimingFailure:
            return [MSGraphPrinterProcessingStateDetail dieCutterTimingFailure];
        case MSGraphPrinterProcessingStateDetailDieCutterTurnedOff:
            return [MSGraphPrinterProcessingStateDetail dieCutterTurnedOff];
        case MSGraphPrinterProcessingStateDetailDieCutterTurnedOn:
            return [MSGraphPrinterProcessingStateDetail dieCutterTurnedOn];
        case MSGraphPrinterProcessingStateDetailDieCutterUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail dieCutterUnderTemperature];
        case MSGraphPrinterProcessingStateDetailDieCutterUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail dieCutterUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailDieCutterUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail dieCutterUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailDieCutterWarmingUp:
            return [MSGraphPrinterProcessingStateDetail dieCutterWarmingUp];
        case MSGraphPrinterProcessingStateDetailExtruderCooling:
            return [MSGraphPrinterProcessingStateDetail extruderCooling];
        case MSGraphPrinterProcessingStateDetailExtruderFailure:
            return [MSGraphPrinterProcessingStateDetail extruderFailure];
        case MSGraphPrinterProcessingStateDetailExtruderHeating:
            return [MSGraphPrinterProcessingStateDetail extruderHeating];
        case MSGraphPrinterProcessingStateDetailExtruderJam:
            return [MSGraphPrinterProcessingStateDetail extruderJam];
        case MSGraphPrinterProcessingStateDetailExtruderTemperatureHigh:
            return [MSGraphPrinterProcessingStateDetail extruderTemperatureHigh];
        case MSGraphPrinterProcessingStateDetailExtruderTemperatureLow:
            return [MSGraphPrinterProcessingStateDetail extruderTemperatureLow];
        case MSGraphPrinterProcessingStateDetailFanFailure:
            return [MSGraphPrinterProcessingStateDetail fanFailure];
        case MSGraphPrinterProcessingStateDetailFaxModemLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail faxModemLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailFaxModemLifeOver:
            return [MSGraphPrinterProcessingStateDetail faxModemLifeOver];
        case MSGraphPrinterProcessingStateDetailFaxModemMissing:
            return [MSGraphPrinterProcessingStateDetail faxModemMissing];
        case MSGraphPrinterProcessingStateDetailFaxModemTurnedOff:
            return [MSGraphPrinterProcessingStateDetail faxModemTurnedOff];
        case MSGraphPrinterProcessingStateDetailFaxModemTurnedOn:
            return [MSGraphPrinterProcessingStateDetail faxModemTurnedOn];
        case MSGraphPrinterProcessingStateDetailFolderAdded:
            return [MSGraphPrinterProcessingStateDetail folderAdded];
        case MSGraphPrinterProcessingStateDetailFolderAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail folderAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailFolderAlmostFull:
            return [MSGraphPrinterProcessingStateDetail folderAlmostFull];
        case MSGraphPrinterProcessingStateDetailFolderAtLimit:
            return [MSGraphPrinterProcessingStateDetail folderAtLimit];
        case MSGraphPrinterProcessingStateDetailFolderClosed:
            return [MSGraphPrinterProcessingStateDetail folderClosed];
        case MSGraphPrinterProcessingStateDetailFolderConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail folderConfigurationChange];
        case MSGraphPrinterProcessingStateDetailFolderCoverClosed:
            return [MSGraphPrinterProcessingStateDetail folderCoverClosed];
        case MSGraphPrinterProcessingStateDetailFolderCoverOpen:
            return [MSGraphPrinterProcessingStateDetail folderCoverOpen];
        case MSGraphPrinterProcessingStateDetailFolderEmpty:
            return [MSGraphPrinterProcessingStateDetail folderEmpty];
        case MSGraphPrinterProcessingStateDetailFolderFull:
            return [MSGraphPrinterProcessingStateDetail folderFull];
        case MSGraphPrinterProcessingStateDetailFolderInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail folderInterlockClosed];
        case MSGraphPrinterProcessingStateDetailFolderInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail folderInterlockOpen];
        case MSGraphPrinterProcessingStateDetailFolderJam:
            return [MSGraphPrinterProcessingStateDetail folderJam];
        case MSGraphPrinterProcessingStateDetailFolderLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail folderLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailFolderLifeOver:
            return [MSGraphPrinterProcessingStateDetail folderLifeOver];
        case MSGraphPrinterProcessingStateDetailFolderMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail folderMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailFolderMissing:
            return [MSGraphPrinterProcessingStateDetail folderMissing];
        case MSGraphPrinterProcessingStateDetailFolderMotorFailure:
            return [MSGraphPrinterProcessingStateDetail folderMotorFailure];
        case MSGraphPrinterProcessingStateDetailFolderNearLimit:
            return [MSGraphPrinterProcessingStateDetail folderNearLimit];
        case MSGraphPrinterProcessingStateDetailFolderOffline:
            return [MSGraphPrinterProcessingStateDetail folderOffline];
        case MSGraphPrinterProcessingStateDetailFolderOpened:
            return [MSGraphPrinterProcessingStateDetail folderOpened];
        case MSGraphPrinterProcessingStateDetailFolderOverTemperature:
            return [MSGraphPrinterProcessingStateDetail folderOverTemperature];
        case MSGraphPrinterProcessingStateDetailFolderPowerSaver:
            return [MSGraphPrinterProcessingStateDetail folderPowerSaver];
        case MSGraphPrinterProcessingStateDetailFolderRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail folderRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailFolderRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail folderRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailFolderRemoved:
            return [MSGraphPrinterProcessingStateDetail folderRemoved];
        case MSGraphPrinterProcessingStateDetailFolderResourceAdded:
            return [MSGraphPrinterProcessingStateDetail folderResourceAdded];
        case MSGraphPrinterProcessingStateDetailFolderResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail folderResourceRemoved];
        case MSGraphPrinterProcessingStateDetailFolderThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail folderThermistorFailure];
        case MSGraphPrinterProcessingStateDetailFolderTimingFailure:
            return [MSGraphPrinterProcessingStateDetail folderTimingFailure];
        case MSGraphPrinterProcessingStateDetailFolderTurnedOff:
            return [MSGraphPrinterProcessingStateDetail folderTurnedOff];
        case MSGraphPrinterProcessingStateDetailFolderTurnedOn:
            return [MSGraphPrinterProcessingStateDetail folderTurnedOn];
        case MSGraphPrinterProcessingStateDetailFolderUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail folderUnderTemperature];
        case MSGraphPrinterProcessingStateDetailFolderUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail folderUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailFolderUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail folderUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailFolderWarmingUp:
            return [MSGraphPrinterProcessingStateDetail folderWarmingUp];
        case MSGraphPrinterProcessingStateDetailHibernate:
            return [MSGraphPrinterProcessingStateDetail hibernate];
        case MSGraphPrinterProcessingStateDetailHoldNewJobs:
            return [MSGraphPrinterProcessingStateDetail holdNewJobs];
        case MSGraphPrinterProcessingStateDetailIdentifyPrinterRequested:
            return [MSGraphPrinterProcessingStateDetail identifyPrinterRequested];
        case MSGraphPrinterProcessingStateDetailImprinterAdded:
            return [MSGraphPrinterProcessingStateDetail imprinterAdded];
        case MSGraphPrinterProcessingStateDetailImprinterAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail imprinterAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailImprinterAlmostFull:
            return [MSGraphPrinterProcessingStateDetail imprinterAlmostFull];
        case MSGraphPrinterProcessingStateDetailImprinterAtLimit:
            return [MSGraphPrinterProcessingStateDetail imprinterAtLimit];
        case MSGraphPrinterProcessingStateDetailImprinterClosed:
            return [MSGraphPrinterProcessingStateDetail imprinterClosed];
        case MSGraphPrinterProcessingStateDetailImprinterConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail imprinterConfigurationChange];
        case MSGraphPrinterProcessingStateDetailImprinterCoverClosed:
            return [MSGraphPrinterProcessingStateDetail imprinterCoverClosed];
        case MSGraphPrinterProcessingStateDetailImprinterCoverOpen:
            return [MSGraphPrinterProcessingStateDetail imprinterCoverOpen];
        case MSGraphPrinterProcessingStateDetailImprinterEmpty:
            return [MSGraphPrinterProcessingStateDetail imprinterEmpty];
        case MSGraphPrinterProcessingStateDetailImprinterFull:
            return [MSGraphPrinterProcessingStateDetail imprinterFull];
        case MSGraphPrinterProcessingStateDetailImprinterInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail imprinterInterlockClosed];
        case MSGraphPrinterProcessingStateDetailImprinterInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail imprinterInterlockOpen];
        case MSGraphPrinterProcessingStateDetailImprinterJam:
            return [MSGraphPrinterProcessingStateDetail imprinterJam];
        case MSGraphPrinterProcessingStateDetailImprinterLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail imprinterLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailImprinterLifeOver:
            return [MSGraphPrinterProcessingStateDetail imprinterLifeOver];
        case MSGraphPrinterProcessingStateDetailImprinterMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail imprinterMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailImprinterMissing:
            return [MSGraphPrinterProcessingStateDetail imprinterMissing];
        case MSGraphPrinterProcessingStateDetailImprinterMotorFailure:
            return [MSGraphPrinterProcessingStateDetail imprinterMotorFailure];
        case MSGraphPrinterProcessingStateDetailImprinterNearLimit:
            return [MSGraphPrinterProcessingStateDetail imprinterNearLimit];
        case MSGraphPrinterProcessingStateDetailImprinterOffline:
            return [MSGraphPrinterProcessingStateDetail imprinterOffline];
        case MSGraphPrinterProcessingStateDetailImprinterOpened:
            return [MSGraphPrinterProcessingStateDetail imprinterOpened];
        case MSGraphPrinterProcessingStateDetailImprinterOverTemperature:
            return [MSGraphPrinterProcessingStateDetail imprinterOverTemperature];
        case MSGraphPrinterProcessingStateDetailImprinterPowerSaver:
            return [MSGraphPrinterProcessingStateDetail imprinterPowerSaver];
        case MSGraphPrinterProcessingStateDetailImprinterRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail imprinterRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailImprinterRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail imprinterRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailImprinterRemoved:
            return [MSGraphPrinterProcessingStateDetail imprinterRemoved];
        case MSGraphPrinterProcessingStateDetailImprinterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail imprinterResourceAdded];
        case MSGraphPrinterProcessingStateDetailImprinterResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail imprinterResourceRemoved];
        case MSGraphPrinterProcessingStateDetailImprinterThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail imprinterThermistorFailure];
        case MSGraphPrinterProcessingStateDetailImprinterTimingFailure:
            return [MSGraphPrinterProcessingStateDetail imprinterTimingFailure];
        case MSGraphPrinterProcessingStateDetailImprinterTurnedOff:
            return [MSGraphPrinterProcessingStateDetail imprinterTurnedOff];
        case MSGraphPrinterProcessingStateDetailImprinterTurnedOn:
            return [MSGraphPrinterProcessingStateDetail imprinterTurnedOn];
        case MSGraphPrinterProcessingStateDetailImprinterUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail imprinterUnderTemperature];
        case MSGraphPrinterProcessingStateDetailImprinterUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail imprinterUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailImprinterUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail imprinterUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailImprinterWarmingUp:
            return [MSGraphPrinterProcessingStateDetail imprinterWarmingUp];
        case MSGraphPrinterProcessingStateDetailInputCannotFeedSizeSelected:
            return [MSGraphPrinterProcessingStateDetail inputCannotFeedSizeSelected];
        case MSGraphPrinterProcessingStateDetailInputManualInputRequest:
            return [MSGraphPrinterProcessingStateDetail inputManualInputRequest];
        case MSGraphPrinterProcessingStateDetailInputMediaColorChange:
            return [MSGraphPrinterProcessingStateDetail inputMediaColorChange];
        case MSGraphPrinterProcessingStateDetailInputMediaFormPartsChange:
            return [MSGraphPrinterProcessingStateDetail inputMediaFormPartsChange];
        case MSGraphPrinterProcessingStateDetailInputMediaSizeChange:
            return [MSGraphPrinterProcessingStateDetail inputMediaSizeChange];
        case MSGraphPrinterProcessingStateDetailInputMediaTrayFailure:
            return [MSGraphPrinterProcessingStateDetail inputMediaTrayFailure];
        case MSGraphPrinterProcessingStateDetailInputMediaTrayFeedError:
            return [MSGraphPrinterProcessingStateDetail inputMediaTrayFeedError];
        case MSGraphPrinterProcessingStateDetailInputMediaTrayJam:
            return [MSGraphPrinterProcessingStateDetail inputMediaTrayJam];
        case MSGraphPrinterProcessingStateDetailInputMediaTypeChange:
            return [MSGraphPrinterProcessingStateDetail inputMediaTypeChange];
        case MSGraphPrinterProcessingStateDetailInputMediaWeightChange:
            return [MSGraphPrinterProcessingStateDetail inputMediaWeightChange];
        case MSGraphPrinterProcessingStateDetailInputPickRollerFailure:
            return [MSGraphPrinterProcessingStateDetail inputPickRollerFailure];
        case MSGraphPrinterProcessingStateDetailInputPickRollerLifeOver:
            return [MSGraphPrinterProcessingStateDetail inputPickRollerLifeOver];
        case MSGraphPrinterProcessingStateDetailInputPickRollerLifeWarn:
            return [MSGraphPrinterProcessingStateDetail inputPickRollerLifeWarn];
        case MSGraphPrinterProcessingStateDetailInputPickRollerMissing:
            return [MSGraphPrinterProcessingStateDetail inputPickRollerMissing];
        case MSGraphPrinterProcessingStateDetailInputTrayElevationFailure:
            return [MSGraphPrinterProcessingStateDetail inputTrayElevationFailure];
        case MSGraphPrinterProcessingStateDetailInputTrayPositionFailure:
            return [MSGraphPrinterProcessingStateDetail inputTrayPositionFailure];
        case MSGraphPrinterProcessingStateDetailInserterAdded:
            return [MSGraphPrinterProcessingStateDetail inserterAdded];
        case MSGraphPrinterProcessingStateDetailInserterAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail inserterAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailInserterAlmostFull:
            return [MSGraphPrinterProcessingStateDetail inserterAlmostFull];
        case MSGraphPrinterProcessingStateDetailInserterAtLimit:
            return [MSGraphPrinterProcessingStateDetail inserterAtLimit];
        case MSGraphPrinterProcessingStateDetailInserterClosed:
            return [MSGraphPrinterProcessingStateDetail inserterClosed];
        case MSGraphPrinterProcessingStateDetailInserterConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail inserterConfigurationChange];
        case MSGraphPrinterProcessingStateDetailInserterCoverClosed:
            return [MSGraphPrinterProcessingStateDetail inserterCoverClosed];
        case MSGraphPrinterProcessingStateDetailInserterCoverOpen:
            return [MSGraphPrinterProcessingStateDetail inserterCoverOpen];
        case MSGraphPrinterProcessingStateDetailInserterEmpty:
            return [MSGraphPrinterProcessingStateDetail inserterEmpty];
        case MSGraphPrinterProcessingStateDetailInserterFull:
            return [MSGraphPrinterProcessingStateDetail inserterFull];
        case MSGraphPrinterProcessingStateDetailInserterInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail inserterInterlockClosed];
        case MSGraphPrinterProcessingStateDetailInserterInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail inserterInterlockOpen];
        case MSGraphPrinterProcessingStateDetailInserterJam:
            return [MSGraphPrinterProcessingStateDetail inserterJam];
        case MSGraphPrinterProcessingStateDetailInserterLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail inserterLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailInserterLifeOver:
            return [MSGraphPrinterProcessingStateDetail inserterLifeOver];
        case MSGraphPrinterProcessingStateDetailInserterMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail inserterMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailInserterMissing:
            return [MSGraphPrinterProcessingStateDetail inserterMissing];
        case MSGraphPrinterProcessingStateDetailInserterMotorFailure:
            return [MSGraphPrinterProcessingStateDetail inserterMotorFailure];
        case MSGraphPrinterProcessingStateDetailInserterNearLimit:
            return [MSGraphPrinterProcessingStateDetail inserterNearLimit];
        case MSGraphPrinterProcessingStateDetailInserterOffline:
            return [MSGraphPrinterProcessingStateDetail inserterOffline];
        case MSGraphPrinterProcessingStateDetailInserterOpened:
            return [MSGraphPrinterProcessingStateDetail inserterOpened];
        case MSGraphPrinterProcessingStateDetailInserterOverTemperature:
            return [MSGraphPrinterProcessingStateDetail inserterOverTemperature];
        case MSGraphPrinterProcessingStateDetailInserterPowerSaver:
            return [MSGraphPrinterProcessingStateDetail inserterPowerSaver];
        case MSGraphPrinterProcessingStateDetailInserterRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail inserterRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailInserterRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail inserterRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailInserterRemoved:
            return [MSGraphPrinterProcessingStateDetail inserterRemoved];
        case MSGraphPrinterProcessingStateDetailInserterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail inserterResourceAdded];
        case MSGraphPrinterProcessingStateDetailInserterResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail inserterResourceRemoved];
        case MSGraphPrinterProcessingStateDetailInserterThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail inserterThermistorFailure];
        case MSGraphPrinterProcessingStateDetailInserterTimingFailure:
            return [MSGraphPrinterProcessingStateDetail inserterTimingFailure];
        case MSGraphPrinterProcessingStateDetailInserterTurnedOff:
            return [MSGraphPrinterProcessingStateDetail inserterTurnedOff];
        case MSGraphPrinterProcessingStateDetailInserterTurnedOn:
            return [MSGraphPrinterProcessingStateDetail inserterTurnedOn];
        case MSGraphPrinterProcessingStateDetailInserterUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail inserterUnderTemperature];
        case MSGraphPrinterProcessingStateDetailInserterUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail inserterUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailInserterUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail inserterUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailInserterWarmingUp:
            return [MSGraphPrinterProcessingStateDetail inserterWarmingUp];
        case MSGraphPrinterProcessingStateDetailInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail interlockClosed];
        case MSGraphPrinterProcessingStateDetailInterpreterCartridgeAdded:
            return [MSGraphPrinterProcessingStateDetail interpreterCartridgeAdded];
        case MSGraphPrinterProcessingStateDetailInterpreterCartridgeDeleted:
            return [MSGraphPrinterProcessingStateDetail interpreterCartridgeDeleted];
        case MSGraphPrinterProcessingStateDetailInterpreterComplexPageEncountered:
            return [MSGraphPrinterProcessingStateDetail interpreterComplexPageEncountered];
        case MSGraphPrinterProcessingStateDetailInterpreterMemoryDecrease:
            return [MSGraphPrinterProcessingStateDetail interpreterMemoryDecrease];
        case MSGraphPrinterProcessingStateDetailInterpreterMemoryIncrease:
            return [MSGraphPrinterProcessingStateDetail interpreterMemoryIncrease];
        case MSGraphPrinterProcessingStateDetailInterpreterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail interpreterResourceAdded];
        case MSGraphPrinterProcessingStateDetailInterpreterResourceDeleted:
            return [MSGraphPrinterProcessingStateDetail interpreterResourceDeleted];
        case MSGraphPrinterProcessingStateDetailLampAtEol:
            return [MSGraphPrinterProcessingStateDetail lampAtEol];
        case MSGraphPrinterProcessingStateDetailLampFailure:
            return [MSGraphPrinterProcessingStateDetail lampFailure];
        case MSGraphPrinterProcessingStateDetailLampNearEol:
            return [MSGraphPrinterProcessingStateDetail lampNearEol];
        case MSGraphPrinterProcessingStateDetailLaserAtEol:
            return [MSGraphPrinterProcessingStateDetail laserAtEol];
        case MSGraphPrinterProcessingStateDetailLaserFailure:
            return [MSGraphPrinterProcessingStateDetail laserFailure];
        case MSGraphPrinterProcessingStateDetailLaserNearEol:
            return [MSGraphPrinterProcessingStateDetail laserNearEol];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAdded:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeAdded];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAlmostFull:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeAlmostFull];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAtLimit:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeAtLimit];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeClosed:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeClosed];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeConfigurationChange];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeCoverClosed:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeCoverClosed];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeCoverOpen:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeCoverOpen];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeEmpty:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeEmpty];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeFull:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeFull];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeInterlockClosed];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeInterlockOpen];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeJam:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeJam];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeLifeOver:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeLifeOver];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeMissing:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeMissing];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeMotorFailure:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeMotorFailure];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeNearLimit:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeNearLimit];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeOffline:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeOffline];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeOpened:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeOpened];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeOverTemperature:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeOverTemperature];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopePowerSaver:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopePowerSaver];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeRemoved:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeRemoved];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeResourceAdded:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeResourceAdded];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeResourceRemoved];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeThermistorFailure];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeTimingFailure:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeTimingFailure];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeTurnedOff:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeTurnedOff];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeTurnedOn:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeTurnedOn];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeUnderTemperature];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeWarmingUp:
            return [MSGraphPrinterProcessingStateDetail makeEnvelopeWarmingUp];
        case MSGraphPrinterProcessingStateDetailMarkerAdjustingPrintQuality:
            return [MSGraphPrinterProcessingStateDetail markerAdjustingPrintQuality];
        case MSGraphPrinterProcessingStateDetailMarkerCleanerMissing:
            return [MSGraphPrinterProcessingStateDetail markerCleanerMissing];
        case MSGraphPrinterProcessingStateDetailMarkerDeveloperAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail markerDeveloperAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerDeveloperEmpty:
            return [MSGraphPrinterProcessingStateDetail markerDeveloperEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerDeveloperMissing:
            return [MSGraphPrinterProcessingStateDetail markerDeveloperMissing];
        case MSGraphPrinterProcessingStateDetailMarkerFuserMissing:
            return [MSGraphPrinterProcessingStateDetail markerFuserMissing];
        case MSGraphPrinterProcessingStateDetailMarkerFuserThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail markerFuserThermistorFailure];
        case MSGraphPrinterProcessingStateDetailMarkerFuserTimingFailure:
            return [MSGraphPrinterProcessingStateDetail markerFuserTimingFailure];
        case MSGraphPrinterProcessingStateDetailMarkerInkAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail markerInkAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerInkEmpty:
            return [MSGraphPrinterProcessingStateDetail markerInkEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerInkMissing:
            return [MSGraphPrinterProcessingStateDetail markerInkMissing];
        case MSGraphPrinterProcessingStateDetailMarkerOpcMissing:
            return [MSGraphPrinterProcessingStateDetail markerOpcMissing];
        case MSGraphPrinterProcessingStateDetailMarkerPrintRibbonAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail markerPrintRibbonAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerPrintRibbonEmpty:
            return [MSGraphPrinterProcessingStateDetail markerPrintRibbonEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerPrintRibbonMissing:
            return [MSGraphPrinterProcessingStateDetail markerPrintRibbonMissing];
        case MSGraphPrinterProcessingStateDetailMarkerSupplyAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail markerSupplyAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailMarkerSupplyMissing:
            return [MSGraphPrinterProcessingStateDetail markerSupplyMissing];
        case MSGraphPrinterProcessingStateDetailMarkerTonerCartridgeMissing:
            return [MSGraphPrinterProcessingStateDetail markerTonerCartridgeMissing];
        case MSGraphPrinterProcessingStateDetailMarkerTonerMissing:
            return [MSGraphPrinterProcessingStateDetail markerTonerMissing];
        case MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleAlmostFull:
            return [MSGraphPrinterProcessingStateDetail markerWasteInkReceptacleAlmostFull];
        case MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleFull:
            return [MSGraphPrinterProcessingStateDetail markerWasteInkReceptacleFull];
        case MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleMissing:
            return [MSGraphPrinterProcessingStateDetail markerWasteInkReceptacleMissing];
        case MSGraphPrinterProcessingStateDetailMarkerWasteMissing:
            return [MSGraphPrinterProcessingStateDetail markerWasteMissing];
        case MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleAlmostFull:
            return [MSGraphPrinterProcessingStateDetail markerWasteTonerReceptacleAlmostFull];
        case MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleFull:
            return [MSGraphPrinterProcessingStateDetail markerWasteTonerReceptacleFull];
        case MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleMissing:
            return [MSGraphPrinterProcessingStateDetail markerWasteTonerReceptacleMissing];
        case MSGraphPrinterProcessingStateDetailMaterialEmpty:
            return [MSGraphPrinterProcessingStateDetail materialEmpty];
        case MSGraphPrinterProcessingStateDetailMaterialLow:
            return [MSGraphPrinterProcessingStateDetail materialLow];
        case MSGraphPrinterProcessingStateDetailMaterialNeeded:
            return [MSGraphPrinterProcessingStateDetail materialNeeded];
        case MSGraphPrinterProcessingStateDetailMediaDrying:
            return [MSGraphPrinterProcessingStateDetail mediaDrying];
        case MSGraphPrinterProcessingStateDetailMediaPathCannotDuplexMediaSelected:
            return [MSGraphPrinterProcessingStateDetail mediaPathCannotDuplexMediaSelected];
        case MSGraphPrinterProcessingStateDetailMediaPathFailure:
            return [MSGraphPrinterProcessingStateDetail mediaPathFailure];
        case MSGraphPrinterProcessingStateDetailMediaPathInputEmpty:
            return [MSGraphPrinterProcessingStateDetail mediaPathInputEmpty];
        case MSGraphPrinterProcessingStateDetailMediaPathInputFeedError:
            return [MSGraphPrinterProcessingStateDetail mediaPathInputFeedError];
        case MSGraphPrinterProcessingStateDetailMediaPathInputJam:
            return [MSGraphPrinterProcessingStateDetail mediaPathInputJam];
        case MSGraphPrinterProcessingStateDetailMediaPathInputRequest:
            return [MSGraphPrinterProcessingStateDetail mediaPathInputRequest];
        case MSGraphPrinterProcessingStateDetailMediaPathJam:
            return [MSGraphPrinterProcessingStateDetail mediaPathJam];
        case MSGraphPrinterProcessingStateDetailMediaPathMediaTrayAlmostFull:
            return [MSGraphPrinterProcessingStateDetail mediaPathMediaTrayAlmostFull];
        case MSGraphPrinterProcessingStateDetailMediaPathMediaTrayFull:
            return [MSGraphPrinterProcessingStateDetail mediaPathMediaTrayFull];
        case MSGraphPrinterProcessingStateDetailMediaPathMediaTrayMissing:
            return [MSGraphPrinterProcessingStateDetail mediaPathMediaTrayMissing];
        case MSGraphPrinterProcessingStateDetailMediaPathOutputFeedError:
            return [MSGraphPrinterProcessingStateDetail mediaPathOutputFeedError];
        case MSGraphPrinterProcessingStateDetailMediaPathOutputFull:
            return [MSGraphPrinterProcessingStateDetail mediaPathOutputFull];
        case MSGraphPrinterProcessingStateDetailMediaPathOutputJam:
            return [MSGraphPrinterProcessingStateDetail mediaPathOutputJam];
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerFailure:
            return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerFailure];
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerLifeOver:
            return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerLifeOver];
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerLifeWarn:
            return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerLifeWarn];
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerMissing:
            return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerMissing];
        case MSGraphPrinterProcessingStateDetailMotorFailure:
            return [MSGraphPrinterProcessingStateDetail motorFailure];
        case MSGraphPrinterProcessingStateDetailOutputMailboxSelectFailure:
            return [MSGraphPrinterProcessingStateDetail outputMailboxSelectFailure];
        case MSGraphPrinterProcessingStateDetailOutputMediaTrayFailure:
            return [MSGraphPrinterProcessingStateDetail outputMediaTrayFailure];
        case MSGraphPrinterProcessingStateDetailOutputMediaTrayFeedError:
            return [MSGraphPrinterProcessingStateDetail outputMediaTrayFeedError];
        case MSGraphPrinterProcessingStateDetailOutputMediaTrayJam:
            return [MSGraphPrinterProcessingStateDetail outputMediaTrayJam];
        case MSGraphPrinterProcessingStateDetailPerforaterAdded:
            return [MSGraphPrinterProcessingStateDetail perforaterAdded];
        case MSGraphPrinterProcessingStateDetailPerforaterAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail perforaterAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailPerforaterAlmostFull:
            return [MSGraphPrinterProcessingStateDetail perforaterAlmostFull];
        case MSGraphPrinterProcessingStateDetailPerforaterAtLimit:
            return [MSGraphPrinterProcessingStateDetail perforaterAtLimit];
        case MSGraphPrinterProcessingStateDetailPerforaterClosed:
            return [MSGraphPrinterProcessingStateDetail perforaterClosed];
        case MSGraphPrinterProcessingStateDetailPerforaterConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail perforaterConfigurationChange];
        case MSGraphPrinterProcessingStateDetailPerforaterCoverClosed:
            return [MSGraphPrinterProcessingStateDetail perforaterCoverClosed];
        case MSGraphPrinterProcessingStateDetailPerforaterCoverOpen:
            return [MSGraphPrinterProcessingStateDetail perforaterCoverOpen];
        case MSGraphPrinterProcessingStateDetailPerforaterEmpty:
            return [MSGraphPrinterProcessingStateDetail perforaterEmpty];
        case MSGraphPrinterProcessingStateDetailPerforaterFull:
            return [MSGraphPrinterProcessingStateDetail perforaterFull];
        case MSGraphPrinterProcessingStateDetailPerforaterInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail perforaterInterlockClosed];
        case MSGraphPrinterProcessingStateDetailPerforaterInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail perforaterInterlockOpen];
        case MSGraphPrinterProcessingStateDetailPerforaterJam:
            return [MSGraphPrinterProcessingStateDetail perforaterJam];
        case MSGraphPrinterProcessingStateDetailPerforaterLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail perforaterLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailPerforaterLifeOver:
            return [MSGraphPrinterProcessingStateDetail perforaterLifeOver];
        case MSGraphPrinterProcessingStateDetailPerforaterMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail perforaterMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailPerforaterMissing:
            return [MSGraphPrinterProcessingStateDetail perforaterMissing];
        case MSGraphPrinterProcessingStateDetailPerforaterMotorFailure:
            return [MSGraphPrinterProcessingStateDetail perforaterMotorFailure];
        case MSGraphPrinterProcessingStateDetailPerforaterNearLimit:
            return [MSGraphPrinterProcessingStateDetail perforaterNearLimit];
        case MSGraphPrinterProcessingStateDetailPerforaterOffline:
            return [MSGraphPrinterProcessingStateDetail perforaterOffline];
        case MSGraphPrinterProcessingStateDetailPerforaterOpened:
            return [MSGraphPrinterProcessingStateDetail perforaterOpened];
        case MSGraphPrinterProcessingStateDetailPerforaterOverTemperature:
            return [MSGraphPrinterProcessingStateDetail perforaterOverTemperature];
        case MSGraphPrinterProcessingStateDetailPerforaterPowerSaver:
            return [MSGraphPrinterProcessingStateDetail perforaterPowerSaver];
        case MSGraphPrinterProcessingStateDetailPerforaterRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail perforaterRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailPerforaterRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail perforaterRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailPerforaterRemoved:
            return [MSGraphPrinterProcessingStateDetail perforaterRemoved];
        case MSGraphPrinterProcessingStateDetailPerforaterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail perforaterResourceAdded];
        case MSGraphPrinterProcessingStateDetailPerforaterResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail perforaterResourceRemoved];
        case MSGraphPrinterProcessingStateDetailPerforaterThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail perforaterThermistorFailure];
        case MSGraphPrinterProcessingStateDetailPerforaterTimingFailure:
            return [MSGraphPrinterProcessingStateDetail perforaterTimingFailure];
        case MSGraphPrinterProcessingStateDetailPerforaterTurnedOff:
            return [MSGraphPrinterProcessingStateDetail perforaterTurnedOff];
        case MSGraphPrinterProcessingStateDetailPerforaterTurnedOn:
            return [MSGraphPrinterProcessingStateDetail perforaterTurnedOn];
        case MSGraphPrinterProcessingStateDetailPerforaterUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail perforaterUnderTemperature];
        case MSGraphPrinterProcessingStateDetailPerforaterUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail perforaterUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailPerforaterUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail perforaterUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailPerforaterWarmingUp:
            return [MSGraphPrinterProcessingStateDetail perforaterWarmingUp];
        case MSGraphPrinterProcessingStateDetailPlatformCooling:
            return [MSGraphPrinterProcessingStateDetail platformCooling];
        case MSGraphPrinterProcessingStateDetailPlatformFailure:
            return [MSGraphPrinterProcessingStateDetail platformFailure];
        case MSGraphPrinterProcessingStateDetailPlatformHeating:
            return [MSGraphPrinterProcessingStateDetail platformHeating];
        case MSGraphPrinterProcessingStateDetailPlatformTemperatureHigh:
            return [MSGraphPrinterProcessingStateDetail platformTemperatureHigh];
        case MSGraphPrinterProcessingStateDetailPlatformTemperatureLow:
            return [MSGraphPrinterProcessingStateDetail platformTemperatureLow];
        case MSGraphPrinterProcessingStateDetailPowerDown:
            return [MSGraphPrinterProcessingStateDetail powerDown];
        case MSGraphPrinterProcessingStateDetailPowerUp:
            return [MSGraphPrinterProcessingStateDetail powerUp];
        case MSGraphPrinterProcessingStateDetailPrinterManualReset:
            return [MSGraphPrinterProcessingStateDetail printerManualReset];
        case MSGraphPrinterProcessingStateDetailPrinterNmsReset:
            return [MSGraphPrinterProcessingStateDetail printerNmsReset];
        case MSGraphPrinterProcessingStateDetailPrinterReadyToPrint:
            return [MSGraphPrinterProcessingStateDetail printerReadyToPrint];
        case MSGraphPrinterProcessingStateDetailPuncherAdded:
            return [MSGraphPrinterProcessingStateDetail puncherAdded];
        case MSGraphPrinterProcessingStateDetailPuncherAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail puncherAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailPuncherAlmostFull:
            return [MSGraphPrinterProcessingStateDetail puncherAlmostFull];
        case MSGraphPrinterProcessingStateDetailPuncherAtLimit:
            return [MSGraphPrinterProcessingStateDetail puncherAtLimit];
        case MSGraphPrinterProcessingStateDetailPuncherClosed:
            return [MSGraphPrinterProcessingStateDetail puncherClosed];
        case MSGraphPrinterProcessingStateDetailPuncherConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail puncherConfigurationChange];
        case MSGraphPrinterProcessingStateDetailPuncherCoverClosed:
            return [MSGraphPrinterProcessingStateDetail puncherCoverClosed];
        case MSGraphPrinterProcessingStateDetailPuncherCoverOpen:
            return [MSGraphPrinterProcessingStateDetail puncherCoverOpen];
        case MSGraphPrinterProcessingStateDetailPuncherEmpty:
            return [MSGraphPrinterProcessingStateDetail puncherEmpty];
        case MSGraphPrinterProcessingStateDetailPuncherFull:
            return [MSGraphPrinterProcessingStateDetail puncherFull];
        case MSGraphPrinterProcessingStateDetailPuncherInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail puncherInterlockClosed];
        case MSGraphPrinterProcessingStateDetailPuncherInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail puncherInterlockOpen];
        case MSGraphPrinterProcessingStateDetailPuncherJam:
            return [MSGraphPrinterProcessingStateDetail puncherJam];
        case MSGraphPrinterProcessingStateDetailPuncherLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail puncherLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailPuncherLifeOver:
            return [MSGraphPrinterProcessingStateDetail puncherLifeOver];
        case MSGraphPrinterProcessingStateDetailPuncherMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail puncherMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailPuncherMissing:
            return [MSGraphPrinterProcessingStateDetail puncherMissing];
        case MSGraphPrinterProcessingStateDetailPuncherMotorFailure:
            return [MSGraphPrinterProcessingStateDetail puncherMotorFailure];
        case MSGraphPrinterProcessingStateDetailPuncherNearLimit:
            return [MSGraphPrinterProcessingStateDetail puncherNearLimit];
        case MSGraphPrinterProcessingStateDetailPuncherOffline:
            return [MSGraphPrinterProcessingStateDetail puncherOffline];
        case MSGraphPrinterProcessingStateDetailPuncherOpened:
            return [MSGraphPrinterProcessingStateDetail puncherOpened];
        case MSGraphPrinterProcessingStateDetailPuncherOverTemperature:
            return [MSGraphPrinterProcessingStateDetail puncherOverTemperature];
        case MSGraphPrinterProcessingStateDetailPuncherPowerSaver:
            return [MSGraphPrinterProcessingStateDetail puncherPowerSaver];
        case MSGraphPrinterProcessingStateDetailPuncherRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail puncherRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailPuncherRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail puncherRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailPuncherRemoved:
            return [MSGraphPrinterProcessingStateDetail puncherRemoved];
        case MSGraphPrinterProcessingStateDetailPuncherResourceAdded:
            return [MSGraphPrinterProcessingStateDetail puncherResourceAdded];
        case MSGraphPrinterProcessingStateDetailPuncherResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail puncherResourceRemoved];
        case MSGraphPrinterProcessingStateDetailPuncherThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail puncherThermistorFailure];
        case MSGraphPrinterProcessingStateDetailPuncherTimingFailure:
            return [MSGraphPrinterProcessingStateDetail puncherTimingFailure];
        case MSGraphPrinterProcessingStateDetailPuncherTurnedOff:
            return [MSGraphPrinterProcessingStateDetail puncherTurnedOff];
        case MSGraphPrinterProcessingStateDetailPuncherTurnedOn:
            return [MSGraphPrinterProcessingStateDetail puncherTurnedOn];
        case MSGraphPrinterProcessingStateDetailPuncherUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail puncherUnderTemperature];
        case MSGraphPrinterProcessingStateDetailPuncherUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail puncherUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailPuncherUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail puncherUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailPuncherWarmingUp:
            return [MSGraphPrinterProcessingStateDetail puncherWarmingUp];
        case MSGraphPrinterProcessingStateDetailResuming:
            return [MSGraphPrinterProcessingStateDetail resuming];
        case MSGraphPrinterProcessingStateDetailScanMediaPathFailure:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathFailure];
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputEmpty:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathInputEmpty];
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputFeedError:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathInputFeedError];
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputJam:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathInputJam];
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputRequest:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathInputRequest];
        case MSGraphPrinterProcessingStateDetailScanMediaPathJam:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathJam];
        case MSGraphPrinterProcessingStateDetailScanMediaPathOutputFeedError:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathOutputFeedError];
        case MSGraphPrinterProcessingStateDetailScanMediaPathOutputFull:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathOutputFull];
        case MSGraphPrinterProcessingStateDetailScanMediaPathOutputJam:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathOutputJam];
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerFailure:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerFailure];
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerLifeOver:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerLifeOver];
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerLifeWarn:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerLifeWarn];
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerMissing:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerMissing];
        case MSGraphPrinterProcessingStateDetailScanMediaPathTrayAlmostFull:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathTrayAlmostFull];
        case MSGraphPrinterProcessingStateDetailScanMediaPathTrayFull:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathTrayFull];
        case MSGraphPrinterProcessingStateDetailScanMediaPathTrayMissing:
            return [MSGraphPrinterProcessingStateDetail scanMediaPathTrayMissing];
        case MSGraphPrinterProcessingStateDetailScannerLightFailure:
            return [MSGraphPrinterProcessingStateDetail scannerLightFailure];
        case MSGraphPrinterProcessingStateDetailScannerLightLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail scannerLightLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailScannerLightLifeOver:
            return [MSGraphPrinterProcessingStateDetail scannerLightLifeOver];
        case MSGraphPrinterProcessingStateDetailScannerLightMissing:
            return [MSGraphPrinterProcessingStateDetail scannerLightMissing];
        case MSGraphPrinterProcessingStateDetailScannerSensorFailure:
            return [MSGraphPrinterProcessingStateDetail scannerSensorFailure];
        case MSGraphPrinterProcessingStateDetailScannerSensorLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail scannerSensorLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailScannerSensorLifeOver:
            return [MSGraphPrinterProcessingStateDetail scannerSensorLifeOver];
        case MSGraphPrinterProcessingStateDetailScannerSensorMissing:
            return [MSGraphPrinterProcessingStateDetail scannerSensorMissing];
        case MSGraphPrinterProcessingStateDetailSeparationCutterAdded:
            return [MSGraphPrinterProcessingStateDetail separationCutterAdded];
        case MSGraphPrinterProcessingStateDetailSeparationCutterAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail separationCutterAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailSeparationCutterAlmostFull:
            return [MSGraphPrinterProcessingStateDetail separationCutterAlmostFull];
        case MSGraphPrinterProcessingStateDetailSeparationCutterAtLimit:
            return [MSGraphPrinterProcessingStateDetail separationCutterAtLimit];
        case MSGraphPrinterProcessingStateDetailSeparationCutterClosed:
            return [MSGraphPrinterProcessingStateDetail separationCutterClosed];
        case MSGraphPrinterProcessingStateDetailSeparationCutterConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail separationCutterConfigurationChange];
        case MSGraphPrinterProcessingStateDetailSeparationCutterCoverClosed:
            return [MSGraphPrinterProcessingStateDetail separationCutterCoverClosed];
        case MSGraphPrinterProcessingStateDetailSeparationCutterCoverOpen:
            return [MSGraphPrinterProcessingStateDetail separationCutterCoverOpen];
        case MSGraphPrinterProcessingStateDetailSeparationCutterEmpty:
            return [MSGraphPrinterProcessingStateDetail separationCutterEmpty];
        case MSGraphPrinterProcessingStateDetailSeparationCutterFull:
            return [MSGraphPrinterProcessingStateDetail separationCutterFull];
        case MSGraphPrinterProcessingStateDetailSeparationCutterInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail separationCutterInterlockClosed];
        case MSGraphPrinterProcessingStateDetailSeparationCutterInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail separationCutterInterlockOpen];
        case MSGraphPrinterProcessingStateDetailSeparationCutterJam:
            return [MSGraphPrinterProcessingStateDetail separationCutterJam];
        case MSGraphPrinterProcessingStateDetailSeparationCutterLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail separationCutterLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailSeparationCutterLifeOver:
            return [MSGraphPrinterProcessingStateDetail separationCutterLifeOver];
        case MSGraphPrinterProcessingStateDetailSeparationCutterMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail separationCutterMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailSeparationCutterMissing:
            return [MSGraphPrinterProcessingStateDetail separationCutterMissing];
        case MSGraphPrinterProcessingStateDetailSeparationCutterMotorFailure:
            return [MSGraphPrinterProcessingStateDetail separationCutterMotorFailure];
        case MSGraphPrinterProcessingStateDetailSeparationCutterNearLimit:
            return [MSGraphPrinterProcessingStateDetail separationCutterNearLimit];
        case MSGraphPrinterProcessingStateDetailSeparationCutterOffline:
            return [MSGraphPrinterProcessingStateDetail separationCutterOffline];
        case MSGraphPrinterProcessingStateDetailSeparationCutterOpened:
            return [MSGraphPrinterProcessingStateDetail separationCutterOpened];
        case MSGraphPrinterProcessingStateDetailSeparationCutterOverTemperature:
            return [MSGraphPrinterProcessingStateDetail separationCutterOverTemperature];
        case MSGraphPrinterProcessingStateDetailSeparationCutterPowerSaver:
            return [MSGraphPrinterProcessingStateDetail separationCutterPowerSaver];
        case MSGraphPrinterProcessingStateDetailSeparationCutterRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail separationCutterRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSeparationCutterRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail separationCutterRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailSeparationCutterRemoved:
            return [MSGraphPrinterProcessingStateDetail separationCutterRemoved];
        case MSGraphPrinterProcessingStateDetailSeparationCutterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail separationCutterResourceAdded];
        case MSGraphPrinterProcessingStateDetailSeparationCutterResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail separationCutterResourceRemoved];
        case MSGraphPrinterProcessingStateDetailSeparationCutterThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail separationCutterThermistorFailure];
        case MSGraphPrinterProcessingStateDetailSeparationCutterTimingFailure:
            return [MSGraphPrinterProcessingStateDetail separationCutterTimingFailure];
        case MSGraphPrinterProcessingStateDetailSeparationCutterTurnedOff:
            return [MSGraphPrinterProcessingStateDetail separationCutterTurnedOff];
        case MSGraphPrinterProcessingStateDetailSeparationCutterTurnedOn:
            return [MSGraphPrinterProcessingStateDetail separationCutterTurnedOn];
        case MSGraphPrinterProcessingStateDetailSeparationCutterUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail separationCutterUnderTemperature];
        case MSGraphPrinterProcessingStateDetailSeparationCutterUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail separationCutterUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSeparationCutterUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail separationCutterUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailSeparationCutterWarmingUp:
            return [MSGraphPrinterProcessingStateDetail separationCutterWarmingUp];
        case MSGraphPrinterProcessingStateDetailSheetRotatorAdded:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorAdded];
        case MSGraphPrinterProcessingStateDetailSheetRotatorAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailSheetRotatorAlmostFull:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorAlmostFull];
        case MSGraphPrinterProcessingStateDetailSheetRotatorAtLimit:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorAtLimit];
        case MSGraphPrinterProcessingStateDetailSheetRotatorClosed:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorClosed];
        case MSGraphPrinterProcessingStateDetailSheetRotatorConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorConfigurationChange];
        case MSGraphPrinterProcessingStateDetailSheetRotatorCoverClosed:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorCoverClosed];
        case MSGraphPrinterProcessingStateDetailSheetRotatorCoverOpen:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorCoverOpen];
        case MSGraphPrinterProcessingStateDetailSheetRotatorEmpty:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorEmpty];
        case MSGraphPrinterProcessingStateDetailSheetRotatorFull:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorFull];
        case MSGraphPrinterProcessingStateDetailSheetRotatorInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorInterlockClosed];
        case MSGraphPrinterProcessingStateDetailSheetRotatorInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorInterlockOpen];
        case MSGraphPrinterProcessingStateDetailSheetRotatorJam:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorJam];
        case MSGraphPrinterProcessingStateDetailSheetRotatorLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailSheetRotatorLifeOver:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorLifeOver];
        case MSGraphPrinterProcessingStateDetailSheetRotatorMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailSheetRotatorMissing:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorMissing];
        case MSGraphPrinterProcessingStateDetailSheetRotatorMotorFailure:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorMotorFailure];
        case MSGraphPrinterProcessingStateDetailSheetRotatorNearLimit:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorNearLimit];
        case MSGraphPrinterProcessingStateDetailSheetRotatorOffline:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorOffline];
        case MSGraphPrinterProcessingStateDetailSheetRotatorOpened:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorOpened];
        case MSGraphPrinterProcessingStateDetailSheetRotatorOverTemperature:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorOverTemperature];
        case MSGraphPrinterProcessingStateDetailSheetRotatorPowerSaver:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorPowerSaver];
        case MSGraphPrinterProcessingStateDetailSheetRotatorRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSheetRotatorRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailSheetRotatorRemoved:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorRemoved];
        case MSGraphPrinterProcessingStateDetailSheetRotatorResourceAdded:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorResourceAdded];
        case MSGraphPrinterProcessingStateDetailSheetRotatorResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorResourceRemoved];
        case MSGraphPrinterProcessingStateDetailSheetRotatorThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorThermistorFailure];
        case MSGraphPrinterProcessingStateDetailSheetRotatorTimingFailure:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorTimingFailure];
        case MSGraphPrinterProcessingStateDetailSheetRotatorTurnedOff:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorTurnedOff];
        case MSGraphPrinterProcessingStateDetailSheetRotatorTurnedOn:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorTurnedOn];
        case MSGraphPrinterProcessingStateDetailSheetRotatorUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorUnderTemperature];
        case MSGraphPrinterProcessingStateDetailSheetRotatorUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSheetRotatorUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailSheetRotatorWarmingUp:
            return [MSGraphPrinterProcessingStateDetail sheetRotatorWarmingUp];
        case MSGraphPrinterProcessingStateDetailSlitterAdded:
            return [MSGraphPrinterProcessingStateDetail slitterAdded];
        case MSGraphPrinterProcessingStateDetailSlitterAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail slitterAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailSlitterAlmostFull:
            return [MSGraphPrinterProcessingStateDetail slitterAlmostFull];
        case MSGraphPrinterProcessingStateDetailSlitterAtLimit:
            return [MSGraphPrinterProcessingStateDetail slitterAtLimit];
        case MSGraphPrinterProcessingStateDetailSlitterClosed:
            return [MSGraphPrinterProcessingStateDetail slitterClosed];
        case MSGraphPrinterProcessingStateDetailSlitterConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail slitterConfigurationChange];
        case MSGraphPrinterProcessingStateDetailSlitterCoverClosed:
            return [MSGraphPrinterProcessingStateDetail slitterCoverClosed];
        case MSGraphPrinterProcessingStateDetailSlitterCoverOpen:
            return [MSGraphPrinterProcessingStateDetail slitterCoverOpen];
        case MSGraphPrinterProcessingStateDetailSlitterEmpty:
            return [MSGraphPrinterProcessingStateDetail slitterEmpty];
        case MSGraphPrinterProcessingStateDetailSlitterFull:
            return [MSGraphPrinterProcessingStateDetail slitterFull];
        case MSGraphPrinterProcessingStateDetailSlitterInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail slitterInterlockClosed];
        case MSGraphPrinterProcessingStateDetailSlitterInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail slitterInterlockOpen];
        case MSGraphPrinterProcessingStateDetailSlitterJam:
            return [MSGraphPrinterProcessingStateDetail slitterJam];
        case MSGraphPrinterProcessingStateDetailSlitterLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail slitterLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailSlitterLifeOver:
            return [MSGraphPrinterProcessingStateDetail slitterLifeOver];
        case MSGraphPrinterProcessingStateDetailSlitterMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail slitterMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailSlitterMissing:
            return [MSGraphPrinterProcessingStateDetail slitterMissing];
        case MSGraphPrinterProcessingStateDetailSlitterMotorFailure:
            return [MSGraphPrinterProcessingStateDetail slitterMotorFailure];
        case MSGraphPrinterProcessingStateDetailSlitterNearLimit:
            return [MSGraphPrinterProcessingStateDetail slitterNearLimit];
        case MSGraphPrinterProcessingStateDetailSlitterOffline:
            return [MSGraphPrinterProcessingStateDetail slitterOffline];
        case MSGraphPrinterProcessingStateDetailSlitterOpened:
            return [MSGraphPrinterProcessingStateDetail slitterOpened];
        case MSGraphPrinterProcessingStateDetailSlitterOverTemperature:
            return [MSGraphPrinterProcessingStateDetail slitterOverTemperature];
        case MSGraphPrinterProcessingStateDetailSlitterPowerSaver:
            return [MSGraphPrinterProcessingStateDetail slitterPowerSaver];
        case MSGraphPrinterProcessingStateDetailSlitterRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail slitterRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSlitterRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail slitterRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailSlitterRemoved:
            return [MSGraphPrinterProcessingStateDetail slitterRemoved];
        case MSGraphPrinterProcessingStateDetailSlitterResourceAdded:
            return [MSGraphPrinterProcessingStateDetail slitterResourceAdded];
        case MSGraphPrinterProcessingStateDetailSlitterResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail slitterResourceRemoved];
        case MSGraphPrinterProcessingStateDetailSlitterThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail slitterThermistorFailure];
        case MSGraphPrinterProcessingStateDetailSlitterTimingFailure:
            return [MSGraphPrinterProcessingStateDetail slitterTimingFailure];
        case MSGraphPrinterProcessingStateDetailSlitterTurnedOff:
            return [MSGraphPrinterProcessingStateDetail slitterTurnedOff];
        case MSGraphPrinterProcessingStateDetailSlitterTurnedOn:
            return [MSGraphPrinterProcessingStateDetail slitterTurnedOn];
        case MSGraphPrinterProcessingStateDetailSlitterUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail slitterUnderTemperature];
        case MSGraphPrinterProcessingStateDetailSlitterUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail slitterUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSlitterUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail slitterUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailSlitterWarmingUp:
            return [MSGraphPrinterProcessingStateDetail slitterWarmingUp];
        case MSGraphPrinterProcessingStateDetailStackerAdded:
            return [MSGraphPrinterProcessingStateDetail stackerAdded];
        case MSGraphPrinterProcessingStateDetailStackerAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail stackerAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailStackerAlmostFull:
            return [MSGraphPrinterProcessingStateDetail stackerAlmostFull];
        case MSGraphPrinterProcessingStateDetailStackerAtLimit:
            return [MSGraphPrinterProcessingStateDetail stackerAtLimit];
        case MSGraphPrinterProcessingStateDetailStackerClosed:
            return [MSGraphPrinterProcessingStateDetail stackerClosed];
        case MSGraphPrinterProcessingStateDetailStackerConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail stackerConfigurationChange];
        case MSGraphPrinterProcessingStateDetailStackerCoverClosed:
            return [MSGraphPrinterProcessingStateDetail stackerCoverClosed];
        case MSGraphPrinterProcessingStateDetailStackerCoverOpen:
            return [MSGraphPrinterProcessingStateDetail stackerCoverOpen];
        case MSGraphPrinterProcessingStateDetailStackerEmpty:
            return [MSGraphPrinterProcessingStateDetail stackerEmpty];
        case MSGraphPrinterProcessingStateDetailStackerFull:
            return [MSGraphPrinterProcessingStateDetail stackerFull];
        case MSGraphPrinterProcessingStateDetailStackerInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail stackerInterlockClosed];
        case MSGraphPrinterProcessingStateDetailStackerInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail stackerInterlockOpen];
        case MSGraphPrinterProcessingStateDetailStackerJam:
            return [MSGraphPrinterProcessingStateDetail stackerJam];
        case MSGraphPrinterProcessingStateDetailStackerLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail stackerLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailStackerLifeOver:
            return [MSGraphPrinterProcessingStateDetail stackerLifeOver];
        case MSGraphPrinterProcessingStateDetailStackerMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail stackerMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailStackerMissing:
            return [MSGraphPrinterProcessingStateDetail stackerMissing];
        case MSGraphPrinterProcessingStateDetailStackerMotorFailure:
            return [MSGraphPrinterProcessingStateDetail stackerMotorFailure];
        case MSGraphPrinterProcessingStateDetailStackerNearLimit:
            return [MSGraphPrinterProcessingStateDetail stackerNearLimit];
        case MSGraphPrinterProcessingStateDetailStackerOffline:
            return [MSGraphPrinterProcessingStateDetail stackerOffline];
        case MSGraphPrinterProcessingStateDetailStackerOpened:
            return [MSGraphPrinterProcessingStateDetail stackerOpened];
        case MSGraphPrinterProcessingStateDetailStackerOverTemperature:
            return [MSGraphPrinterProcessingStateDetail stackerOverTemperature];
        case MSGraphPrinterProcessingStateDetailStackerPowerSaver:
            return [MSGraphPrinterProcessingStateDetail stackerPowerSaver];
        case MSGraphPrinterProcessingStateDetailStackerRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail stackerRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailStackerRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail stackerRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailStackerRemoved:
            return [MSGraphPrinterProcessingStateDetail stackerRemoved];
        case MSGraphPrinterProcessingStateDetailStackerResourceAdded:
            return [MSGraphPrinterProcessingStateDetail stackerResourceAdded];
        case MSGraphPrinterProcessingStateDetailStackerResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail stackerResourceRemoved];
        case MSGraphPrinterProcessingStateDetailStackerThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail stackerThermistorFailure];
        case MSGraphPrinterProcessingStateDetailStackerTimingFailure:
            return [MSGraphPrinterProcessingStateDetail stackerTimingFailure];
        case MSGraphPrinterProcessingStateDetailStackerTurnedOff:
            return [MSGraphPrinterProcessingStateDetail stackerTurnedOff];
        case MSGraphPrinterProcessingStateDetailStackerTurnedOn:
            return [MSGraphPrinterProcessingStateDetail stackerTurnedOn];
        case MSGraphPrinterProcessingStateDetailStackerUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail stackerUnderTemperature];
        case MSGraphPrinterProcessingStateDetailStackerUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail stackerUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailStackerUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail stackerUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailStackerWarmingUp:
            return [MSGraphPrinterProcessingStateDetail stackerWarmingUp];
        case MSGraphPrinterProcessingStateDetailStandby:
            return [MSGraphPrinterProcessingStateDetail standby];
        case MSGraphPrinterProcessingStateDetailStaplerAdded:
            return [MSGraphPrinterProcessingStateDetail staplerAdded];
        case MSGraphPrinterProcessingStateDetailStaplerAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail staplerAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailStaplerAlmostFull:
            return [MSGraphPrinterProcessingStateDetail staplerAlmostFull];
        case MSGraphPrinterProcessingStateDetailStaplerAtLimit:
            return [MSGraphPrinterProcessingStateDetail staplerAtLimit];
        case MSGraphPrinterProcessingStateDetailStaplerClosed:
            return [MSGraphPrinterProcessingStateDetail staplerClosed];
        case MSGraphPrinterProcessingStateDetailStaplerConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail staplerConfigurationChange];
        case MSGraphPrinterProcessingStateDetailStaplerCoverClosed:
            return [MSGraphPrinterProcessingStateDetail staplerCoverClosed];
        case MSGraphPrinterProcessingStateDetailStaplerCoverOpen:
            return [MSGraphPrinterProcessingStateDetail staplerCoverOpen];
        case MSGraphPrinterProcessingStateDetailStaplerEmpty:
            return [MSGraphPrinterProcessingStateDetail staplerEmpty];
        case MSGraphPrinterProcessingStateDetailStaplerFull:
            return [MSGraphPrinterProcessingStateDetail staplerFull];
        case MSGraphPrinterProcessingStateDetailStaplerInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail staplerInterlockClosed];
        case MSGraphPrinterProcessingStateDetailStaplerInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail staplerInterlockOpen];
        case MSGraphPrinterProcessingStateDetailStaplerJam:
            return [MSGraphPrinterProcessingStateDetail staplerJam];
        case MSGraphPrinterProcessingStateDetailStaplerLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail staplerLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailStaplerLifeOver:
            return [MSGraphPrinterProcessingStateDetail staplerLifeOver];
        case MSGraphPrinterProcessingStateDetailStaplerMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail staplerMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailStaplerMissing:
            return [MSGraphPrinterProcessingStateDetail staplerMissing];
        case MSGraphPrinterProcessingStateDetailStaplerMotorFailure:
            return [MSGraphPrinterProcessingStateDetail staplerMotorFailure];
        case MSGraphPrinterProcessingStateDetailStaplerNearLimit:
            return [MSGraphPrinterProcessingStateDetail staplerNearLimit];
        case MSGraphPrinterProcessingStateDetailStaplerOffline:
            return [MSGraphPrinterProcessingStateDetail staplerOffline];
        case MSGraphPrinterProcessingStateDetailStaplerOpened:
            return [MSGraphPrinterProcessingStateDetail staplerOpened];
        case MSGraphPrinterProcessingStateDetailStaplerOverTemperature:
            return [MSGraphPrinterProcessingStateDetail staplerOverTemperature];
        case MSGraphPrinterProcessingStateDetailStaplerPowerSaver:
            return [MSGraphPrinterProcessingStateDetail staplerPowerSaver];
        case MSGraphPrinterProcessingStateDetailStaplerRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail staplerRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailStaplerRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail staplerRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailStaplerRemoved:
            return [MSGraphPrinterProcessingStateDetail staplerRemoved];
        case MSGraphPrinterProcessingStateDetailStaplerResourceAdded:
            return [MSGraphPrinterProcessingStateDetail staplerResourceAdded];
        case MSGraphPrinterProcessingStateDetailStaplerResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail staplerResourceRemoved];
        case MSGraphPrinterProcessingStateDetailStaplerThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail staplerThermistorFailure];
        case MSGraphPrinterProcessingStateDetailStaplerTimingFailure:
            return [MSGraphPrinterProcessingStateDetail staplerTimingFailure];
        case MSGraphPrinterProcessingStateDetailStaplerTurnedOff:
            return [MSGraphPrinterProcessingStateDetail staplerTurnedOff];
        case MSGraphPrinterProcessingStateDetailStaplerTurnedOn:
            return [MSGraphPrinterProcessingStateDetail staplerTurnedOn];
        case MSGraphPrinterProcessingStateDetailStaplerUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail staplerUnderTemperature];
        case MSGraphPrinterProcessingStateDetailStaplerUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail staplerUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailStaplerUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail staplerUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailStaplerWarmingUp:
            return [MSGraphPrinterProcessingStateDetail staplerWarmingUp];
        case MSGraphPrinterProcessingStateDetailStitcherAdded:
            return [MSGraphPrinterProcessingStateDetail stitcherAdded];
        case MSGraphPrinterProcessingStateDetailStitcherAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail stitcherAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailStitcherAlmostFull:
            return [MSGraphPrinterProcessingStateDetail stitcherAlmostFull];
        case MSGraphPrinterProcessingStateDetailStitcherAtLimit:
            return [MSGraphPrinterProcessingStateDetail stitcherAtLimit];
        case MSGraphPrinterProcessingStateDetailStitcherClosed:
            return [MSGraphPrinterProcessingStateDetail stitcherClosed];
        case MSGraphPrinterProcessingStateDetailStitcherConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail stitcherConfigurationChange];
        case MSGraphPrinterProcessingStateDetailStitcherCoverClosed:
            return [MSGraphPrinterProcessingStateDetail stitcherCoverClosed];
        case MSGraphPrinterProcessingStateDetailStitcherCoverOpen:
            return [MSGraphPrinterProcessingStateDetail stitcherCoverOpen];
        case MSGraphPrinterProcessingStateDetailStitcherEmpty:
            return [MSGraphPrinterProcessingStateDetail stitcherEmpty];
        case MSGraphPrinterProcessingStateDetailStitcherFull:
            return [MSGraphPrinterProcessingStateDetail stitcherFull];
        case MSGraphPrinterProcessingStateDetailStitcherInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail stitcherInterlockClosed];
        case MSGraphPrinterProcessingStateDetailStitcherInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail stitcherInterlockOpen];
        case MSGraphPrinterProcessingStateDetailStitcherJam:
            return [MSGraphPrinterProcessingStateDetail stitcherJam];
        case MSGraphPrinterProcessingStateDetailStitcherLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail stitcherLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailStitcherLifeOver:
            return [MSGraphPrinterProcessingStateDetail stitcherLifeOver];
        case MSGraphPrinterProcessingStateDetailStitcherMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail stitcherMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailStitcherMissing:
            return [MSGraphPrinterProcessingStateDetail stitcherMissing];
        case MSGraphPrinterProcessingStateDetailStitcherMotorFailure:
            return [MSGraphPrinterProcessingStateDetail stitcherMotorFailure];
        case MSGraphPrinterProcessingStateDetailStitcherNearLimit:
            return [MSGraphPrinterProcessingStateDetail stitcherNearLimit];
        case MSGraphPrinterProcessingStateDetailStitcherOffline:
            return [MSGraphPrinterProcessingStateDetail stitcherOffline];
        case MSGraphPrinterProcessingStateDetailStitcherOpened:
            return [MSGraphPrinterProcessingStateDetail stitcherOpened];
        case MSGraphPrinterProcessingStateDetailStitcherOverTemperature:
            return [MSGraphPrinterProcessingStateDetail stitcherOverTemperature];
        case MSGraphPrinterProcessingStateDetailStitcherPowerSaver:
            return [MSGraphPrinterProcessingStateDetail stitcherPowerSaver];
        case MSGraphPrinterProcessingStateDetailStitcherRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail stitcherRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailStitcherRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail stitcherRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailStitcherRemoved:
            return [MSGraphPrinterProcessingStateDetail stitcherRemoved];
        case MSGraphPrinterProcessingStateDetailStitcherResourceAdded:
            return [MSGraphPrinterProcessingStateDetail stitcherResourceAdded];
        case MSGraphPrinterProcessingStateDetailStitcherResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail stitcherResourceRemoved];
        case MSGraphPrinterProcessingStateDetailStitcherThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail stitcherThermistorFailure];
        case MSGraphPrinterProcessingStateDetailStitcherTimingFailure:
            return [MSGraphPrinterProcessingStateDetail stitcherTimingFailure];
        case MSGraphPrinterProcessingStateDetailStitcherTurnedOff:
            return [MSGraphPrinterProcessingStateDetail stitcherTurnedOff];
        case MSGraphPrinterProcessingStateDetailStitcherTurnedOn:
            return [MSGraphPrinterProcessingStateDetail stitcherTurnedOn];
        case MSGraphPrinterProcessingStateDetailStitcherUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail stitcherUnderTemperature];
        case MSGraphPrinterProcessingStateDetailStitcherUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail stitcherUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailStitcherUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail stitcherUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailStitcherWarmingUp:
            return [MSGraphPrinterProcessingStateDetail stitcherWarmingUp];
        case MSGraphPrinterProcessingStateDetailSubunitAdded:
            return [MSGraphPrinterProcessingStateDetail subunitAdded];
        case MSGraphPrinterProcessingStateDetailSubunitAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail subunitAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailSubunitAlmostFull:
            return [MSGraphPrinterProcessingStateDetail subunitAlmostFull];
        case MSGraphPrinterProcessingStateDetailSubunitAtLimit:
            return [MSGraphPrinterProcessingStateDetail subunitAtLimit];
        case MSGraphPrinterProcessingStateDetailSubunitClosed:
            return [MSGraphPrinterProcessingStateDetail subunitClosed];
        case MSGraphPrinterProcessingStateDetailSubunitCoolingDown:
            return [MSGraphPrinterProcessingStateDetail subunitCoolingDown];
        case MSGraphPrinterProcessingStateDetailSubunitEmpty:
            return [MSGraphPrinterProcessingStateDetail subunitEmpty];
        case MSGraphPrinterProcessingStateDetailSubunitFull:
            return [MSGraphPrinterProcessingStateDetail subunitFull];
        case MSGraphPrinterProcessingStateDetailSubunitLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail subunitLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailSubunitLifeOver:
            return [MSGraphPrinterProcessingStateDetail subunitLifeOver];
        case MSGraphPrinterProcessingStateDetailSubunitMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail subunitMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailSubunitMissing:
            return [MSGraphPrinterProcessingStateDetail subunitMissing];
        case MSGraphPrinterProcessingStateDetailSubunitMotorFailure:
            return [MSGraphPrinterProcessingStateDetail subunitMotorFailure];
        case MSGraphPrinterProcessingStateDetailSubunitNearLimit:
            return [MSGraphPrinterProcessingStateDetail subunitNearLimit];
        case MSGraphPrinterProcessingStateDetailSubunitOffline:
            return [MSGraphPrinterProcessingStateDetail subunitOffline];
        case MSGraphPrinterProcessingStateDetailSubunitOpened:
            return [MSGraphPrinterProcessingStateDetail subunitOpened];
        case MSGraphPrinterProcessingStateDetailSubunitOverTemperature:
            return [MSGraphPrinterProcessingStateDetail subunitOverTemperature];
        case MSGraphPrinterProcessingStateDetailSubunitPowerSaver:
            return [MSGraphPrinterProcessingStateDetail subunitPowerSaver];
        case MSGraphPrinterProcessingStateDetailSubunitRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail subunitRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSubunitRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail subunitRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailSubunitRemoved:
            return [MSGraphPrinterProcessingStateDetail subunitRemoved];
        case MSGraphPrinterProcessingStateDetailSubunitResourceAdded:
            return [MSGraphPrinterProcessingStateDetail subunitResourceAdded];
        case MSGraphPrinterProcessingStateDetailSubunitResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail subunitResourceRemoved];
        case MSGraphPrinterProcessingStateDetailSubunitThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail subunitThermistorFailure];
        case MSGraphPrinterProcessingStateDetailSubunitTimingFailure:
            return [MSGraphPrinterProcessingStateDetail subunitTimingFailure];
        case MSGraphPrinterProcessingStateDetailSubunitTurnedOff:
            return [MSGraphPrinterProcessingStateDetail subunitTurnedOff];
        case MSGraphPrinterProcessingStateDetailSubunitTurnedOn:
            return [MSGraphPrinterProcessingStateDetail subunitTurnedOn];
        case MSGraphPrinterProcessingStateDetailSubunitUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail subunitUnderTemperature];
        case MSGraphPrinterProcessingStateDetailSubunitUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail subunitUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailSubunitUnrecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail subunitUnrecoverableStorage];
        case MSGraphPrinterProcessingStateDetailSubunitWarmingUp:
            return [MSGraphPrinterProcessingStateDetail subunitWarmingUp];
        case MSGraphPrinterProcessingStateDetailSuspend:
            return [MSGraphPrinterProcessingStateDetail suspend];
        case MSGraphPrinterProcessingStateDetailTesting:
            return [MSGraphPrinterProcessingStateDetail testing];
        case MSGraphPrinterProcessingStateDetailTrimmerAdded:
            return [MSGraphPrinterProcessingStateDetail trimmerAdded];
        case MSGraphPrinterProcessingStateDetailTrimmerAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail trimmerAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailTrimmerAlmostFull:
            return [MSGraphPrinterProcessingStateDetail trimmerAlmostFull];
        case MSGraphPrinterProcessingStateDetailTrimmerAtLimit:
            return [MSGraphPrinterProcessingStateDetail trimmerAtLimit];
        case MSGraphPrinterProcessingStateDetailTrimmerClosed:
            return [MSGraphPrinterProcessingStateDetail trimmerClosed];
        case MSGraphPrinterProcessingStateDetailTrimmerConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail trimmerConfigurationChange];
        case MSGraphPrinterProcessingStateDetailTrimmerCoverClosed:
            return [MSGraphPrinterProcessingStateDetail trimmerCoverClosed];
        case MSGraphPrinterProcessingStateDetailTrimmerCoverOpen:
            return [MSGraphPrinterProcessingStateDetail trimmerCoverOpen];
        case MSGraphPrinterProcessingStateDetailTrimmerEmpty:
            return [MSGraphPrinterProcessingStateDetail trimmerEmpty];
        case MSGraphPrinterProcessingStateDetailTrimmerFull:
            return [MSGraphPrinterProcessingStateDetail trimmerFull];
        case MSGraphPrinterProcessingStateDetailTrimmerInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail trimmerInterlockClosed];
        case MSGraphPrinterProcessingStateDetailTrimmerInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail trimmerInterlockOpen];
        case MSGraphPrinterProcessingStateDetailTrimmerJam:
            return [MSGraphPrinterProcessingStateDetail trimmerJam];
        case MSGraphPrinterProcessingStateDetailTrimmerLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail trimmerLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailTrimmerLifeOver:
            return [MSGraphPrinterProcessingStateDetail trimmerLifeOver];
        case MSGraphPrinterProcessingStateDetailTrimmerMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail trimmerMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailTrimmerMissing:
            return [MSGraphPrinterProcessingStateDetail trimmerMissing];
        case MSGraphPrinterProcessingStateDetailTrimmerMotorFailure:
            return [MSGraphPrinterProcessingStateDetail trimmerMotorFailure];
        case MSGraphPrinterProcessingStateDetailTrimmerNearLimit:
            return [MSGraphPrinterProcessingStateDetail trimmerNearLimit];
        case MSGraphPrinterProcessingStateDetailTrimmerOffline:
            return [MSGraphPrinterProcessingStateDetail trimmerOffline];
        case MSGraphPrinterProcessingStateDetailTrimmerOpened:
            return [MSGraphPrinterProcessingStateDetail trimmerOpened];
        case MSGraphPrinterProcessingStateDetailTrimmerOverTemperature:
            return [MSGraphPrinterProcessingStateDetail trimmerOverTemperature];
        case MSGraphPrinterProcessingStateDetailTrimmerPowerSaver:
            return [MSGraphPrinterProcessingStateDetail trimmerPowerSaver];
        case MSGraphPrinterProcessingStateDetailTrimmerRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail trimmerRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailTrimmerRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail trimmerRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailTrimmerRemoved:
            return [MSGraphPrinterProcessingStateDetail trimmerRemoved];
        case MSGraphPrinterProcessingStateDetailTrimmerResourceAdded:
            return [MSGraphPrinterProcessingStateDetail trimmerResourceAdded];
        case MSGraphPrinterProcessingStateDetailTrimmerResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail trimmerResourceRemoved];
        case MSGraphPrinterProcessingStateDetailTrimmerThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail trimmerThermistorFailure];
        case MSGraphPrinterProcessingStateDetailTrimmerTimingFailure:
            return [MSGraphPrinterProcessingStateDetail trimmerTimingFailure];
        case MSGraphPrinterProcessingStateDetailTrimmerTurnedOff:
            return [MSGraphPrinterProcessingStateDetail trimmerTurnedOff];
        case MSGraphPrinterProcessingStateDetailTrimmerTurnedOn:
            return [MSGraphPrinterProcessingStateDetail trimmerTurnedOn];
        case MSGraphPrinterProcessingStateDetailTrimmerUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail trimmerUnderTemperature];
        case MSGraphPrinterProcessingStateDetailTrimmerUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail trimmerUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailTrimmerUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail trimmerUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailTrimmerWarmingUp:
            return [MSGraphPrinterProcessingStateDetail trimmerWarmingUp];
        case MSGraphPrinterProcessingStateDetailUnknown:
            return [MSGraphPrinterProcessingStateDetail unknown];
        case MSGraphPrinterProcessingStateDetailWrapperAdded:
            return [MSGraphPrinterProcessingStateDetail wrapperAdded];
        case MSGraphPrinterProcessingStateDetailWrapperAlmostEmpty:
            return [MSGraphPrinterProcessingStateDetail wrapperAlmostEmpty];
        case MSGraphPrinterProcessingStateDetailWrapperAlmostFull:
            return [MSGraphPrinterProcessingStateDetail wrapperAlmostFull];
        case MSGraphPrinterProcessingStateDetailWrapperAtLimit:
            return [MSGraphPrinterProcessingStateDetail wrapperAtLimit];
        case MSGraphPrinterProcessingStateDetailWrapperClosed:
            return [MSGraphPrinterProcessingStateDetail wrapperClosed];
        case MSGraphPrinterProcessingStateDetailWrapperConfigurationChange:
            return [MSGraphPrinterProcessingStateDetail wrapperConfigurationChange];
        case MSGraphPrinterProcessingStateDetailWrapperCoverClosed:
            return [MSGraphPrinterProcessingStateDetail wrapperCoverClosed];
        case MSGraphPrinterProcessingStateDetailWrapperCoverOpen:
            return [MSGraphPrinterProcessingStateDetail wrapperCoverOpen];
        case MSGraphPrinterProcessingStateDetailWrapperEmpty:
            return [MSGraphPrinterProcessingStateDetail wrapperEmpty];
        case MSGraphPrinterProcessingStateDetailWrapperFull:
            return [MSGraphPrinterProcessingStateDetail wrapperFull];
        case MSGraphPrinterProcessingStateDetailWrapperInterlockClosed:
            return [MSGraphPrinterProcessingStateDetail wrapperInterlockClosed];
        case MSGraphPrinterProcessingStateDetailWrapperInterlockOpen:
            return [MSGraphPrinterProcessingStateDetail wrapperInterlockOpen];
        case MSGraphPrinterProcessingStateDetailWrapperJam:
            return [MSGraphPrinterProcessingStateDetail wrapperJam];
        case MSGraphPrinterProcessingStateDetailWrapperLifeAlmostOver:
            return [MSGraphPrinterProcessingStateDetail wrapperLifeAlmostOver];
        case MSGraphPrinterProcessingStateDetailWrapperLifeOver:
            return [MSGraphPrinterProcessingStateDetail wrapperLifeOver];
        case MSGraphPrinterProcessingStateDetailWrapperMemoryExhausted:
            return [MSGraphPrinterProcessingStateDetail wrapperMemoryExhausted];
        case MSGraphPrinterProcessingStateDetailWrapperMissing:
            return [MSGraphPrinterProcessingStateDetail wrapperMissing];
        case MSGraphPrinterProcessingStateDetailWrapperMotorFailure:
            return [MSGraphPrinterProcessingStateDetail wrapperMotorFailure];
        case MSGraphPrinterProcessingStateDetailWrapperNearLimit:
            return [MSGraphPrinterProcessingStateDetail wrapperNearLimit];
        case MSGraphPrinterProcessingStateDetailWrapperOffline:
            return [MSGraphPrinterProcessingStateDetail wrapperOffline];
        case MSGraphPrinterProcessingStateDetailWrapperOpened:
            return [MSGraphPrinterProcessingStateDetail wrapperOpened];
        case MSGraphPrinterProcessingStateDetailWrapperOverTemperature:
            return [MSGraphPrinterProcessingStateDetail wrapperOverTemperature];
        case MSGraphPrinterProcessingStateDetailWrapperPowerSaver:
            return [MSGraphPrinterProcessingStateDetail wrapperPowerSaver];
        case MSGraphPrinterProcessingStateDetailWrapperRecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail wrapperRecoverableFailure];
        case MSGraphPrinterProcessingStateDetailWrapperRecoverableStorage:
            return [MSGraphPrinterProcessingStateDetail wrapperRecoverableStorage];
        case MSGraphPrinterProcessingStateDetailWrapperRemoved:
            return [MSGraphPrinterProcessingStateDetail wrapperRemoved];
        case MSGraphPrinterProcessingStateDetailWrapperResourceAdded:
            return [MSGraphPrinterProcessingStateDetail wrapperResourceAdded];
        case MSGraphPrinterProcessingStateDetailWrapperResourceRemoved:
            return [MSGraphPrinterProcessingStateDetail wrapperResourceRemoved];
        case MSGraphPrinterProcessingStateDetailWrapperThermistorFailure:
            return [MSGraphPrinterProcessingStateDetail wrapperThermistorFailure];
        case MSGraphPrinterProcessingStateDetailWrapperTimingFailure:
            return [MSGraphPrinterProcessingStateDetail wrapperTimingFailure];
        case MSGraphPrinterProcessingStateDetailWrapperTurnedOff:
            return [MSGraphPrinterProcessingStateDetail wrapperTurnedOff];
        case MSGraphPrinterProcessingStateDetailWrapperTurnedOn:
            return [MSGraphPrinterProcessingStateDetail wrapperTurnedOn];
        case MSGraphPrinterProcessingStateDetailWrapperUnderTemperature:
            return [MSGraphPrinterProcessingStateDetail wrapperUnderTemperature];
        case MSGraphPrinterProcessingStateDetailWrapperUnrecoverableFailure:
            return [MSGraphPrinterProcessingStateDetail wrapperUnrecoverableFailure];
        case MSGraphPrinterProcessingStateDetailWrapperUnrecoverableStorageError:
            return [MSGraphPrinterProcessingStateDetail wrapperUnrecoverableStorageError];
        case MSGraphPrinterProcessingStateDetailWrapperWarmingUp:
            return [MSGraphPrinterProcessingStateDetail wrapperWarmingUp];
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
        case MSGraphPrinterProcessingStateDetailAlertRemovalOfBinaryChangeEntry:
            return @"alertRemovalOfBinaryChangeEntry";
        case MSGraphPrinterProcessingStateDetailBanderAdded:
            return @"banderAdded";
        case MSGraphPrinterProcessingStateDetailBanderAlmostEmpty:
            return @"banderAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailBanderAlmostFull:
            return @"banderAlmostFull";
        case MSGraphPrinterProcessingStateDetailBanderAtLimit:
            return @"banderAtLimit";
        case MSGraphPrinterProcessingStateDetailBanderClosed:
            return @"banderClosed";
        case MSGraphPrinterProcessingStateDetailBanderConfigurationChange:
            return @"banderConfigurationChange";
        case MSGraphPrinterProcessingStateDetailBanderCoverClosed:
            return @"banderCoverClosed";
        case MSGraphPrinterProcessingStateDetailBanderCoverOpen:
            return @"banderCoverOpen";
        case MSGraphPrinterProcessingStateDetailBanderEmpty:
            return @"banderEmpty";
        case MSGraphPrinterProcessingStateDetailBanderFull:
            return @"banderFull";
        case MSGraphPrinterProcessingStateDetailBanderInterlockClosed:
            return @"banderInterlockClosed";
        case MSGraphPrinterProcessingStateDetailBanderInterlockOpen:
            return @"banderInterlockOpen";
        case MSGraphPrinterProcessingStateDetailBanderJam:
            return @"banderJam";
        case MSGraphPrinterProcessingStateDetailBanderLifeAlmostOver:
            return @"banderLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailBanderLifeOver:
            return @"banderLifeOver";
        case MSGraphPrinterProcessingStateDetailBanderMemoryExhausted:
            return @"banderMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailBanderMissing:
            return @"banderMissing";
        case MSGraphPrinterProcessingStateDetailBanderMotorFailure:
            return @"banderMotorFailure";
        case MSGraphPrinterProcessingStateDetailBanderNearLimit:
            return @"banderNearLimit";
        case MSGraphPrinterProcessingStateDetailBanderOffline:
            return @"banderOffline";
        case MSGraphPrinterProcessingStateDetailBanderOpened:
            return @"banderOpened";
        case MSGraphPrinterProcessingStateDetailBanderOverTemperature:
            return @"banderOverTemperature";
        case MSGraphPrinterProcessingStateDetailBanderPowerSaver:
            return @"banderPowerSaver";
        case MSGraphPrinterProcessingStateDetailBanderRecoverableFailure:
            return @"banderRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailBanderRecoverableStorage:
            return @"banderRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailBanderRemoved:
            return @"banderRemoved";
        case MSGraphPrinterProcessingStateDetailBanderResourceAdded:
            return @"banderResourceAdded";
        case MSGraphPrinterProcessingStateDetailBanderResourceRemoved:
            return @"banderResourceRemoved";
        case MSGraphPrinterProcessingStateDetailBanderThermistorFailure:
            return @"banderThermistorFailure";
        case MSGraphPrinterProcessingStateDetailBanderTimingFailure:
            return @"banderTimingFailure";
        case MSGraphPrinterProcessingStateDetailBanderTurnedOff:
            return @"banderTurnedOff";
        case MSGraphPrinterProcessingStateDetailBanderTurnedOn:
            return @"banderTurnedOn";
        case MSGraphPrinterProcessingStateDetailBanderUnderTemperature:
            return @"banderUnderTemperature";
        case MSGraphPrinterProcessingStateDetailBanderUnrecoverableFailure:
            return @"banderUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailBanderUnrecoverableStorageError:
            return @"banderUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailBanderWarmingUp:
            return @"banderWarmingUp";
        case MSGraphPrinterProcessingStateDetailBinderAdded:
            return @"binderAdded";
        case MSGraphPrinterProcessingStateDetailBinderAlmostEmpty:
            return @"binderAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailBinderAlmostFull:
            return @"binderAlmostFull";
        case MSGraphPrinterProcessingStateDetailBinderAtLimit:
            return @"binderAtLimit";
        case MSGraphPrinterProcessingStateDetailBinderClosed:
            return @"binderClosed";
        case MSGraphPrinterProcessingStateDetailBinderConfigurationChange:
            return @"binderConfigurationChange";
        case MSGraphPrinterProcessingStateDetailBinderCoverClosed:
            return @"binderCoverClosed";
        case MSGraphPrinterProcessingStateDetailBinderCoverOpen:
            return @"binderCoverOpen";
        case MSGraphPrinterProcessingStateDetailBinderEmpty:
            return @"binderEmpty";
        case MSGraphPrinterProcessingStateDetailBinderFull:
            return @"binderFull";
        case MSGraphPrinterProcessingStateDetailBinderInterlockClosed:
            return @"binderInterlockClosed";
        case MSGraphPrinterProcessingStateDetailBinderInterlockOpen:
            return @"binderInterlockOpen";
        case MSGraphPrinterProcessingStateDetailBinderJam:
            return @"binderJam";
        case MSGraphPrinterProcessingStateDetailBinderLifeAlmostOver:
            return @"binderLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailBinderLifeOver:
            return @"binderLifeOver";
        case MSGraphPrinterProcessingStateDetailBinderMemoryExhausted:
            return @"binderMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailBinderMissing:
            return @"binderMissing";
        case MSGraphPrinterProcessingStateDetailBinderMotorFailure:
            return @"binderMotorFailure";
        case MSGraphPrinterProcessingStateDetailBinderNearLimit:
            return @"binderNearLimit";
        case MSGraphPrinterProcessingStateDetailBinderOffline:
            return @"binderOffline";
        case MSGraphPrinterProcessingStateDetailBinderOpened:
            return @"binderOpened";
        case MSGraphPrinterProcessingStateDetailBinderOverTemperature:
            return @"binderOverTemperature";
        case MSGraphPrinterProcessingStateDetailBinderPowerSaver:
            return @"binderPowerSaver";
        case MSGraphPrinterProcessingStateDetailBinderRecoverableFailure:
            return @"binderRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailBinderRecoverableStorage:
            return @"binderRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailBinderRemoved:
            return @"binderRemoved";
        case MSGraphPrinterProcessingStateDetailBinderResourceAdded:
            return @"binderResourceAdded";
        case MSGraphPrinterProcessingStateDetailBinderResourceRemoved:
            return @"binderResourceRemoved";
        case MSGraphPrinterProcessingStateDetailBinderThermistorFailure:
            return @"binderThermistorFailure";
        case MSGraphPrinterProcessingStateDetailBinderTimingFailure:
            return @"binderTimingFailure";
        case MSGraphPrinterProcessingStateDetailBinderTurnedOff:
            return @"binderTurnedOff";
        case MSGraphPrinterProcessingStateDetailBinderTurnedOn:
            return @"binderTurnedOn";
        case MSGraphPrinterProcessingStateDetailBinderUnderTemperature:
            return @"binderUnderTemperature";
        case MSGraphPrinterProcessingStateDetailBinderUnrecoverableFailure:
            return @"binderUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailBinderUnrecoverableStorageError:
            return @"binderUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailBinderWarmingUp:
            return @"binderWarmingUp";
        case MSGraphPrinterProcessingStateDetailCameraFailure:
            return @"cameraFailure";
        case MSGraphPrinterProcessingStateDetailChamberCooling:
            return @"chamberCooling";
        case MSGraphPrinterProcessingStateDetailChamberFailure:
            return @"chamberFailure";
        case MSGraphPrinterProcessingStateDetailChamberHeating:
            return @"chamberHeating";
        case MSGraphPrinterProcessingStateDetailChamberTemperatureHigh:
            return @"chamberTemperatureHigh";
        case MSGraphPrinterProcessingStateDetailChamberTemperatureLow:
            return @"chamberTemperatureLow";
        case MSGraphPrinterProcessingStateDetailCleanerLifeAlmostOver:
            return @"cleanerLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailCleanerLifeOver:
            return @"cleanerLifeOver";
        case MSGraphPrinterProcessingStateDetailConfigurationChange:
            return @"configurationChange";
        case MSGraphPrinterProcessingStateDetailDeactivated:
            return @"deactivated";
        case MSGraphPrinterProcessingStateDetailDeleted:
            return @"deleted";
        case MSGraphPrinterProcessingStateDetailDieCutterAdded:
            return @"dieCutterAdded";
        case MSGraphPrinterProcessingStateDetailDieCutterAlmostEmpty:
            return @"dieCutterAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailDieCutterAlmostFull:
            return @"dieCutterAlmostFull";
        case MSGraphPrinterProcessingStateDetailDieCutterAtLimit:
            return @"dieCutterAtLimit";
        case MSGraphPrinterProcessingStateDetailDieCutterClosed:
            return @"dieCutterClosed";
        case MSGraphPrinterProcessingStateDetailDieCutterConfigurationChange:
            return @"dieCutterConfigurationChange";
        case MSGraphPrinterProcessingStateDetailDieCutterCoverClosed:
            return @"dieCutterCoverClosed";
        case MSGraphPrinterProcessingStateDetailDieCutterCoverOpen:
            return @"dieCutterCoverOpen";
        case MSGraphPrinterProcessingStateDetailDieCutterEmpty:
            return @"dieCutterEmpty";
        case MSGraphPrinterProcessingStateDetailDieCutterFull:
            return @"dieCutterFull";
        case MSGraphPrinterProcessingStateDetailDieCutterInterlockClosed:
            return @"dieCutterInterlockClosed";
        case MSGraphPrinterProcessingStateDetailDieCutterInterlockOpen:
            return @"dieCutterInterlockOpen";
        case MSGraphPrinterProcessingStateDetailDieCutterJam:
            return @"dieCutterJam";
        case MSGraphPrinterProcessingStateDetailDieCutterLifeAlmostOver:
            return @"dieCutterLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailDieCutterLifeOver:
            return @"dieCutterLifeOver";
        case MSGraphPrinterProcessingStateDetailDieCutterMemoryExhausted:
            return @"dieCutterMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailDieCutterMissing:
            return @"dieCutterMissing";
        case MSGraphPrinterProcessingStateDetailDieCutterMotorFailure:
            return @"dieCutterMotorFailure";
        case MSGraphPrinterProcessingStateDetailDieCutterNearLimit:
            return @"dieCutterNearLimit";
        case MSGraphPrinterProcessingStateDetailDieCutterOffline:
            return @"dieCutterOffline";
        case MSGraphPrinterProcessingStateDetailDieCutterOpened:
            return @"dieCutterOpened";
        case MSGraphPrinterProcessingStateDetailDieCutterOverTemperature:
            return @"dieCutterOverTemperature";
        case MSGraphPrinterProcessingStateDetailDieCutterPowerSaver:
            return @"dieCutterPowerSaver";
        case MSGraphPrinterProcessingStateDetailDieCutterRecoverableFailure:
            return @"dieCutterRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailDieCutterRecoverableStorage:
            return @"dieCutterRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailDieCutterRemoved:
            return @"dieCutterRemoved";
        case MSGraphPrinterProcessingStateDetailDieCutterResourceAdded:
            return @"dieCutterResourceAdded";
        case MSGraphPrinterProcessingStateDetailDieCutterResourceRemoved:
            return @"dieCutterResourceRemoved";
        case MSGraphPrinterProcessingStateDetailDieCutterThermistorFailure:
            return @"dieCutterThermistorFailure";
        case MSGraphPrinterProcessingStateDetailDieCutterTimingFailure:
            return @"dieCutterTimingFailure";
        case MSGraphPrinterProcessingStateDetailDieCutterTurnedOff:
            return @"dieCutterTurnedOff";
        case MSGraphPrinterProcessingStateDetailDieCutterTurnedOn:
            return @"dieCutterTurnedOn";
        case MSGraphPrinterProcessingStateDetailDieCutterUnderTemperature:
            return @"dieCutterUnderTemperature";
        case MSGraphPrinterProcessingStateDetailDieCutterUnrecoverableFailure:
            return @"dieCutterUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailDieCutterUnrecoverableStorageError:
            return @"dieCutterUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailDieCutterWarmingUp:
            return @"dieCutterWarmingUp";
        case MSGraphPrinterProcessingStateDetailExtruderCooling:
            return @"extruderCooling";
        case MSGraphPrinterProcessingStateDetailExtruderFailure:
            return @"extruderFailure";
        case MSGraphPrinterProcessingStateDetailExtruderHeating:
            return @"extruderHeating";
        case MSGraphPrinterProcessingStateDetailExtruderJam:
            return @"extruderJam";
        case MSGraphPrinterProcessingStateDetailExtruderTemperatureHigh:
            return @"extruderTemperatureHigh";
        case MSGraphPrinterProcessingStateDetailExtruderTemperatureLow:
            return @"extruderTemperatureLow";
        case MSGraphPrinterProcessingStateDetailFanFailure:
            return @"fanFailure";
        case MSGraphPrinterProcessingStateDetailFaxModemLifeAlmostOver:
            return @"faxModemLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailFaxModemLifeOver:
            return @"faxModemLifeOver";
        case MSGraphPrinterProcessingStateDetailFaxModemMissing:
            return @"faxModemMissing";
        case MSGraphPrinterProcessingStateDetailFaxModemTurnedOff:
            return @"faxModemTurnedOff";
        case MSGraphPrinterProcessingStateDetailFaxModemTurnedOn:
            return @"faxModemTurnedOn";
        case MSGraphPrinterProcessingStateDetailFolderAdded:
            return @"folderAdded";
        case MSGraphPrinterProcessingStateDetailFolderAlmostEmpty:
            return @"folderAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailFolderAlmostFull:
            return @"folderAlmostFull";
        case MSGraphPrinterProcessingStateDetailFolderAtLimit:
            return @"folderAtLimit";
        case MSGraphPrinterProcessingStateDetailFolderClosed:
            return @"folderClosed";
        case MSGraphPrinterProcessingStateDetailFolderConfigurationChange:
            return @"folderConfigurationChange";
        case MSGraphPrinterProcessingStateDetailFolderCoverClosed:
            return @"folderCoverClosed";
        case MSGraphPrinterProcessingStateDetailFolderCoverOpen:
            return @"folderCoverOpen";
        case MSGraphPrinterProcessingStateDetailFolderEmpty:
            return @"folderEmpty";
        case MSGraphPrinterProcessingStateDetailFolderFull:
            return @"folderFull";
        case MSGraphPrinterProcessingStateDetailFolderInterlockClosed:
            return @"folderInterlockClosed";
        case MSGraphPrinterProcessingStateDetailFolderInterlockOpen:
            return @"folderInterlockOpen";
        case MSGraphPrinterProcessingStateDetailFolderJam:
            return @"folderJam";
        case MSGraphPrinterProcessingStateDetailFolderLifeAlmostOver:
            return @"folderLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailFolderLifeOver:
            return @"folderLifeOver";
        case MSGraphPrinterProcessingStateDetailFolderMemoryExhausted:
            return @"folderMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailFolderMissing:
            return @"folderMissing";
        case MSGraphPrinterProcessingStateDetailFolderMotorFailure:
            return @"folderMotorFailure";
        case MSGraphPrinterProcessingStateDetailFolderNearLimit:
            return @"folderNearLimit";
        case MSGraphPrinterProcessingStateDetailFolderOffline:
            return @"folderOffline";
        case MSGraphPrinterProcessingStateDetailFolderOpened:
            return @"folderOpened";
        case MSGraphPrinterProcessingStateDetailFolderOverTemperature:
            return @"folderOverTemperature";
        case MSGraphPrinterProcessingStateDetailFolderPowerSaver:
            return @"folderPowerSaver";
        case MSGraphPrinterProcessingStateDetailFolderRecoverableFailure:
            return @"folderRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailFolderRecoverableStorage:
            return @"folderRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailFolderRemoved:
            return @"folderRemoved";
        case MSGraphPrinterProcessingStateDetailFolderResourceAdded:
            return @"folderResourceAdded";
        case MSGraphPrinterProcessingStateDetailFolderResourceRemoved:
            return @"folderResourceRemoved";
        case MSGraphPrinterProcessingStateDetailFolderThermistorFailure:
            return @"folderThermistorFailure";
        case MSGraphPrinterProcessingStateDetailFolderTimingFailure:
            return @"folderTimingFailure";
        case MSGraphPrinterProcessingStateDetailFolderTurnedOff:
            return @"folderTurnedOff";
        case MSGraphPrinterProcessingStateDetailFolderTurnedOn:
            return @"folderTurnedOn";
        case MSGraphPrinterProcessingStateDetailFolderUnderTemperature:
            return @"folderUnderTemperature";
        case MSGraphPrinterProcessingStateDetailFolderUnrecoverableFailure:
            return @"folderUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailFolderUnrecoverableStorageError:
            return @"folderUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailFolderWarmingUp:
            return @"folderWarmingUp";
        case MSGraphPrinterProcessingStateDetailHibernate:
            return @"hibernate";
        case MSGraphPrinterProcessingStateDetailHoldNewJobs:
            return @"holdNewJobs";
        case MSGraphPrinterProcessingStateDetailIdentifyPrinterRequested:
            return @"identifyPrinterRequested";
        case MSGraphPrinterProcessingStateDetailImprinterAdded:
            return @"imprinterAdded";
        case MSGraphPrinterProcessingStateDetailImprinterAlmostEmpty:
            return @"imprinterAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailImprinterAlmostFull:
            return @"imprinterAlmostFull";
        case MSGraphPrinterProcessingStateDetailImprinterAtLimit:
            return @"imprinterAtLimit";
        case MSGraphPrinterProcessingStateDetailImprinterClosed:
            return @"imprinterClosed";
        case MSGraphPrinterProcessingStateDetailImprinterConfigurationChange:
            return @"imprinterConfigurationChange";
        case MSGraphPrinterProcessingStateDetailImprinterCoverClosed:
            return @"imprinterCoverClosed";
        case MSGraphPrinterProcessingStateDetailImprinterCoverOpen:
            return @"imprinterCoverOpen";
        case MSGraphPrinterProcessingStateDetailImprinterEmpty:
            return @"imprinterEmpty";
        case MSGraphPrinterProcessingStateDetailImprinterFull:
            return @"imprinterFull";
        case MSGraphPrinterProcessingStateDetailImprinterInterlockClosed:
            return @"imprinterInterlockClosed";
        case MSGraphPrinterProcessingStateDetailImprinterInterlockOpen:
            return @"imprinterInterlockOpen";
        case MSGraphPrinterProcessingStateDetailImprinterJam:
            return @"imprinterJam";
        case MSGraphPrinterProcessingStateDetailImprinterLifeAlmostOver:
            return @"imprinterLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailImprinterLifeOver:
            return @"imprinterLifeOver";
        case MSGraphPrinterProcessingStateDetailImprinterMemoryExhausted:
            return @"imprinterMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailImprinterMissing:
            return @"imprinterMissing";
        case MSGraphPrinterProcessingStateDetailImprinterMotorFailure:
            return @"imprinterMotorFailure";
        case MSGraphPrinterProcessingStateDetailImprinterNearLimit:
            return @"imprinterNearLimit";
        case MSGraphPrinterProcessingStateDetailImprinterOffline:
            return @"imprinterOffline";
        case MSGraphPrinterProcessingStateDetailImprinterOpened:
            return @"imprinterOpened";
        case MSGraphPrinterProcessingStateDetailImprinterOverTemperature:
            return @"imprinterOverTemperature";
        case MSGraphPrinterProcessingStateDetailImprinterPowerSaver:
            return @"imprinterPowerSaver";
        case MSGraphPrinterProcessingStateDetailImprinterRecoverableFailure:
            return @"imprinterRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailImprinterRecoverableStorage:
            return @"imprinterRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailImprinterRemoved:
            return @"imprinterRemoved";
        case MSGraphPrinterProcessingStateDetailImprinterResourceAdded:
            return @"imprinterResourceAdded";
        case MSGraphPrinterProcessingStateDetailImprinterResourceRemoved:
            return @"imprinterResourceRemoved";
        case MSGraphPrinterProcessingStateDetailImprinterThermistorFailure:
            return @"imprinterThermistorFailure";
        case MSGraphPrinterProcessingStateDetailImprinterTimingFailure:
            return @"imprinterTimingFailure";
        case MSGraphPrinterProcessingStateDetailImprinterTurnedOff:
            return @"imprinterTurnedOff";
        case MSGraphPrinterProcessingStateDetailImprinterTurnedOn:
            return @"imprinterTurnedOn";
        case MSGraphPrinterProcessingStateDetailImprinterUnderTemperature:
            return @"imprinterUnderTemperature";
        case MSGraphPrinterProcessingStateDetailImprinterUnrecoverableFailure:
            return @"imprinterUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailImprinterUnrecoverableStorageError:
            return @"imprinterUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailImprinterWarmingUp:
            return @"imprinterWarmingUp";
        case MSGraphPrinterProcessingStateDetailInputCannotFeedSizeSelected:
            return @"inputCannotFeedSizeSelected";
        case MSGraphPrinterProcessingStateDetailInputManualInputRequest:
            return @"inputManualInputRequest";
        case MSGraphPrinterProcessingStateDetailInputMediaColorChange:
            return @"inputMediaColorChange";
        case MSGraphPrinterProcessingStateDetailInputMediaFormPartsChange:
            return @"inputMediaFormPartsChange";
        case MSGraphPrinterProcessingStateDetailInputMediaSizeChange:
            return @"inputMediaSizeChange";
        case MSGraphPrinterProcessingStateDetailInputMediaTrayFailure:
            return @"inputMediaTrayFailure";
        case MSGraphPrinterProcessingStateDetailInputMediaTrayFeedError:
            return @"inputMediaTrayFeedError";
        case MSGraphPrinterProcessingStateDetailInputMediaTrayJam:
            return @"inputMediaTrayJam";
        case MSGraphPrinterProcessingStateDetailInputMediaTypeChange:
            return @"inputMediaTypeChange";
        case MSGraphPrinterProcessingStateDetailInputMediaWeightChange:
            return @"inputMediaWeightChange";
        case MSGraphPrinterProcessingStateDetailInputPickRollerFailure:
            return @"inputPickRollerFailure";
        case MSGraphPrinterProcessingStateDetailInputPickRollerLifeOver:
            return @"inputPickRollerLifeOver";
        case MSGraphPrinterProcessingStateDetailInputPickRollerLifeWarn:
            return @"inputPickRollerLifeWarn";
        case MSGraphPrinterProcessingStateDetailInputPickRollerMissing:
            return @"inputPickRollerMissing";
        case MSGraphPrinterProcessingStateDetailInputTrayElevationFailure:
            return @"inputTrayElevationFailure";
        case MSGraphPrinterProcessingStateDetailInputTrayPositionFailure:
            return @"inputTrayPositionFailure";
        case MSGraphPrinterProcessingStateDetailInserterAdded:
            return @"inserterAdded";
        case MSGraphPrinterProcessingStateDetailInserterAlmostEmpty:
            return @"inserterAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailInserterAlmostFull:
            return @"inserterAlmostFull";
        case MSGraphPrinterProcessingStateDetailInserterAtLimit:
            return @"inserterAtLimit";
        case MSGraphPrinterProcessingStateDetailInserterClosed:
            return @"inserterClosed";
        case MSGraphPrinterProcessingStateDetailInserterConfigurationChange:
            return @"inserterConfigurationChange";
        case MSGraphPrinterProcessingStateDetailInserterCoverClosed:
            return @"inserterCoverClosed";
        case MSGraphPrinterProcessingStateDetailInserterCoverOpen:
            return @"inserterCoverOpen";
        case MSGraphPrinterProcessingStateDetailInserterEmpty:
            return @"inserterEmpty";
        case MSGraphPrinterProcessingStateDetailInserterFull:
            return @"inserterFull";
        case MSGraphPrinterProcessingStateDetailInserterInterlockClosed:
            return @"inserterInterlockClosed";
        case MSGraphPrinterProcessingStateDetailInserterInterlockOpen:
            return @"inserterInterlockOpen";
        case MSGraphPrinterProcessingStateDetailInserterJam:
            return @"inserterJam";
        case MSGraphPrinterProcessingStateDetailInserterLifeAlmostOver:
            return @"inserterLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailInserterLifeOver:
            return @"inserterLifeOver";
        case MSGraphPrinterProcessingStateDetailInserterMemoryExhausted:
            return @"inserterMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailInserterMissing:
            return @"inserterMissing";
        case MSGraphPrinterProcessingStateDetailInserterMotorFailure:
            return @"inserterMotorFailure";
        case MSGraphPrinterProcessingStateDetailInserterNearLimit:
            return @"inserterNearLimit";
        case MSGraphPrinterProcessingStateDetailInserterOffline:
            return @"inserterOffline";
        case MSGraphPrinterProcessingStateDetailInserterOpened:
            return @"inserterOpened";
        case MSGraphPrinterProcessingStateDetailInserterOverTemperature:
            return @"inserterOverTemperature";
        case MSGraphPrinterProcessingStateDetailInserterPowerSaver:
            return @"inserterPowerSaver";
        case MSGraphPrinterProcessingStateDetailInserterRecoverableFailure:
            return @"inserterRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailInserterRecoverableStorage:
            return @"inserterRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailInserterRemoved:
            return @"inserterRemoved";
        case MSGraphPrinterProcessingStateDetailInserterResourceAdded:
            return @"inserterResourceAdded";
        case MSGraphPrinterProcessingStateDetailInserterResourceRemoved:
            return @"inserterResourceRemoved";
        case MSGraphPrinterProcessingStateDetailInserterThermistorFailure:
            return @"inserterThermistorFailure";
        case MSGraphPrinterProcessingStateDetailInserterTimingFailure:
            return @"inserterTimingFailure";
        case MSGraphPrinterProcessingStateDetailInserterTurnedOff:
            return @"inserterTurnedOff";
        case MSGraphPrinterProcessingStateDetailInserterTurnedOn:
            return @"inserterTurnedOn";
        case MSGraphPrinterProcessingStateDetailInserterUnderTemperature:
            return @"inserterUnderTemperature";
        case MSGraphPrinterProcessingStateDetailInserterUnrecoverableFailure:
            return @"inserterUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailInserterUnrecoverableStorageError:
            return @"inserterUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailInserterWarmingUp:
            return @"inserterWarmingUp";
        case MSGraphPrinterProcessingStateDetailInterlockClosed:
            return @"interlockClosed";
        case MSGraphPrinterProcessingStateDetailInterpreterCartridgeAdded:
            return @"interpreterCartridgeAdded";
        case MSGraphPrinterProcessingStateDetailInterpreterCartridgeDeleted:
            return @"interpreterCartridgeDeleted";
        case MSGraphPrinterProcessingStateDetailInterpreterComplexPageEncountered:
            return @"interpreterComplexPageEncountered";
        case MSGraphPrinterProcessingStateDetailInterpreterMemoryDecrease:
            return @"interpreterMemoryDecrease";
        case MSGraphPrinterProcessingStateDetailInterpreterMemoryIncrease:
            return @"interpreterMemoryIncrease";
        case MSGraphPrinterProcessingStateDetailInterpreterResourceAdded:
            return @"interpreterResourceAdded";
        case MSGraphPrinterProcessingStateDetailInterpreterResourceDeleted:
            return @"interpreterResourceDeleted";
        case MSGraphPrinterProcessingStateDetailLampAtEol:
            return @"lampAtEol";
        case MSGraphPrinterProcessingStateDetailLampFailure:
            return @"lampFailure";
        case MSGraphPrinterProcessingStateDetailLampNearEol:
            return @"lampNearEol";
        case MSGraphPrinterProcessingStateDetailLaserAtEol:
            return @"laserAtEol";
        case MSGraphPrinterProcessingStateDetailLaserFailure:
            return @"laserFailure";
        case MSGraphPrinterProcessingStateDetailLaserNearEol:
            return @"laserNearEol";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAdded:
            return @"makeEnvelopeAdded";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAlmostEmpty:
            return @"makeEnvelopeAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAlmostFull:
            return @"makeEnvelopeAlmostFull";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeAtLimit:
            return @"makeEnvelopeAtLimit";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeClosed:
            return @"makeEnvelopeClosed";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeConfigurationChange:
            return @"makeEnvelopeConfigurationChange";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeCoverClosed:
            return @"makeEnvelopeCoverClosed";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeCoverOpen:
            return @"makeEnvelopeCoverOpen";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeEmpty:
            return @"makeEnvelopeEmpty";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeFull:
            return @"makeEnvelopeFull";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeInterlockClosed:
            return @"makeEnvelopeInterlockClosed";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeInterlockOpen:
            return @"makeEnvelopeInterlockOpen";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeJam:
            return @"makeEnvelopeJam";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeLifeAlmostOver:
            return @"makeEnvelopeLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeLifeOver:
            return @"makeEnvelopeLifeOver";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeMemoryExhausted:
            return @"makeEnvelopeMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeMissing:
            return @"makeEnvelopeMissing";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeMotorFailure:
            return @"makeEnvelopeMotorFailure";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeNearLimit:
            return @"makeEnvelopeNearLimit";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeOffline:
            return @"makeEnvelopeOffline";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeOpened:
            return @"makeEnvelopeOpened";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeOverTemperature:
            return @"makeEnvelopeOverTemperature";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopePowerSaver:
            return @"makeEnvelopePowerSaver";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeRecoverableFailure:
            return @"makeEnvelopeRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeRecoverableStorage:
            return @"makeEnvelopeRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeRemoved:
            return @"makeEnvelopeRemoved";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeResourceAdded:
            return @"makeEnvelopeResourceAdded";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeResourceRemoved:
            return @"makeEnvelopeResourceRemoved";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeThermistorFailure:
            return @"makeEnvelopeThermistorFailure";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeTimingFailure:
            return @"makeEnvelopeTimingFailure";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeTurnedOff:
            return @"makeEnvelopeTurnedOff";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeTurnedOn:
            return @"makeEnvelopeTurnedOn";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeUnderTemperature:
            return @"makeEnvelopeUnderTemperature";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeUnrecoverableFailure:
            return @"makeEnvelopeUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeUnrecoverableStorageError:
            return @"makeEnvelopeUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailMakeEnvelopeWarmingUp:
            return @"makeEnvelopeWarmingUp";
        case MSGraphPrinterProcessingStateDetailMarkerAdjustingPrintQuality:
            return @"markerAdjustingPrintQuality";
        case MSGraphPrinterProcessingStateDetailMarkerCleanerMissing:
            return @"markerCleanerMissing";
        case MSGraphPrinterProcessingStateDetailMarkerDeveloperAlmostEmpty:
            return @"markerDeveloperAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerDeveloperEmpty:
            return @"markerDeveloperEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerDeveloperMissing:
            return @"markerDeveloperMissing";
        case MSGraphPrinterProcessingStateDetailMarkerFuserMissing:
            return @"markerFuserMissing";
        case MSGraphPrinterProcessingStateDetailMarkerFuserThermistorFailure:
            return @"markerFuserThermistorFailure";
        case MSGraphPrinterProcessingStateDetailMarkerFuserTimingFailure:
            return @"markerFuserTimingFailure";
        case MSGraphPrinterProcessingStateDetailMarkerInkAlmostEmpty:
            return @"markerInkAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerInkEmpty:
            return @"markerInkEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerInkMissing:
            return @"markerInkMissing";
        case MSGraphPrinterProcessingStateDetailMarkerOpcMissing:
            return @"markerOpcMissing";
        case MSGraphPrinterProcessingStateDetailMarkerPrintRibbonAlmostEmpty:
            return @"markerPrintRibbonAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerPrintRibbonEmpty:
            return @"markerPrintRibbonEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerPrintRibbonMissing:
            return @"markerPrintRibbonMissing";
        case MSGraphPrinterProcessingStateDetailMarkerSupplyAlmostEmpty:
            return @"markerSupplyAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailMarkerSupplyMissing:
            return @"markerSupplyMissing";
        case MSGraphPrinterProcessingStateDetailMarkerTonerCartridgeMissing:
            return @"markerTonerCartridgeMissing";
        case MSGraphPrinterProcessingStateDetailMarkerTonerMissing:
            return @"markerTonerMissing";
        case MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleAlmostFull:
            return @"markerWasteInkReceptacleAlmostFull";
        case MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleFull:
            return @"markerWasteInkReceptacleFull";
        case MSGraphPrinterProcessingStateDetailMarkerWasteInkReceptacleMissing:
            return @"markerWasteInkReceptacleMissing";
        case MSGraphPrinterProcessingStateDetailMarkerWasteMissing:
            return @"markerWasteMissing";
        case MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleAlmostFull:
            return @"markerWasteTonerReceptacleAlmostFull";
        case MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleFull:
            return @"markerWasteTonerReceptacleFull";
        case MSGraphPrinterProcessingStateDetailMarkerWasteTonerReceptacleMissing:
            return @"markerWasteTonerReceptacleMissing";
        case MSGraphPrinterProcessingStateDetailMaterialEmpty:
            return @"materialEmpty";
        case MSGraphPrinterProcessingStateDetailMaterialLow:
            return @"materialLow";
        case MSGraphPrinterProcessingStateDetailMaterialNeeded:
            return @"materialNeeded";
        case MSGraphPrinterProcessingStateDetailMediaDrying:
            return @"mediaDrying";
        case MSGraphPrinterProcessingStateDetailMediaPathCannotDuplexMediaSelected:
            return @"mediaPathCannotDuplexMediaSelected";
        case MSGraphPrinterProcessingStateDetailMediaPathFailure:
            return @"mediaPathFailure";
        case MSGraphPrinterProcessingStateDetailMediaPathInputEmpty:
            return @"mediaPathInputEmpty";
        case MSGraphPrinterProcessingStateDetailMediaPathInputFeedError:
            return @"mediaPathInputFeedError";
        case MSGraphPrinterProcessingStateDetailMediaPathInputJam:
            return @"mediaPathInputJam";
        case MSGraphPrinterProcessingStateDetailMediaPathInputRequest:
            return @"mediaPathInputRequest";
        case MSGraphPrinterProcessingStateDetailMediaPathJam:
            return @"mediaPathJam";
        case MSGraphPrinterProcessingStateDetailMediaPathMediaTrayAlmostFull:
            return @"mediaPathMediaTrayAlmostFull";
        case MSGraphPrinterProcessingStateDetailMediaPathMediaTrayFull:
            return @"mediaPathMediaTrayFull";
        case MSGraphPrinterProcessingStateDetailMediaPathMediaTrayMissing:
            return @"mediaPathMediaTrayMissing";
        case MSGraphPrinterProcessingStateDetailMediaPathOutputFeedError:
            return @"mediaPathOutputFeedError";
        case MSGraphPrinterProcessingStateDetailMediaPathOutputFull:
            return @"mediaPathOutputFull";
        case MSGraphPrinterProcessingStateDetailMediaPathOutputJam:
            return @"mediaPathOutputJam";
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerFailure:
            return @"mediaPathPickRollerFailure";
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerLifeOver:
            return @"mediaPathPickRollerLifeOver";
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerLifeWarn:
            return @"mediaPathPickRollerLifeWarn";
        case MSGraphPrinterProcessingStateDetailMediaPathPickRollerMissing:
            return @"mediaPathPickRollerMissing";
        case MSGraphPrinterProcessingStateDetailMotorFailure:
            return @"motorFailure";
        case MSGraphPrinterProcessingStateDetailOutputMailboxSelectFailure:
            return @"outputMailboxSelectFailure";
        case MSGraphPrinterProcessingStateDetailOutputMediaTrayFailure:
            return @"outputMediaTrayFailure";
        case MSGraphPrinterProcessingStateDetailOutputMediaTrayFeedError:
            return @"outputMediaTrayFeedError";
        case MSGraphPrinterProcessingStateDetailOutputMediaTrayJam:
            return @"outputMediaTrayJam";
        case MSGraphPrinterProcessingStateDetailPerforaterAdded:
            return @"perforaterAdded";
        case MSGraphPrinterProcessingStateDetailPerforaterAlmostEmpty:
            return @"perforaterAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailPerforaterAlmostFull:
            return @"perforaterAlmostFull";
        case MSGraphPrinterProcessingStateDetailPerforaterAtLimit:
            return @"perforaterAtLimit";
        case MSGraphPrinterProcessingStateDetailPerforaterClosed:
            return @"perforaterClosed";
        case MSGraphPrinterProcessingStateDetailPerforaterConfigurationChange:
            return @"perforaterConfigurationChange";
        case MSGraphPrinterProcessingStateDetailPerforaterCoverClosed:
            return @"perforaterCoverClosed";
        case MSGraphPrinterProcessingStateDetailPerforaterCoverOpen:
            return @"perforaterCoverOpen";
        case MSGraphPrinterProcessingStateDetailPerforaterEmpty:
            return @"perforaterEmpty";
        case MSGraphPrinterProcessingStateDetailPerforaterFull:
            return @"perforaterFull";
        case MSGraphPrinterProcessingStateDetailPerforaterInterlockClosed:
            return @"perforaterInterlockClosed";
        case MSGraphPrinterProcessingStateDetailPerforaterInterlockOpen:
            return @"perforaterInterlockOpen";
        case MSGraphPrinterProcessingStateDetailPerforaterJam:
            return @"perforaterJam";
        case MSGraphPrinterProcessingStateDetailPerforaterLifeAlmostOver:
            return @"perforaterLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailPerforaterLifeOver:
            return @"perforaterLifeOver";
        case MSGraphPrinterProcessingStateDetailPerforaterMemoryExhausted:
            return @"perforaterMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailPerforaterMissing:
            return @"perforaterMissing";
        case MSGraphPrinterProcessingStateDetailPerforaterMotorFailure:
            return @"perforaterMotorFailure";
        case MSGraphPrinterProcessingStateDetailPerforaterNearLimit:
            return @"perforaterNearLimit";
        case MSGraphPrinterProcessingStateDetailPerforaterOffline:
            return @"perforaterOffline";
        case MSGraphPrinterProcessingStateDetailPerforaterOpened:
            return @"perforaterOpened";
        case MSGraphPrinterProcessingStateDetailPerforaterOverTemperature:
            return @"perforaterOverTemperature";
        case MSGraphPrinterProcessingStateDetailPerforaterPowerSaver:
            return @"perforaterPowerSaver";
        case MSGraphPrinterProcessingStateDetailPerforaterRecoverableFailure:
            return @"perforaterRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailPerforaterRecoverableStorage:
            return @"perforaterRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailPerforaterRemoved:
            return @"perforaterRemoved";
        case MSGraphPrinterProcessingStateDetailPerforaterResourceAdded:
            return @"perforaterResourceAdded";
        case MSGraphPrinterProcessingStateDetailPerforaterResourceRemoved:
            return @"perforaterResourceRemoved";
        case MSGraphPrinterProcessingStateDetailPerforaterThermistorFailure:
            return @"perforaterThermistorFailure";
        case MSGraphPrinterProcessingStateDetailPerforaterTimingFailure:
            return @"perforaterTimingFailure";
        case MSGraphPrinterProcessingStateDetailPerforaterTurnedOff:
            return @"perforaterTurnedOff";
        case MSGraphPrinterProcessingStateDetailPerforaterTurnedOn:
            return @"perforaterTurnedOn";
        case MSGraphPrinterProcessingStateDetailPerforaterUnderTemperature:
            return @"perforaterUnderTemperature";
        case MSGraphPrinterProcessingStateDetailPerforaterUnrecoverableFailure:
            return @"perforaterUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailPerforaterUnrecoverableStorageError:
            return @"perforaterUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailPerforaterWarmingUp:
            return @"perforaterWarmingUp";
        case MSGraphPrinterProcessingStateDetailPlatformCooling:
            return @"platformCooling";
        case MSGraphPrinterProcessingStateDetailPlatformFailure:
            return @"platformFailure";
        case MSGraphPrinterProcessingStateDetailPlatformHeating:
            return @"platformHeating";
        case MSGraphPrinterProcessingStateDetailPlatformTemperatureHigh:
            return @"platformTemperatureHigh";
        case MSGraphPrinterProcessingStateDetailPlatformTemperatureLow:
            return @"platformTemperatureLow";
        case MSGraphPrinterProcessingStateDetailPowerDown:
            return @"powerDown";
        case MSGraphPrinterProcessingStateDetailPowerUp:
            return @"powerUp";
        case MSGraphPrinterProcessingStateDetailPrinterManualReset:
            return @"printerManualReset";
        case MSGraphPrinterProcessingStateDetailPrinterNmsReset:
            return @"printerNmsReset";
        case MSGraphPrinterProcessingStateDetailPrinterReadyToPrint:
            return @"printerReadyToPrint";
        case MSGraphPrinterProcessingStateDetailPuncherAdded:
            return @"puncherAdded";
        case MSGraphPrinterProcessingStateDetailPuncherAlmostEmpty:
            return @"puncherAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailPuncherAlmostFull:
            return @"puncherAlmostFull";
        case MSGraphPrinterProcessingStateDetailPuncherAtLimit:
            return @"puncherAtLimit";
        case MSGraphPrinterProcessingStateDetailPuncherClosed:
            return @"puncherClosed";
        case MSGraphPrinterProcessingStateDetailPuncherConfigurationChange:
            return @"puncherConfigurationChange";
        case MSGraphPrinterProcessingStateDetailPuncherCoverClosed:
            return @"puncherCoverClosed";
        case MSGraphPrinterProcessingStateDetailPuncherCoverOpen:
            return @"puncherCoverOpen";
        case MSGraphPrinterProcessingStateDetailPuncherEmpty:
            return @"puncherEmpty";
        case MSGraphPrinterProcessingStateDetailPuncherFull:
            return @"puncherFull";
        case MSGraphPrinterProcessingStateDetailPuncherInterlockClosed:
            return @"puncherInterlockClosed";
        case MSGraphPrinterProcessingStateDetailPuncherInterlockOpen:
            return @"puncherInterlockOpen";
        case MSGraphPrinterProcessingStateDetailPuncherJam:
            return @"puncherJam";
        case MSGraphPrinterProcessingStateDetailPuncherLifeAlmostOver:
            return @"puncherLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailPuncherLifeOver:
            return @"puncherLifeOver";
        case MSGraphPrinterProcessingStateDetailPuncherMemoryExhausted:
            return @"puncherMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailPuncherMissing:
            return @"puncherMissing";
        case MSGraphPrinterProcessingStateDetailPuncherMotorFailure:
            return @"puncherMotorFailure";
        case MSGraphPrinterProcessingStateDetailPuncherNearLimit:
            return @"puncherNearLimit";
        case MSGraphPrinterProcessingStateDetailPuncherOffline:
            return @"puncherOffline";
        case MSGraphPrinterProcessingStateDetailPuncherOpened:
            return @"puncherOpened";
        case MSGraphPrinterProcessingStateDetailPuncherOverTemperature:
            return @"puncherOverTemperature";
        case MSGraphPrinterProcessingStateDetailPuncherPowerSaver:
            return @"puncherPowerSaver";
        case MSGraphPrinterProcessingStateDetailPuncherRecoverableFailure:
            return @"puncherRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailPuncherRecoverableStorage:
            return @"puncherRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailPuncherRemoved:
            return @"puncherRemoved";
        case MSGraphPrinterProcessingStateDetailPuncherResourceAdded:
            return @"puncherResourceAdded";
        case MSGraphPrinterProcessingStateDetailPuncherResourceRemoved:
            return @"puncherResourceRemoved";
        case MSGraphPrinterProcessingStateDetailPuncherThermistorFailure:
            return @"puncherThermistorFailure";
        case MSGraphPrinterProcessingStateDetailPuncherTimingFailure:
            return @"puncherTimingFailure";
        case MSGraphPrinterProcessingStateDetailPuncherTurnedOff:
            return @"puncherTurnedOff";
        case MSGraphPrinterProcessingStateDetailPuncherTurnedOn:
            return @"puncherTurnedOn";
        case MSGraphPrinterProcessingStateDetailPuncherUnderTemperature:
            return @"puncherUnderTemperature";
        case MSGraphPrinterProcessingStateDetailPuncherUnrecoverableFailure:
            return @"puncherUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailPuncherUnrecoverableStorageError:
            return @"puncherUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailPuncherWarmingUp:
            return @"puncherWarmingUp";
        case MSGraphPrinterProcessingStateDetailResuming:
            return @"resuming";
        case MSGraphPrinterProcessingStateDetailScanMediaPathFailure:
            return @"scanMediaPathFailure";
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputEmpty:
            return @"scanMediaPathInputEmpty";
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputFeedError:
            return @"scanMediaPathInputFeedError";
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputJam:
            return @"scanMediaPathInputJam";
        case MSGraphPrinterProcessingStateDetailScanMediaPathInputRequest:
            return @"scanMediaPathInputRequest";
        case MSGraphPrinterProcessingStateDetailScanMediaPathJam:
            return @"scanMediaPathJam";
        case MSGraphPrinterProcessingStateDetailScanMediaPathOutputFeedError:
            return @"scanMediaPathOutputFeedError";
        case MSGraphPrinterProcessingStateDetailScanMediaPathOutputFull:
            return @"scanMediaPathOutputFull";
        case MSGraphPrinterProcessingStateDetailScanMediaPathOutputJam:
            return @"scanMediaPathOutputJam";
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerFailure:
            return @"scanMediaPathPickRollerFailure";
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerLifeOver:
            return @"scanMediaPathPickRollerLifeOver";
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerLifeWarn:
            return @"scanMediaPathPickRollerLifeWarn";
        case MSGraphPrinterProcessingStateDetailScanMediaPathPickRollerMissing:
            return @"scanMediaPathPickRollerMissing";
        case MSGraphPrinterProcessingStateDetailScanMediaPathTrayAlmostFull:
            return @"scanMediaPathTrayAlmostFull";
        case MSGraphPrinterProcessingStateDetailScanMediaPathTrayFull:
            return @"scanMediaPathTrayFull";
        case MSGraphPrinterProcessingStateDetailScanMediaPathTrayMissing:
            return @"scanMediaPathTrayMissing";
        case MSGraphPrinterProcessingStateDetailScannerLightFailure:
            return @"scannerLightFailure";
        case MSGraphPrinterProcessingStateDetailScannerLightLifeAlmostOver:
            return @"scannerLightLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailScannerLightLifeOver:
            return @"scannerLightLifeOver";
        case MSGraphPrinterProcessingStateDetailScannerLightMissing:
            return @"scannerLightMissing";
        case MSGraphPrinterProcessingStateDetailScannerSensorFailure:
            return @"scannerSensorFailure";
        case MSGraphPrinterProcessingStateDetailScannerSensorLifeAlmostOver:
            return @"scannerSensorLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailScannerSensorLifeOver:
            return @"scannerSensorLifeOver";
        case MSGraphPrinterProcessingStateDetailScannerSensorMissing:
            return @"scannerSensorMissing";
        case MSGraphPrinterProcessingStateDetailSeparationCutterAdded:
            return @"separationCutterAdded";
        case MSGraphPrinterProcessingStateDetailSeparationCutterAlmostEmpty:
            return @"separationCutterAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailSeparationCutterAlmostFull:
            return @"separationCutterAlmostFull";
        case MSGraphPrinterProcessingStateDetailSeparationCutterAtLimit:
            return @"separationCutterAtLimit";
        case MSGraphPrinterProcessingStateDetailSeparationCutterClosed:
            return @"separationCutterClosed";
        case MSGraphPrinterProcessingStateDetailSeparationCutterConfigurationChange:
            return @"separationCutterConfigurationChange";
        case MSGraphPrinterProcessingStateDetailSeparationCutterCoverClosed:
            return @"separationCutterCoverClosed";
        case MSGraphPrinterProcessingStateDetailSeparationCutterCoverOpen:
            return @"separationCutterCoverOpen";
        case MSGraphPrinterProcessingStateDetailSeparationCutterEmpty:
            return @"separationCutterEmpty";
        case MSGraphPrinterProcessingStateDetailSeparationCutterFull:
            return @"separationCutterFull";
        case MSGraphPrinterProcessingStateDetailSeparationCutterInterlockClosed:
            return @"separationCutterInterlockClosed";
        case MSGraphPrinterProcessingStateDetailSeparationCutterInterlockOpen:
            return @"separationCutterInterlockOpen";
        case MSGraphPrinterProcessingStateDetailSeparationCutterJam:
            return @"separationCutterJam";
        case MSGraphPrinterProcessingStateDetailSeparationCutterLifeAlmostOver:
            return @"separationCutterLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailSeparationCutterLifeOver:
            return @"separationCutterLifeOver";
        case MSGraphPrinterProcessingStateDetailSeparationCutterMemoryExhausted:
            return @"separationCutterMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailSeparationCutterMissing:
            return @"separationCutterMissing";
        case MSGraphPrinterProcessingStateDetailSeparationCutterMotorFailure:
            return @"separationCutterMotorFailure";
        case MSGraphPrinterProcessingStateDetailSeparationCutterNearLimit:
            return @"separationCutterNearLimit";
        case MSGraphPrinterProcessingStateDetailSeparationCutterOffline:
            return @"separationCutterOffline";
        case MSGraphPrinterProcessingStateDetailSeparationCutterOpened:
            return @"separationCutterOpened";
        case MSGraphPrinterProcessingStateDetailSeparationCutterOverTemperature:
            return @"separationCutterOverTemperature";
        case MSGraphPrinterProcessingStateDetailSeparationCutterPowerSaver:
            return @"separationCutterPowerSaver";
        case MSGraphPrinterProcessingStateDetailSeparationCutterRecoverableFailure:
            return @"separationCutterRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSeparationCutterRecoverableStorage:
            return @"separationCutterRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailSeparationCutterRemoved:
            return @"separationCutterRemoved";
        case MSGraphPrinterProcessingStateDetailSeparationCutterResourceAdded:
            return @"separationCutterResourceAdded";
        case MSGraphPrinterProcessingStateDetailSeparationCutterResourceRemoved:
            return @"separationCutterResourceRemoved";
        case MSGraphPrinterProcessingStateDetailSeparationCutterThermistorFailure:
            return @"separationCutterThermistorFailure";
        case MSGraphPrinterProcessingStateDetailSeparationCutterTimingFailure:
            return @"separationCutterTimingFailure";
        case MSGraphPrinterProcessingStateDetailSeparationCutterTurnedOff:
            return @"separationCutterTurnedOff";
        case MSGraphPrinterProcessingStateDetailSeparationCutterTurnedOn:
            return @"separationCutterTurnedOn";
        case MSGraphPrinterProcessingStateDetailSeparationCutterUnderTemperature:
            return @"separationCutterUnderTemperature";
        case MSGraphPrinterProcessingStateDetailSeparationCutterUnrecoverableFailure:
            return @"separationCutterUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSeparationCutterUnrecoverableStorageError:
            return @"separationCutterUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailSeparationCutterWarmingUp:
            return @"separationCutterWarmingUp";
        case MSGraphPrinterProcessingStateDetailSheetRotatorAdded:
            return @"sheetRotatorAdded";
        case MSGraphPrinterProcessingStateDetailSheetRotatorAlmostEmpty:
            return @"sheetRotatorAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailSheetRotatorAlmostFull:
            return @"sheetRotatorAlmostFull";
        case MSGraphPrinterProcessingStateDetailSheetRotatorAtLimit:
            return @"sheetRotatorAtLimit";
        case MSGraphPrinterProcessingStateDetailSheetRotatorClosed:
            return @"sheetRotatorClosed";
        case MSGraphPrinterProcessingStateDetailSheetRotatorConfigurationChange:
            return @"sheetRotatorConfigurationChange";
        case MSGraphPrinterProcessingStateDetailSheetRotatorCoverClosed:
            return @"sheetRotatorCoverClosed";
        case MSGraphPrinterProcessingStateDetailSheetRotatorCoverOpen:
            return @"sheetRotatorCoverOpen";
        case MSGraphPrinterProcessingStateDetailSheetRotatorEmpty:
            return @"sheetRotatorEmpty";
        case MSGraphPrinterProcessingStateDetailSheetRotatorFull:
            return @"sheetRotatorFull";
        case MSGraphPrinterProcessingStateDetailSheetRotatorInterlockClosed:
            return @"sheetRotatorInterlockClosed";
        case MSGraphPrinterProcessingStateDetailSheetRotatorInterlockOpen:
            return @"sheetRotatorInterlockOpen";
        case MSGraphPrinterProcessingStateDetailSheetRotatorJam:
            return @"sheetRotatorJam";
        case MSGraphPrinterProcessingStateDetailSheetRotatorLifeAlmostOver:
            return @"sheetRotatorLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailSheetRotatorLifeOver:
            return @"sheetRotatorLifeOver";
        case MSGraphPrinterProcessingStateDetailSheetRotatorMemoryExhausted:
            return @"sheetRotatorMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailSheetRotatorMissing:
            return @"sheetRotatorMissing";
        case MSGraphPrinterProcessingStateDetailSheetRotatorMotorFailure:
            return @"sheetRotatorMotorFailure";
        case MSGraphPrinterProcessingStateDetailSheetRotatorNearLimit:
            return @"sheetRotatorNearLimit";
        case MSGraphPrinterProcessingStateDetailSheetRotatorOffline:
            return @"sheetRotatorOffline";
        case MSGraphPrinterProcessingStateDetailSheetRotatorOpened:
            return @"sheetRotatorOpened";
        case MSGraphPrinterProcessingStateDetailSheetRotatorOverTemperature:
            return @"sheetRotatorOverTemperature";
        case MSGraphPrinterProcessingStateDetailSheetRotatorPowerSaver:
            return @"sheetRotatorPowerSaver";
        case MSGraphPrinterProcessingStateDetailSheetRotatorRecoverableFailure:
            return @"sheetRotatorRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSheetRotatorRecoverableStorage:
            return @"sheetRotatorRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailSheetRotatorRemoved:
            return @"sheetRotatorRemoved";
        case MSGraphPrinterProcessingStateDetailSheetRotatorResourceAdded:
            return @"sheetRotatorResourceAdded";
        case MSGraphPrinterProcessingStateDetailSheetRotatorResourceRemoved:
            return @"sheetRotatorResourceRemoved";
        case MSGraphPrinterProcessingStateDetailSheetRotatorThermistorFailure:
            return @"sheetRotatorThermistorFailure";
        case MSGraphPrinterProcessingStateDetailSheetRotatorTimingFailure:
            return @"sheetRotatorTimingFailure";
        case MSGraphPrinterProcessingStateDetailSheetRotatorTurnedOff:
            return @"sheetRotatorTurnedOff";
        case MSGraphPrinterProcessingStateDetailSheetRotatorTurnedOn:
            return @"sheetRotatorTurnedOn";
        case MSGraphPrinterProcessingStateDetailSheetRotatorUnderTemperature:
            return @"sheetRotatorUnderTemperature";
        case MSGraphPrinterProcessingStateDetailSheetRotatorUnrecoverableFailure:
            return @"sheetRotatorUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSheetRotatorUnrecoverableStorageError:
            return @"sheetRotatorUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailSheetRotatorWarmingUp:
            return @"sheetRotatorWarmingUp";
        case MSGraphPrinterProcessingStateDetailSlitterAdded:
            return @"slitterAdded";
        case MSGraphPrinterProcessingStateDetailSlitterAlmostEmpty:
            return @"slitterAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailSlitterAlmostFull:
            return @"slitterAlmostFull";
        case MSGraphPrinterProcessingStateDetailSlitterAtLimit:
            return @"slitterAtLimit";
        case MSGraphPrinterProcessingStateDetailSlitterClosed:
            return @"slitterClosed";
        case MSGraphPrinterProcessingStateDetailSlitterConfigurationChange:
            return @"slitterConfigurationChange";
        case MSGraphPrinterProcessingStateDetailSlitterCoverClosed:
            return @"slitterCoverClosed";
        case MSGraphPrinterProcessingStateDetailSlitterCoverOpen:
            return @"slitterCoverOpen";
        case MSGraphPrinterProcessingStateDetailSlitterEmpty:
            return @"slitterEmpty";
        case MSGraphPrinterProcessingStateDetailSlitterFull:
            return @"slitterFull";
        case MSGraphPrinterProcessingStateDetailSlitterInterlockClosed:
            return @"slitterInterlockClosed";
        case MSGraphPrinterProcessingStateDetailSlitterInterlockOpen:
            return @"slitterInterlockOpen";
        case MSGraphPrinterProcessingStateDetailSlitterJam:
            return @"slitterJam";
        case MSGraphPrinterProcessingStateDetailSlitterLifeAlmostOver:
            return @"slitterLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailSlitterLifeOver:
            return @"slitterLifeOver";
        case MSGraphPrinterProcessingStateDetailSlitterMemoryExhausted:
            return @"slitterMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailSlitterMissing:
            return @"slitterMissing";
        case MSGraphPrinterProcessingStateDetailSlitterMotorFailure:
            return @"slitterMotorFailure";
        case MSGraphPrinterProcessingStateDetailSlitterNearLimit:
            return @"slitterNearLimit";
        case MSGraphPrinterProcessingStateDetailSlitterOffline:
            return @"slitterOffline";
        case MSGraphPrinterProcessingStateDetailSlitterOpened:
            return @"slitterOpened";
        case MSGraphPrinterProcessingStateDetailSlitterOverTemperature:
            return @"slitterOverTemperature";
        case MSGraphPrinterProcessingStateDetailSlitterPowerSaver:
            return @"slitterPowerSaver";
        case MSGraphPrinterProcessingStateDetailSlitterRecoverableFailure:
            return @"slitterRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSlitterRecoverableStorage:
            return @"slitterRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailSlitterRemoved:
            return @"slitterRemoved";
        case MSGraphPrinterProcessingStateDetailSlitterResourceAdded:
            return @"slitterResourceAdded";
        case MSGraphPrinterProcessingStateDetailSlitterResourceRemoved:
            return @"slitterResourceRemoved";
        case MSGraphPrinterProcessingStateDetailSlitterThermistorFailure:
            return @"slitterThermistorFailure";
        case MSGraphPrinterProcessingStateDetailSlitterTimingFailure:
            return @"slitterTimingFailure";
        case MSGraphPrinterProcessingStateDetailSlitterTurnedOff:
            return @"slitterTurnedOff";
        case MSGraphPrinterProcessingStateDetailSlitterTurnedOn:
            return @"slitterTurnedOn";
        case MSGraphPrinterProcessingStateDetailSlitterUnderTemperature:
            return @"slitterUnderTemperature";
        case MSGraphPrinterProcessingStateDetailSlitterUnrecoverableFailure:
            return @"slitterUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSlitterUnrecoverableStorageError:
            return @"slitterUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailSlitterWarmingUp:
            return @"slitterWarmingUp";
        case MSGraphPrinterProcessingStateDetailStackerAdded:
            return @"stackerAdded";
        case MSGraphPrinterProcessingStateDetailStackerAlmostEmpty:
            return @"stackerAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailStackerAlmostFull:
            return @"stackerAlmostFull";
        case MSGraphPrinterProcessingStateDetailStackerAtLimit:
            return @"stackerAtLimit";
        case MSGraphPrinterProcessingStateDetailStackerClosed:
            return @"stackerClosed";
        case MSGraphPrinterProcessingStateDetailStackerConfigurationChange:
            return @"stackerConfigurationChange";
        case MSGraphPrinterProcessingStateDetailStackerCoverClosed:
            return @"stackerCoverClosed";
        case MSGraphPrinterProcessingStateDetailStackerCoverOpen:
            return @"stackerCoverOpen";
        case MSGraphPrinterProcessingStateDetailStackerEmpty:
            return @"stackerEmpty";
        case MSGraphPrinterProcessingStateDetailStackerFull:
            return @"stackerFull";
        case MSGraphPrinterProcessingStateDetailStackerInterlockClosed:
            return @"stackerInterlockClosed";
        case MSGraphPrinterProcessingStateDetailStackerInterlockOpen:
            return @"stackerInterlockOpen";
        case MSGraphPrinterProcessingStateDetailStackerJam:
            return @"stackerJam";
        case MSGraphPrinterProcessingStateDetailStackerLifeAlmostOver:
            return @"stackerLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailStackerLifeOver:
            return @"stackerLifeOver";
        case MSGraphPrinterProcessingStateDetailStackerMemoryExhausted:
            return @"stackerMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailStackerMissing:
            return @"stackerMissing";
        case MSGraphPrinterProcessingStateDetailStackerMotorFailure:
            return @"stackerMotorFailure";
        case MSGraphPrinterProcessingStateDetailStackerNearLimit:
            return @"stackerNearLimit";
        case MSGraphPrinterProcessingStateDetailStackerOffline:
            return @"stackerOffline";
        case MSGraphPrinterProcessingStateDetailStackerOpened:
            return @"stackerOpened";
        case MSGraphPrinterProcessingStateDetailStackerOverTemperature:
            return @"stackerOverTemperature";
        case MSGraphPrinterProcessingStateDetailStackerPowerSaver:
            return @"stackerPowerSaver";
        case MSGraphPrinterProcessingStateDetailStackerRecoverableFailure:
            return @"stackerRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailStackerRecoverableStorage:
            return @"stackerRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailStackerRemoved:
            return @"stackerRemoved";
        case MSGraphPrinterProcessingStateDetailStackerResourceAdded:
            return @"stackerResourceAdded";
        case MSGraphPrinterProcessingStateDetailStackerResourceRemoved:
            return @"stackerResourceRemoved";
        case MSGraphPrinterProcessingStateDetailStackerThermistorFailure:
            return @"stackerThermistorFailure";
        case MSGraphPrinterProcessingStateDetailStackerTimingFailure:
            return @"stackerTimingFailure";
        case MSGraphPrinterProcessingStateDetailStackerTurnedOff:
            return @"stackerTurnedOff";
        case MSGraphPrinterProcessingStateDetailStackerTurnedOn:
            return @"stackerTurnedOn";
        case MSGraphPrinterProcessingStateDetailStackerUnderTemperature:
            return @"stackerUnderTemperature";
        case MSGraphPrinterProcessingStateDetailStackerUnrecoverableFailure:
            return @"stackerUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailStackerUnrecoverableStorageError:
            return @"stackerUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailStackerWarmingUp:
            return @"stackerWarmingUp";
        case MSGraphPrinterProcessingStateDetailStandby:
            return @"standby";
        case MSGraphPrinterProcessingStateDetailStaplerAdded:
            return @"staplerAdded";
        case MSGraphPrinterProcessingStateDetailStaplerAlmostEmpty:
            return @"staplerAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailStaplerAlmostFull:
            return @"staplerAlmostFull";
        case MSGraphPrinterProcessingStateDetailStaplerAtLimit:
            return @"staplerAtLimit";
        case MSGraphPrinterProcessingStateDetailStaplerClosed:
            return @"staplerClosed";
        case MSGraphPrinterProcessingStateDetailStaplerConfigurationChange:
            return @"staplerConfigurationChange";
        case MSGraphPrinterProcessingStateDetailStaplerCoverClosed:
            return @"staplerCoverClosed";
        case MSGraphPrinterProcessingStateDetailStaplerCoverOpen:
            return @"staplerCoverOpen";
        case MSGraphPrinterProcessingStateDetailStaplerEmpty:
            return @"staplerEmpty";
        case MSGraphPrinterProcessingStateDetailStaplerFull:
            return @"staplerFull";
        case MSGraphPrinterProcessingStateDetailStaplerInterlockClosed:
            return @"staplerInterlockClosed";
        case MSGraphPrinterProcessingStateDetailStaplerInterlockOpen:
            return @"staplerInterlockOpen";
        case MSGraphPrinterProcessingStateDetailStaplerJam:
            return @"staplerJam";
        case MSGraphPrinterProcessingStateDetailStaplerLifeAlmostOver:
            return @"staplerLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailStaplerLifeOver:
            return @"staplerLifeOver";
        case MSGraphPrinterProcessingStateDetailStaplerMemoryExhausted:
            return @"staplerMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailStaplerMissing:
            return @"staplerMissing";
        case MSGraphPrinterProcessingStateDetailStaplerMotorFailure:
            return @"staplerMotorFailure";
        case MSGraphPrinterProcessingStateDetailStaplerNearLimit:
            return @"staplerNearLimit";
        case MSGraphPrinterProcessingStateDetailStaplerOffline:
            return @"staplerOffline";
        case MSGraphPrinterProcessingStateDetailStaplerOpened:
            return @"staplerOpened";
        case MSGraphPrinterProcessingStateDetailStaplerOverTemperature:
            return @"staplerOverTemperature";
        case MSGraphPrinterProcessingStateDetailStaplerPowerSaver:
            return @"staplerPowerSaver";
        case MSGraphPrinterProcessingStateDetailStaplerRecoverableFailure:
            return @"staplerRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailStaplerRecoverableStorage:
            return @"staplerRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailStaplerRemoved:
            return @"staplerRemoved";
        case MSGraphPrinterProcessingStateDetailStaplerResourceAdded:
            return @"staplerResourceAdded";
        case MSGraphPrinterProcessingStateDetailStaplerResourceRemoved:
            return @"staplerResourceRemoved";
        case MSGraphPrinterProcessingStateDetailStaplerThermistorFailure:
            return @"staplerThermistorFailure";
        case MSGraphPrinterProcessingStateDetailStaplerTimingFailure:
            return @"staplerTimingFailure";
        case MSGraphPrinterProcessingStateDetailStaplerTurnedOff:
            return @"staplerTurnedOff";
        case MSGraphPrinterProcessingStateDetailStaplerTurnedOn:
            return @"staplerTurnedOn";
        case MSGraphPrinterProcessingStateDetailStaplerUnderTemperature:
            return @"staplerUnderTemperature";
        case MSGraphPrinterProcessingStateDetailStaplerUnrecoverableFailure:
            return @"staplerUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailStaplerUnrecoverableStorageError:
            return @"staplerUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailStaplerWarmingUp:
            return @"staplerWarmingUp";
        case MSGraphPrinterProcessingStateDetailStitcherAdded:
            return @"stitcherAdded";
        case MSGraphPrinterProcessingStateDetailStitcherAlmostEmpty:
            return @"stitcherAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailStitcherAlmostFull:
            return @"stitcherAlmostFull";
        case MSGraphPrinterProcessingStateDetailStitcherAtLimit:
            return @"stitcherAtLimit";
        case MSGraphPrinterProcessingStateDetailStitcherClosed:
            return @"stitcherClosed";
        case MSGraphPrinterProcessingStateDetailStitcherConfigurationChange:
            return @"stitcherConfigurationChange";
        case MSGraphPrinterProcessingStateDetailStitcherCoverClosed:
            return @"stitcherCoverClosed";
        case MSGraphPrinterProcessingStateDetailStitcherCoverOpen:
            return @"stitcherCoverOpen";
        case MSGraphPrinterProcessingStateDetailStitcherEmpty:
            return @"stitcherEmpty";
        case MSGraphPrinterProcessingStateDetailStitcherFull:
            return @"stitcherFull";
        case MSGraphPrinterProcessingStateDetailStitcherInterlockClosed:
            return @"stitcherInterlockClosed";
        case MSGraphPrinterProcessingStateDetailStitcherInterlockOpen:
            return @"stitcherInterlockOpen";
        case MSGraphPrinterProcessingStateDetailStitcherJam:
            return @"stitcherJam";
        case MSGraphPrinterProcessingStateDetailStitcherLifeAlmostOver:
            return @"stitcherLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailStitcherLifeOver:
            return @"stitcherLifeOver";
        case MSGraphPrinterProcessingStateDetailStitcherMemoryExhausted:
            return @"stitcherMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailStitcherMissing:
            return @"stitcherMissing";
        case MSGraphPrinterProcessingStateDetailStitcherMotorFailure:
            return @"stitcherMotorFailure";
        case MSGraphPrinterProcessingStateDetailStitcherNearLimit:
            return @"stitcherNearLimit";
        case MSGraphPrinterProcessingStateDetailStitcherOffline:
            return @"stitcherOffline";
        case MSGraphPrinterProcessingStateDetailStitcherOpened:
            return @"stitcherOpened";
        case MSGraphPrinterProcessingStateDetailStitcherOverTemperature:
            return @"stitcherOverTemperature";
        case MSGraphPrinterProcessingStateDetailStitcherPowerSaver:
            return @"stitcherPowerSaver";
        case MSGraphPrinterProcessingStateDetailStitcherRecoverableFailure:
            return @"stitcherRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailStitcherRecoverableStorage:
            return @"stitcherRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailStitcherRemoved:
            return @"stitcherRemoved";
        case MSGraphPrinterProcessingStateDetailStitcherResourceAdded:
            return @"stitcherResourceAdded";
        case MSGraphPrinterProcessingStateDetailStitcherResourceRemoved:
            return @"stitcherResourceRemoved";
        case MSGraphPrinterProcessingStateDetailStitcherThermistorFailure:
            return @"stitcherThermistorFailure";
        case MSGraphPrinterProcessingStateDetailStitcherTimingFailure:
            return @"stitcherTimingFailure";
        case MSGraphPrinterProcessingStateDetailStitcherTurnedOff:
            return @"stitcherTurnedOff";
        case MSGraphPrinterProcessingStateDetailStitcherTurnedOn:
            return @"stitcherTurnedOn";
        case MSGraphPrinterProcessingStateDetailStitcherUnderTemperature:
            return @"stitcherUnderTemperature";
        case MSGraphPrinterProcessingStateDetailStitcherUnrecoverableFailure:
            return @"stitcherUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailStitcherUnrecoverableStorageError:
            return @"stitcherUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailStitcherWarmingUp:
            return @"stitcherWarmingUp";
        case MSGraphPrinterProcessingStateDetailSubunitAdded:
            return @"subunitAdded";
        case MSGraphPrinterProcessingStateDetailSubunitAlmostEmpty:
            return @"subunitAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailSubunitAlmostFull:
            return @"subunitAlmostFull";
        case MSGraphPrinterProcessingStateDetailSubunitAtLimit:
            return @"subunitAtLimit";
        case MSGraphPrinterProcessingStateDetailSubunitClosed:
            return @"subunitClosed";
        case MSGraphPrinterProcessingStateDetailSubunitCoolingDown:
            return @"subunitCoolingDown";
        case MSGraphPrinterProcessingStateDetailSubunitEmpty:
            return @"subunitEmpty";
        case MSGraphPrinterProcessingStateDetailSubunitFull:
            return @"subunitFull";
        case MSGraphPrinterProcessingStateDetailSubunitLifeAlmostOver:
            return @"subunitLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailSubunitLifeOver:
            return @"subunitLifeOver";
        case MSGraphPrinterProcessingStateDetailSubunitMemoryExhausted:
            return @"subunitMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailSubunitMissing:
            return @"subunitMissing";
        case MSGraphPrinterProcessingStateDetailSubunitMotorFailure:
            return @"subunitMotorFailure";
        case MSGraphPrinterProcessingStateDetailSubunitNearLimit:
            return @"subunitNearLimit";
        case MSGraphPrinterProcessingStateDetailSubunitOffline:
            return @"subunitOffline";
        case MSGraphPrinterProcessingStateDetailSubunitOpened:
            return @"subunitOpened";
        case MSGraphPrinterProcessingStateDetailSubunitOverTemperature:
            return @"subunitOverTemperature";
        case MSGraphPrinterProcessingStateDetailSubunitPowerSaver:
            return @"subunitPowerSaver";
        case MSGraphPrinterProcessingStateDetailSubunitRecoverableFailure:
            return @"subunitRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSubunitRecoverableStorage:
            return @"subunitRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailSubunitRemoved:
            return @"subunitRemoved";
        case MSGraphPrinterProcessingStateDetailSubunitResourceAdded:
            return @"subunitResourceAdded";
        case MSGraphPrinterProcessingStateDetailSubunitResourceRemoved:
            return @"subunitResourceRemoved";
        case MSGraphPrinterProcessingStateDetailSubunitThermistorFailure:
            return @"subunitThermistorFailure";
        case MSGraphPrinterProcessingStateDetailSubunitTimingFailure:
            return @"subunitTimingFailure";
        case MSGraphPrinterProcessingStateDetailSubunitTurnedOff:
            return @"subunitTurnedOff";
        case MSGraphPrinterProcessingStateDetailSubunitTurnedOn:
            return @"subunitTurnedOn";
        case MSGraphPrinterProcessingStateDetailSubunitUnderTemperature:
            return @"subunitUnderTemperature";
        case MSGraphPrinterProcessingStateDetailSubunitUnrecoverableFailure:
            return @"subunitUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailSubunitUnrecoverableStorage:
            return @"subunitUnrecoverableStorage";
        case MSGraphPrinterProcessingStateDetailSubunitWarmingUp:
            return @"subunitWarmingUp";
        case MSGraphPrinterProcessingStateDetailSuspend:
            return @"suspend";
        case MSGraphPrinterProcessingStateDetailTesting:
            return @"testing";
        case MSGraphPrinterProcessingStateDetailTrimmerAdded:
            return @"trimmerAdded";
        case MSGraphPrinterProcessingStateDetailTrimmerAlmostEmpty:
            return @"trimmerAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailTrimmerAlmostFull:
            return @"trimmerAlmostFull";
        case MSGraphPrinterProcessingStateDetailTrimmerAtLimit:
            return @"trimmerAtLimit";
        case MSGraphPrinterProcessingStateDetailTrimmerClosed:
            return @"trimmerClosed";
        case MSGraphPrinterProcessingStateDetailTrimmerConfigurationChange:
            return @"trimmerConfigurationChange";
        case MSGraphPrinterProcessingStateDetailTrimmerCoverClosed:
            return @"trimmerCoverClosed";
        case MSGraphPrinterProcessingStateDetailTrimmerCoverOpen:
            return @"trimmerCoverOpen";
        case MSGraphPrinterProcessingStateDetailTrimmerEmpty:
            return @"trimmerEmpty";
        case MSGraphPrinterProcessingStateDetailTrimmerFull:
            return @"trimmerFull";
        case MSGraphPrinterProcessingStateDetailTrimmerInterlockClosed:
            return @"trimmerInterlockClosed";
        case MSGraphPrinterProcessingStateDetailTrimmerInterlockOpen:
            return @"trimmerInterlockOpen";
        case MSGraphPrinterProcessingStateDetailTrimmerJam:
            return @"trimmerJam";
        case MSGraphPrinterProcessingStateDetailTrimmerLifeAlmostOver:
            return @"trimmerLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailTrimmerLifeOver:
            return @"trimmerLifeOver";
        case MSGraphPrinterProcessingStateDetailTrimmerMemoryExhausted:
            return @"trimmerMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailTrimmerMissing:
            return @"trimmerMissing";
        case MSGraphPrinterProcessingStateDetailTrimmerMotorFailure:
            return @"trimmerMotorFailure";
        case MSGraphPrinterProcessingStateDetailTrimmerNearLimit:
            return @"trimmerNearLimit";
        case MSGraphPrinterProcessingStateDetailTrimmerOffline:
            return @"trimmerOffline";
        case MSGraphPrinterProcessingStateDetailTrimmerOpened:
            return @"trimmerOpened";
        case MSGraphPrinterProcessingStateDetailTrimmerOverTemperature:
            return @"trimmerOverTemperature";
        case MSGraphPrinterProcessingStateDetailTrimmerPowerSaver:
            return @"trimmerPowerSaver";
        case MSGraphPrinterProcessingStateDetailTrimmerRecoverableFailure:
            return @"trimmerRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailTrimmerRecoverableStorage:
            return @"trimmerRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailTrimmerRemoved:
            return @"trimmerRemoved";
        case MSGraphPrinterProcessingStateDetailTrimmerResourceAdded:
            return @"trimmerResourceAdded";
        case MSGraphPrinterProcessingStateDetailTrimmerResourceRemoved:
            return @"trimmerResourceRemoved";
        case MSGraphPrinterProcessingStateDetailTrimmerThermistorFailure:
            return @"trimmerThermistorFailure";
        case MSGraphPrinterProcessingStateDetailTrimmerTimingFailure:
            return @"trimmerTimingFailure";
        case MSGraphPrinterProcessingStateDetailTrimmerTurnedOff:
            return @"trimmerTurnedOff";
        case MSGraphPrinterProcessingStateDetailTrimmerTurnedOn:
            return @"trimmerTurnedOn";
        case MSGraphPrinterProcessingStateDetailTrimmerUnderTemperature:
            return @"trimmerUnderTemperature";
        case MSGraphPrinterProcessingStateDetailTrimmerUnrecoverableFailure:
            return @"trimmerUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailTrimmerUnrecoverableStorageError:
            return @"trimmerUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailTrimmerWarmingUp:
            return @"trimmerWarmingUp";
        case MSGraphPrinterProcessingStateDetailUnknown:
            return @"unknown";
        case MSGraphPrinterProcessingStateDetailWrapperAdded:
            return @"wrapperAdded";
        case MSGraphPrinterProcessingStateDetailWrapperAlmostEmpty:
            return @"wrapperAlmostEmpty";
        case MSGraphPrinterProcessingStateDetailWrapperAlmostFull:
            return @"wrapperAlmostFull";
        case MSGraphPrinterProcessingStateDetailWrapperAtLimit:
            return @"wrapperAtLimit";
        case MSGraphPrinterProcessingStateDetailWrapperClosed:
            return @"wrapperClosed";
        case MSGraphPrinterProcessingStateDetailWrapperConfigurationChange:
            return @"wrapperConfigurationChange";
        case MSGraphPrinterProcessingStateDetailWrapperCoverClosed:
            return @"wrapperCoverClosed";
        case MSGraphPrinterProcessingStateDetailWrapperCoverOpen:
            return @"wrapperCoverOpen";
        case MSGraphPrinterProcessingStateDetailWrapperEmpty:
            return @"wrapperEmpty";
        case MSGraphPrinterProcessingStateDetailWrapperFull:
            return @"wrapperFull";
        case MSGraphPrinterProcessingStateDetailWrapperInterlockClosed:
            return @"wrapperInterlockClosed";
        case MSGraphPrinterProcessingStateDetailWrapperInterlockOpen:
            return @"wrapperInterlockOpen";
        case MSGraphPrinterProcessingStateDetailWrapperJam:
            return @"wrapperJam";
        case MSGraphPrinterProcessingStateDetailWrapperLifeAlmostOver:
            return @"wrapperLifeAlmostOver";
        case MSGraphPrinterProcessingStateDetailWrapperLifeOver:
            return @"wrapperLifeOver";
        case MSGraphPrinterProcessingStateDetailWrapperMemoryExhausted:
            return @"wrapperMemoryExhausted";
        case MSGraphPrinterProcessingStateDetailWrapperMissing:
            return @"wrapperMissing";
        case MSGraphPrinterProcessingStateDetailWrapperMotorFailure:
            return @"wrapperMotorFailure";
        case MSGraphPrinterProcessingStateDetailWrapperNearLimit:
            return @"wrapperNearLimit";
        case MSGraphPrinterProcessingStateDetailWrapperOffline:
            return @"wrapperOffline";
        case MSGraphPrinterProcessingStateDetailWrapperOpened:
            return @"wrapperOpened";
        case MSGraphPrinterProcessingStateDetailWrapperOverTemperature:
            return @"wrapperOverTemperature";
        case MSGraphPrinterProcessingStateDetailWrapperPowerSaver:
            return @"wrapperPowerSaver";
        case MSGraphPrinterProcessingStateDetailWrapperRecoverableFailure:
            return @"wrapperRecoverableFailure";
        case MSGraphPrinterProcessingStateDetailWrapperRecoverableStorage:
            return @"wrapperRecoverableStorage";
        case MSGraphPrinterProcessingStateDetailWrapperRemoved:
            return @"wrapperRemoved";
        case MSGraphPrinterProcessingStateDetailWrapperResourceAdded:
            return @"wrapperResourceAdded";
        case MSGraphPrinterProcessingStateDetailWrapperResourceRemoved:
            return @"wrapperResourceRemoved";
        case MSGraphPrinterProcessingStateDetailWrapperThermistorFailure:
            return @"wrapperThermistorFailure";
        case MSGraphPrinterProcessingStateDetailWrapperTimingFailure:
            return @"wrapperTimingFailure";
        case MSGraphPrinterProcessingStateDetailWrapperTurnedOff:
            return @"wrapperTurnedOff";
        case MSGraphPrinterProcessingStateDetailWrapperTurnedOn:
            return @"wrapperTurnedOn";
        case MSGraphPrinterProcessingStateDetailWrapperUnderTemperature:
            return @"wrapperUnderTemperature";
        case MSGraphPrinterProcessingStateDetailWrapperUnrecoverableFailure:
            return @"wrapperUnrecoverableFailure";
        case MSGraphPrinterProcessingStateDetailWrapperUnrecoverableStorageError:
            return @"wrapperUnrecoverableStorageError";
        case MSGraphPrinterProcessingStateDetailWrapperWarmingUp:
            return @"wrapperWarmingUp";
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
    else if([self isEqualToString:@"alertRemovalOfBinaryChangeEntry"])
    {
          return [MSGraphPrinterProcessingStateDetail alertRemovalOfBinaryChangeEntry];
    }
    else if([self isEqualToString:@"banderAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail banderAdded];
    }
    else if([self isEqualToString:@"banderAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail banderAlmostEmpty];
    }
    else if([self isEqualToString:@"banderAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail banderAlmostFull];
    }
    else if([self isEqualToString:@"banderAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail banderAtLimit];
    }
    else if([self isEqualToString:@"banderClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail banderClosed];
    }
    else if([self isEqualToString:@"banderConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail banderConfigurationChange];
    }
    else if([self isEqualToString:@"banderCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail banderCoverClosed];
    }
    else if([self isEqualToString:@"banderCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail banderCoverOpen];
    }
    else if([self isEqualToString:@"banderEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail banderEmpty];
    }
    else if([self isEqualToString:@"banderFull"])
    {
          return [MSGraphPrinterProcessingStateDetail banderFull];
    }
    else if([self isEqualToString:@"banderInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail banderInterlockClosed];
    }
    else if([self isEqualToString:@"banderInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail banderInterlockOpen];
    }
    else if([self isEqualToString:@"banderJam"])
    {
          return [MSGraphPrinterProcessingStateDetail banderJam];
    }
    else if([self isEqualToString:@"banderLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail banderLifeAlmostOver];
    }
    else if([self isEqualToString:@"banderLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail banderLifeOver];
    }
    else if([self isEqualToString:@"banderMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail banderMemoryExhausted];
    }
    else if([self isEqualToString:@"banderMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail banderMissing];
    }
    else if([self isEqualToString:@"banderMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail banderMotorFailure];
    }
    else if([self isEqualToString:@"banderNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail banderNearLimit];
    }
    else if([self isEqualToString:@"banderOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail banderOffline];
    }
    else if([self isEqualToString:@"banderOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail banderOpened];
    }
    else if([self isEqualToString:@"banderOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail banderOverTemperature];
    }
    else if([self isEqualToString:@"banderPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail banderPowerSaver];
    }
    else if([self isEqualToString:@"banderRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail banderRecoverableFailure];
    }
    else if([self isEqualToString:@"banderRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail banderRecoverableStorage];
    }
    else if([self isEqualToString:@"banderRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail banderRemoved];
    }
    else if([self isEqualToString:@"banderResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail banderResourceAdded];
    }
    else if([self isEqualToString:@"banderResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail banderResourceRemoved];
    }
    else if([self isEqualToString:@"banderThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail banderThermistorFailure];
    }
    else if([self isEqualToString:@"banderTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail banderTimingFailure];
    }
    else if([self isEqualToString:@"banderTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail banderTurnedOff];
    }
    else if([self isEqualToString:@"banderTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail banderTurnedOn];
    }
    else if([self isEqualToString:@"banderUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail banderUnderTemperature];
    }
    else if([self isEqualToString:@"banderUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail banderUnrecoverableFailure];
    }
    else if([self isEqualToString:@"banderUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail banderUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"banderWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail banderWarmingUp];
    }
    else if([self isEqualToString:@"binderAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail binderAdded];
    }
    else if([self isEqualToString:@"binderAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail binderAlmostEmpty];
    }
    else if([self isEqualToString:@"binderAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail binderAlmostFull];
    }
    else if([self isEqualToString:@"binderAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail binderAtLimit];
    }
    else if([self isEqualToString:@"binderClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail binderClosed];
    }
    else if([self isEqualToString:@"binderConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail binderConfigurationChange];
    }
    else if([self isEqualToString:@"binderCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail binderCoverClosed];
    }
    else if([self isEqualToString:@"binderCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail binderCoverOpen];
    }
    else if([self isEqualToString:@"binderEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail binderEmpty];
    }
    else if([self isEqualToString:@"binderFull"])
    {
          return [MSGraphPrinterProcessingStateDetail binderFull];
    }
    else if([self isEqualToString:@"binderInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail binderInterlockClosed];
    }
    else if([self isEqualToString:@"binderInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail binderInterlockOpen];
    }
    else if([self isEqualToString:@"binderJam"])
    {
          return [MSGraphPrinterProcessingStateDetail binderJam];
    }
    else if([self isEqualToString:@"binderLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail binderLifeAlmostOver];
    }
    else if([self isEqualToString:@"binderLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail binderLifeOver];
    }
    else if([self isEqualToString:@"binderMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail binderMemoryExhausted];
    }
    else if([self isEqualToString:@"binderMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail binderMissing];
    }
    else if([self isEqualToString:@"binderMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail binderMotorFailure];
    }
    else if([self isEqualToString:@"binderNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail binderNearLimit];
    }
    else if([self isEqualToString:@"binderOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail binderOffline];
    }
    else if([self isEqualToString:@"binderOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail binderOpened];
    }
    else if([self isEqualToString:@"binderOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail binderOverTemperature];
    }
    else if([self isEqualToString:@"binderPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail binderPowerSaver];
    }
    else if([self isEqualToString:@"binderRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail binderRecoverableFailure];
    }
    else if([self isEqualToString:@"binderRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail binderRecoverableStorage];
    }
    else if([self isEqualToString:@"binderRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail binderRemoved];
    }
    else if([self isEqualToString:@"binderResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail binderResourceAdded];
    }
    else if([self isEqualToString:@"binderResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail binderResourceRemoved];
    }
    else if([self isEqualToString:@"binderThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail binderThermistorFailure];
    }
    else if([self isEqualToString:@"binderTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail binderTimingFailure];
    }
    else if([self isEqualToString:@"binderTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail binderTurnedOff];
    }
    else if([self isEqualToString:@"binderTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail binderTurnedOn];
    }
    else if([self isEqualToString:@"binderUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail binderUnderTemperature];
    }
    else if([self isEqualToString:@"binderUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail binderUnrecoverableFailure];
    }
    else if([self isEqualToString:@"binderUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail binderUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"binderWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail binderWarmingUp];
    }
    else if([self isEqualToString:@"cameraFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail cameraFailure];
    }
    else if([self isEqualToString:@"chamberCooling"])
    {
          return [MSGraphPrinterProcessingStateDetail chamberCooling];
    }
    else if([self isEqualToString:@"chamberFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail chamberFailure];
    }
    else if([self isEqualToString:@"chamberHeating"])
    {
          return [MSGraphPrinterProcessingStateDetail chamberHeating];
    }
    else if([self isEqualToString:@"chamberTemperatureHigh"])
    {
          return [MSGraphPrinterProcessingStateDetail chamberTemperatureHigh];
    }
    else if([self isEqualToString:@"chamberTemperatureLow"])
    {
          return [MSGraphPrinterProcessingStateDetail chamberTemperatureLow];
    }
    else if([self isEqualToString:@"cleanerLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail cleanerLifeAlmostOver];
    }
    else if([self isEqualToString:@"cleanerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail cleanerLifeOver];
    }
    else if([self isEqualToString:@"configurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail configurationChange];
    }
    else if([self isEqualToString:@"deactivated"])
    {
          return [MSGraphPrinterProcessingStateDetail deactivated];
    }
    else if([self isEqualToString:@"deleted"])
    {
          return [MSGraphPrinterProcessingStateDetail deleted];
    }
    else if([self isEqualToString:@"dieCutterAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterAdded];
    }
    else if([self isEqualToString:@"dieCutterAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterAlmostEmpty];
    }
    else if([self isEqualToString:@"dieCutterAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterAlmostFull];
    }
    else if([self isEqualToString:@"dieCutterAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterAtLimit];
    }
    else if([self isEqualToString:@"dieCutterClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterClosed];
    }
    else if([self isEqualToString:@"dieCutterConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterConfigurationChange];
    }
    else if([self isEqualToString:@"dieCutterCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterCoverClosed];
    }
    else if([self isEqualToString:@"dieCutterCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterCoverOpen];
    }
    else if([self isEqualToString:@"dieCutterEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterEmpty];
    }
    else if([self isEqualToString:@"dieCutterFull"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterFull];
    }
    else if([self isEqualToString:@"dieCutterInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterInterlockClosed];
    }
    else if([self isEqualToString:@"dieCutterInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterInterlockOpen];
    }
    else if([self isEqualToString:@"dieCutterJam"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterJam];
    }
    else if([self isEqualToString:@"dieCutterLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterLifeAlmostOver];
    }
    else if([self isEqualToString:@"dieCutterLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterLifeOver];
    }
    else if([self isEqualToString:@"dieCutterMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterMemoryExhausted];
    }
    else if([self isEqualToString:@"dieCutterMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterMissing];
    }
    else if([self isEqualToString:@"dieCutterMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterMotorFailure];
    }
    else if([self isEqualToString:@"dieCutterNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterNearLimit];
    }
    else if([self isEqualToString:@"dieCutterOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterOffline];
    }
    else if([self isEqualToString:@"dieCutterOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterOpened];
    }
    else if([self isEqualToString:@"dieCutterOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterOverTemperature];
    }
    else if([self isEqualToString:@"dieCutterPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterPowerSaver];
    }
    else if([self isEqualToString:@"dieCutterRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterRecoverableFailure];
    }
    else if([self isEqualToString:@"dieCutterRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterRecoverableStorage];
    }
    else if([self isEqualToString:@"dieCutterRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterRemoved];
    }
    else if([self isEqualToString:@"dieCutterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterResourceAdded];
    }
    else if([self isEqualToString:@"dieCutterResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterResourceRemoved];
    }
    else if([self isEqualToString:@"dieCutterThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterThermistorFailure];
    }
    else if([self isEqualToString:@"dieCutterTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterTimingFailure];
    }
    else if([self isEqualToString:@"dieCutterTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterTurnedOff];
    }
    else if([self isEqualToString:@"dieCutterTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterTurnedOn];
    }
    else if([self isEqualToString:@"dieCutterUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterUnderTemperature];
    }
    else if([self isEqualToString:@"dieCutterUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterUnrecoverableFailure];
    }
    else if([self isEqualToString:@"dieCutterUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"dieCutterWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail dieCutterWarmingUp];
    }
    else if([self isEqualToString:@"extruderCooling"])
    {
          return [MSGraphPrinterProcessingStateDetail extruderCooling];
    }
    else if([self isEqualToString:@"extruderFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail extruderFailure];
    }
    else if([self isEqualToString:@"extruderHeating"])
    {
          return [MSGraphPrinterProcessingStateDetail extruderHeating];
    }
    else if([self isEqualToString:@"extruderJam"])
    {
          return [MSGraphPrinterProcessingStateDetail extruderJam];
    }
    else if([self isEqualToString:@"extruderTemperatureHigh"])
    {
          return [MSGraphPrinterProcessingStateDetail extruderTemperatureHigh];
    }
    else if([self isEqualToString:@"extruderTemperatureLow"])
    {
          return [MSGraphPrinterProcessingStateDetail extruderTemperatureLow];
    }
    else if([self isEqualToString:@"fanFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail fanFailure];
    }
    else if([self isEqualToString:@"faxModemLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail faxModemLifeAlmostOver];
    }
    else if([self isEqualToString:@"faxModemLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail faxModemLifeOver];
    }
    else if([self isEqualToString:@"faxModemMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail faxModemMissing];
    }
    else if([self isEqualToString:@"faxModemTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail faxModemTurnedOff];
    }
    else if([self isEqualToString:@"faxModemTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail faxModemTurnedOn];
    }
    else if([self isEqualToString:@"folderAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail folderAdded];
    }
    else if([self isEqualToString:@"folderAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail folderAlmostEmpty];
    }
    else if([self isEqualToString:@"folderAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail folderAlmostFull];
    }
    else if([self isEqualToString:@"folderAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail folderAtLimit];
    }
    else if([self isEqualToString:@"folderClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail folderClosed];
    }
    else if([self isEqualToString:@"folderConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail folderConfigurationChange];
    }
    else if([self isEqualToString:@"folderCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail folderCoverClosed];
    }
    else if([self isEqualToString:@"folderCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail folderCoverOpen];
    }
    else if([self isEqualToString:@"folderEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail folderEmpty];
    }
    else if([self isEqualToString:@"folderFull"])
    {
          return [MSGraphPrinterProcessingStateDetail folderFull];
    }
    else if([self isEqualToString:@"folderInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail folderInterlockClosed];
    }
    else if([self isEqualToString:@"folderInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail folderInterlockOpen];
    }
    else if([self isEqualToString:@"folderJam"])
    {
          return [MSGraphPrinterProcessingStateDetail folderJam];
    }
    else if([self isEqualToString:@"folderLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail folderLifeAlmostOver];
    }
    else if([self isEqualToString:@"folderLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail folderLifeOver];
    }
    else if([self isEqualToString:@"folderMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail folderMemoryExhausted];
    }
    else if([self isEqualToString:@"folderMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail folderMissing];
    }
    else if([self isEqualToString:@"folderMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail folderMotorFailure];
    }
    else if([self isEqualToString:@"folderNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail folderNearLimit];
    }
    else if([self isEqualToString:@"folderOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail folderOffline];
    }
    else if([self isEqualToString:@"folderOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail folderOpened];
    }
    else if([self isEqualToString:@"folderOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail folderOverTemperature];
    }
    else if([self isEqualToString:@"folderPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail folderPowerSaver];
    }
    else if([self isEqualToString:@"folderRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail folderRecoverableFailure];
    }
    else if([self isEqualToString:@"folderRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail folderRecoverableStorage];
    }
    else if([self isEqualToString:@"folderRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail folderRemoved];
    }
    else if([self isEqualToString:@"folderResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail folderResourceAdded];
    }
    else if([self isEqualToString:@"folderResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail folderResourceRemoved];
    }
    else if([self isEqualToString:@"folderThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail folderThermistorFailure];
    }
    else if([self isEqualToString:@"folderTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail folderTimingFailure];
    }
    else if([self isEqualToString:@"folderTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail folderTurnedOff];
    }
    else if([self isEqualToString:@"folderTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail folderTurnedOn];
    }
    else if([self isEqualToString:@"folderUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail folderUnderTemperature];
    }
    else if([self isEqualToString:@"folderUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail folderUnrecoverableFailure];
    }
    else if([self isEqualToString:@"folderUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail folderUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"folderWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail folderWarmingUp];
    }
    else if([self isEqualToString:@"hibernate"])
    {
          return [MSGraphPrinterProcessingStateDetail hibernate];
    }
    else if([self isEqualToString:@"holdNewJobs"])
    {
          return [MSGraphPrinterProcessingStateDetail holdNewJobs];
    }
    else if([self isEqualToString:@"identifyPrinterRequested"])
    {
          return [MSGraphPrinterProcessingStateDetail identifyPrinterRequested];
    }
    else if([self isEqualToString:@"imprinterAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterAdded];
    }
    else if([self isEqualToString:@"imprinterAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterAlmostEmpty];
    }
    else if([self isEqualToString:@"imprinterAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterAlmostFull];
    }
    else if([self isEqualToString:@"imprinterAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterAtLimit];
    }
    else if([self isEqualToString:@"imprinterClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterClosed];
    }
    else if([self isEqualToString:@"imprinterConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterConfigurationChange];
    }
    else if([self isEqualToString:@"imprinterCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterCoverClosed];
    }
    else if([self isEqualToString:@"imprinterCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterCoverOpen];
    }
    else if([self isEqualToString:@"imprinterEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterEmpty];
    }
    else if([self isEqualToString:@"imprinterFull"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterFull];
    }
    else if([self isEqualToString:@"imprinterInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterInterlockClosed];
    }
    else if([self isEqualToString:@"imprinterInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterInterlockOpen];
    }
    else if([self isEqualToString:@"imprinterJam"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterJam];
    }
    else if([self isEqualToString:@"imprinterLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterLifeAlmostOver];
    }
    else if([self isEqualToString:@"imprinterLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterLifeOver];
    }
    else if([self isEqualToString:@"imprinterMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterMemoryExhausted];
    }
    else if([self isEqualToString:@"imprinterMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterMissing];
    }
    else if([self isEqualToString:@"imprinterMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterMotorFailure];
    }
    else if([self isEqualToString:@"imprinterNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterNearLimit];
    }
    else if([self isEqualToString:@"imprinterOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterOffline];
    }
    else if([self isEqualToString:@"imprinterOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterOpened];
    }
    else if([self isEqualToString:@"imprinterOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterOverTemperature];
    }
    else if([self isEqualToString:@"imprinterPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterPowerSaver];
    }
    else if([self isEqualToString:@"imprinterRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterRecoverableFailure];
    }
    else if([self isEqualToString:@"imprinterRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterRecoverableStorage];
    }
    else if([self isEqualToString:@"imprinterRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterRemoved];
    }
    else if([self isEqualToString:@"imprinterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterResourceAdded];
    }
    else if([self isEqualToString:@"imprinterResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterResourceRemoved];
    }
    else if([self isEqualToString:@"imprinterThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterThermistorFailure];
    }
    else if([self isEqualToString:@"imprinterTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterTimingFailure];
    }
    else if([self isEqualToString:@"imprinterTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterTurnedOff];
    }
    else if([self isEqualToString:@"imprinterTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterTurnedOn];
    }
    else if([self isEqualToString:@"imprinterUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterUnderTemperature];
    }
    else if([self isEqualToString:@"imprinterUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterUnrecoverableFailure];
    }
    else if([self isEqualToString:@"imprinterUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"imprinterWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail imprinterWarmingUp];
    }
    else if([self isEqualToString:@"inputCannotFeedSizeSelected"])
    {
          return [MSGraphPrinterProcessingStateDetail inputCannotFeedSizeSelected];
    }
    else if([self isEqualToString:@"inputManualInputRequest"])
    {
          return [MSGraphPrinterProcessingStateDetail inputManualInputRequest];
    }
    else if([self isEqualToString:@"inputMediaColorChange"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaColorChange];
    }
    else if([self isEqualToString:@"inputMediaFormPartsChange"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaFormPartsChange];
    }
    else if([self isEqualToString:@"inputMediaSizeChange"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaSizeChange];
    }
    else if([self isEqualToString:@"inputMediaTrayFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaTrayFailure];
    }
    else if([self isEqualToString:@"inputMediaTrayFeedError"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaTrayFeedError];
    }
    else if([self isEqualToString:@"inputMediaTrayJam"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaTrayJam];
    }
    else if([self isEqualToString:@"inputMediaTypeChange"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaTypeChange];
    }
    else if([self isEqualToString:@"inputMediaWeightChange"])
    {
          return [MSGraphPrinterProcessingStateDetail inputMediaWeightChange];
    }
    else if([self isEqualToString:@"inputPickRollerFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inputPickRollerFailure];
    }
    else if([self isEqualToString:@"inputPickRollerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail inputPickRollerLifeOver];
    }
    else if([self isEqualToString:@"inputPickRollerLifeWarn"])
    {
          return [MSGraphPrinterProcessingStateDetail inputPickRollerLifeWarn];
    }
    else if([self isEqualToString:@"inputPickRollerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail inputPickRollerMissing];
    }
    else if([self isEqualToString:@"inputTrayElevationFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inputTrayElevationFailure];
    }
    else if([self isEqualToString:@"inputTrayPositionFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inputTrayPositionFailure];
    }
    else if([self isEqualToString:@"inserterAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterAdded];
    }
    else if([self isEqualToString:@"inserterAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterAlmostEmpty];
    }
    else if([self isEqualToString:@"inserterAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterAlmostFull];
    }
    else if([self isEqualToString:@"inserterAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterAtLimit];
    }
    else if([self isEqualToString:@"inserterClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterClosed];
    }
    else if([self isEqualToString:@"inserterConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterConfigurationChange];
    }
    else if([self isEqualToString:@"inserterCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterCoverClosed];
    }
    else if([self isEqualToString:@"inserterCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterCoverOpen];
    }
    else if([self isEqualToString:@"inserterEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterEmpty];
    }
    else if([self isEqualToString:@"inserterFull"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterFull];
    }
    else if([self isEqualToString:@"inserterInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterInterlockClosed];
    }
    else if([self isEqualToString:@"inserterInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterInterlockOpen];
    }
    else if([self isEqualToString:@"inserterJam"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterJam];
    }
    else if([self isEqualToString:@"inserterLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterLifeAlmostOver];
    }
    else if([self isEqualToString:@"inserterLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterLifeOver];
    }
    else if([self isEqualToString:@"inserterMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterMemoryExhausted];
    }
    else if([self isEqualToString:@"inserterMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterMissing];
    }
    else if([self isEqualToString:@"inserterMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterMotorFailure];
    }
    else if([self isEqualToString:@"inserterNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterNearLimit];
    }
    else if([self isEqualToString:@"inserterOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterOffline];
    }
    else if([self isEqualToString:@"inserterOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterOpened];
    }
    else if([self isEqualToString:@"inserterOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterOverTemperature];
    }
    else if([self isEqualToString:@"inserterPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterPowerSaver];
    }
    else if([self isEqualToString:@"inserterRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterRecoverableFailure];
    }
    else if([self isEqualToString:@"inserterRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterRecoverableStorage];
    }
    else if([self isEqualToString:@"inserterRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterRemoved];
    }
    else if([self isEqualToString:@"inserterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterResourceAdded];
    }
    else if([self isEqualToString:@"inserterResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterResourceRemoved];
    }
    else if([self isEqualToString:@"inserterThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterThermistorFailure];
    }
    else if([self isEqualToString:@"inserterTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterTimingFailure];
    }
    else if([self isEqualToString:@"inserterTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterTurnedOff];
    }
    else if([self isEqualToString:@"inserterTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterTurnedOn];
    }
    else if([self isEqualToString:@"inserterUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterUnderTemperature];
    }
    else if([self isEqualToString:@"inserterUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterUnrecoverableFailure];
    }
    else if([self isEqualToString:@"inserterUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"inserterWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail inserterWarmingUp];
    }
    else if([self isEqualToString:@"interlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail interlockClosed];
    }
    else if([self isEqualToString:@"interpreterCartridgeAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterCartridgeAdded];
    }
    else if([self isEqualToString:@"interpreterCartridgeDeleted"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterCartridgeDeleted];
    }
    else if([self isEqualToString:@"interpreterComplexPageEncountered"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterComplexPageEncountered];
    }
    else if([self isEqualToString:@"interpreterMemoryDecrease"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterMemoryDecrease];
    }
    else if([self isEqualToString:@"interpreterMemoryIncrease"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterMemoryIncrease];
    }
    else if([self isEqualToString:@"interpreterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterResourceAdded];
    }
    else if([self isEqualToString:@"interpreterResourceDeleted"])
    {
          return [MSGraphPrinterProcessingStateDetail interpreterResourceDeleted];
    }
    else if([self isEqualToString:@"lampAtEol"])
    {
          return [MSGraphPrinterProcessingStateDetail lampAtEol];
    }
    else if([self isEqualToString:@"lampFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail lampFailure];
    }
    else if([self isEqualToString:@"lampNearEol"])
    {
          return [MSGraphPrinterProcessingStateDetail lampNearEol];
    }
    else if([self isEqualToString:@"laserAtEol"])
    {
          return [MSGraphPrinterProcessingStateDetail laserAtEol];
    }
    else if([self isEqualToString:@"laserFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail laserFailure];
    }
    else if([self isEqualToString:@"laserNearEol"])
    {
          return [MSGraphPrinterProcessingStateDetail laserNearEol];
    }
    else if([self isEqualToString:@"makeEnvelopeAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeAdded];
    }
    else if([self isEqualToString:@"makeEnvelopeAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeAlmostEmpty];
    }
    else if([self isEqualToString:@"makeEnvelopeAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeAlmostFull];
    }
    else if([self isEqualToString:@"makeEnvelopeAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeAtLimit];
    }
    else if([self isEqualToString:@"makeEnvelopeClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeClosed];
    }
    else if([self isEqualToString:@"makeEnvelopeConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeConfigurationChange];
    }
    else if([self isEqualToString:@"makeEnvelopeCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeCoverClosed];
    }
    else if([self isEqualToString:@"makeEnvelopeCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeCoverOpen];
    }
    else if([self isEqualToString:@"makeEnvelopeEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeEmpty];
    }
    else if([self isEqualToString:@"makeEnvelopeFull"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeFull];
    }
    else if([self isEqualToString:@"makeEnvelopeInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeInterlockClosed];
    }
    else if([self isEqualToString:@"makeEnvelopeInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeInterlockOpen];
    }
    else if([self isEqualToString:@"makeEnvelopeJam"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeJam];
    }
    else if([self isEqualToString:@"makeEnvelopeLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeLifeAlmostOver];
    }
    else if([self isEqualToString:@"makeEnvelopeLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeLifeOver];
    }
    else if([self isEqualToString:@"makeEnvelopeMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeMemoryExhausted];
    }
    else if([self isEqualToString:@"makeEnvelopeMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeMissing];
    }
    else if([self isEqualToString:@"makeEnvelopeMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeMotorFailure];
    }
    else if([self isEqualToString:@"makeEnvelopeNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeNearLimit];
    }
    else if([self isEqualToString:@"makeEnvelopeOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeOffline];
    }
    else if([self isEqualToString:@"makeEnvelopeOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeOpened];
    }
    else if([self isEqualToString:@"makeEnvelopeOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeOverTemperature];
    }
    else if([self isEqualToString:@"makeEnvelopePowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopePowerSaver];
    }
    else if([self isEqualToString:@"makeEnvelopeRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeRecoverableFailure];
    }
    else if([self isEqualToString:@"makeEnvelopeRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeRecoverableStorage];
    }
    else if([self isEqualToString:@"makeEnvelopeRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeRemoved];
    }
    else if([self isEqualToString:@"makeEnvelopeResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeResourceAdded];
    }
    else if([self isEqualToString:@"makeEnvelopeResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeResourceRemoved];
    }
    else if([self isEqualToString:@"makeEnvelopeThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeThermistorFailure];
    }
    else if([self isEqualToString:@"makeEnvelopeTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeTimingFailure];
    }
    else if([self isEqualToString:@"makeEnvelopeTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeTurnedOff];
    }
    else if([self isEqualToString:@"makeEnvelopeTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeTurnedOn];
    }
    else if([self isEqualToString:@"makeEnvelopeUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeUnderTemperature];
    }
    else if([self isEqualToString:@"makeEnvelopeUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeUnrecoverableFailure];
    }
    else if([self isEqualToString:@"makeEnvelopeUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"makeEnvelopeWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail makeEnvelopeWarmingUp];
    }
    else if([self isEqualToString:@"markerAdjustingPrintQuality"])
    {
          return [MSGraphPrinterProcessingStateDetail markerAdjustingPrintQuality];
    }
    else if([self isEqualToString:@"markerCleanerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerCleanerMissing];
    }
    else if([self isEqualToString:@"markerDeveloperAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerDeveloperAlmostEmpty];
    }
    else if([self isEqualToString:@"markerDeveloperEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerDeveloperEmpty];
    }
    else if([self isEqualToString:@"markerDeveloperMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerDeveloperMissing];
    }
    else if([self isEqualToString:@"markerFuserMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerFuserMissing];
    }
    else if([self isEqualToString:@"markerFuserThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail markerFuserThermistorFailure];
    }
    else if([self isEqualToString:@"markerFuserTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail markerFuserTimingFailure];
    }
    else if([self isEqualToString:@"markerInkAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerInkAlmostEmpty];
    }
    else if([self isEqualToString:@"markerInkEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerInkEmpty];
    }
    else if([self isEqualToString:@"markerInkMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerInkMissing];
    }
    else if([self isEqualToString:@"markerOpcMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerOpcMissing];
    }
    else if([self isEqualToString:@"markerPrintRibbonAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerPrintRibbonAlmostEmpty];
    }
    else if([self isEqualToString:@"markerPrintRibbonEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerPrintRibbonEmpty];
    }
    else if([self isEqualToString:@"markerPrintRibbonMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerPrintRibbonMissing];
    }
    else if([self isEqualToString:@"markerSupplyAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail markerSupplyAlmostEmpty];
    }
    else if([self isEqualToString:@"markerSupplyMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerSupplyMissing];
    }
    else if([self isEqualToString:@"markerTonerCartridgeMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerTonerCartridgeMissing];
    }
    else if([self isEqualToString:@"markerTonerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerTonerMissing];
    }
    else if([self isEqualToString:@"markerWasteInkReceptacleAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteInkReceptacleAlmostFull];
    }
    else if([self isEqualToString:@"markerWasteInkReceptacleFull"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteInkReceptacleFull];
    }
    else if([self isEqualToString:@"markerWasteInkReceptacleMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteInkReceptacleMissing];
    }
    else if([self isEqualToString:@"markerWasteMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteMissing];
    }
    else if([self isEqualToString:@"markerWasteTonerReceptacleAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteTonerReceptacleAlmostFull];
    }
    else if([self isEqualToString:@"markerWasteTonerReceptacleFull"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteTonerReceptacleFull];
    }
    else if([self isEqualToString:@"markerWasteTonerReceptacleMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail markerWasteTonerReceptacleMissing];
    }
    else if([self isEqualToString:@"materialEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail materialEmpty];
    }
    else if([self isEqualToString:@"materialLow"])
    {
          return [MSGraphPrinterProcessingStateDetail materialLow];
    }
    else if([self isEqualToString:@"materialNeeded"])
    {
          return [MSGraphPrinterProcessingStateDetail materialNeeded];
    }
    else if([self isEqualToString:@"mediaDrying"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaDrying];
    }
    else if([self isEqualToString:@"mediaPathCannotDuplexMediaSelected"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathCannotDuplexMediaSelected];
    }
    else if([self isEqualToString:@"mediaPathFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathFailure];
    }
    else if([self isEqualToString:@"mediaPathInputEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathInputEmpty];
    }
    else if([self isEqualToString:@"mediaPathInputFeedError"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathInputFeedError];
    }
    else if([self isEqualToString:@"mediaPathInputJam"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathInputJam];
    }
    else if([self isEqualToString:@"mediaPathInputRequest"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathInputRequest];
    }
    else if([self isEqualToString:@"mediaPathJam"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathJam];
    }
    else if([self isEqualToString:@"mediaPathMediaTrayAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathMediaTrayAlmostFull];
    }
    else if([self isEqualToString:@"mediaPathMediaTrayFull"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathMediaTrayFull];
    }
    else if([self isEqualToString:@"mediaPathMediaTrayMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathMediaTrayMissing];
    }
    else if([self isEqualToString:@"mediaPathOutputFeedError"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathOutputFeedError];
    }
    else if([self isEqualToString:@"mediaPathOutputFull"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathOutputFull];
    }
    else if([self isEqualToString:@"mediaPathOutputJam"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathOutputJam];
    }
    else if([self isEqualToString:@"mediaPathPickRollerFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerFailure];
    }
    else if([self isEqualToString:@"mediaPathPickRollerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerLifeOver];
    }
    else if([self isEqualToString:@"mediaPathPickRollerLifeWarn"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerLifeWarn];
    }
    else if([self isEqualToString:@"mediaPathPickRollerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail mediaPathPickRollerMissing];
    }
    else if([self isEqualToString:@"motorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail motorFailure];
    }
    else if([self isEqualToString:@"outputMailboxSelectFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail outputMailboxSelectFailure];
    }
    else if([self isEqualToString:@"outputMediaTrayFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail outputMediaTrayFailure];
    }
    else if([self isEqualToString:@"outputMediaTrayFeedError"])
    {
          return [MSGraphPrinterProcessingStateDetail outputMediaTrayFeedError];
    }
    else if([self isEqualToString:@"outputMediaTrayJam"])
    {
          return [MSGraphPrinterProcessingStateDetail outputMediaTrayJam];
    }
    else if([self isEqualToString:@"perforaterAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterAdded];
    }
    else if([self isEqualToString:@"perforaterAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterAlmostEmpty];
    }
    else if([self isEqualToString:@"perforaterAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterAlmostFull];
    }
    else if([self isEqualToString:@"perforaterAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterAtLimit];
    }
    else if([self isEqualToString:@"perforaterClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterClosed];
    }
    else if([self isEqualToString:@"perforaterConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterConfigurationChange];
    }
    else if([self isEqualToString:@"perforaterCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterCoverClosed];
    }
    else if([self isEqualToString:@"perforaterCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterCoverOpen];
    }
    else if([self isEqualToString:@"perforaterEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterEmpty];
    }
    else if([self isEqualToString:@"perforaterFull"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterFull];
    }
    else if([self isEqualToString:@"perforaterInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterInterlockClosed];
    }
    else if([self isEqualToString:@"perforaterInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterInterlockOpen];
    }
    else if([self isEqualToString:@"perforaterJam"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterJam];
    }
    else if([self isEqualToString:@"perforaterLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterLifeAlmostOver];
    }
    else if([self isEqualToString:@"perforaterLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterLifeOver];
    }
    else if([self isEqualToString:@"perforaterMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterMemoryExhausted];
    }
    else if([self isEqualToString:@"perforaterMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterMissing];
    }
    else if([self isEqualToString:@"perforaterMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterMotorFailure];
    }
    else if([self isEqualToString:@"perforaterNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterNearLimit];
    }
    else if([self isEqualToString:@"perforaterOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterOffline];
    }
    else if([self isEqualToString:@"perforaterOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterOpened];
    }
    else if([self isEqualToString:@"perforaterOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterOverTemperature];
    }
    else if([self isEqualToString:@"perforaterPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterPowerSaver];
    }
    else if([self isEqualToString:@"perforaterRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterRecoverableFailure];
    }
    else if([self isEqualToString:@"perforaterRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterRecoverableStorage];
    }
    else if([self isEqualToString:@"perforaterRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterRemoved];
    }
    else if([self isEqualToString:@"perforaterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterResourceAdded];
    }
    else if([self isEqualToString:@"perforaterResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterResourceRemoved];
    }
    else if([self isEqualToString:@"perforaterThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterThermistorFailure];
    }
    else if([self isEqualToString:@"perforaterTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterTimingFailure];
    }
    else if([self isEqualToString:@"perforaterTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterTurnedOff];
    }
    else if([self isEqualToString:@"perforaterTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterTurnedOn];
    }
    else if([self isEqualToString:@"perforaterUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterUnderTemperature];
    }
    else if([self isEqualToString:@"perforaterUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterUnrecoverableFailure];
    }
    else if([self isEqualToString:@"perforaterUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"perforaterWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail perforaterWarmingUp];
    }
    else if([self isEqualToString:@"platformCooling"])
    {
          return [MSGraphPrinterProcessingStateDetail platformCooling];
    }
    else if([self isEqualToString:@"platformFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail platformFailure];
    }
    else if([self isEqualToString:@"platformHeating"])
    {
          return [MSGraphPrinterProcessingStateDetail platformHeating];
    }
    else if([self isEqualToString:@"platformTemperatureHigh"])
    {
          return [MSGraphPrinterProcessingStateDetail platformTemperatureHigh];
    }
    else if([self isEqualToString:@"platformTemperatureLow"])
    {
          return [MSGraphPrinterProcessingStateDetail platformTemperatureLow];
    }
    else if([self isEqualToString:@"powerDown"])
    {
          return [MSGraphPrinterProcessingStateDetail powerDown];
    }
    else if([self isEqualToString:@"powerUp"])
    {
          return [MSGraphPrinterProcessingStateDetail powerUp];
    }
    else if([self isEqualToString:@"printerManualReset"])
    {
          return [MSGraphPrinterProcessingStateDetail printerManualReset];
    }
    else if([self isEqualToString:@"printerNmsReset"])
    {
          return [MSGraphPrinterProcessingStateDetail printerNmsReset];
    }
    else if([self isEqualToString:@"printerReadyToPrint"])
    {
          return [MSGraphPrinterProcessingStateDetail printerReadyToPrint];
    }
    else if([self isEqualToString:@"puncherAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherAdded];
    }
    else if([self isEqualToString:@"puncherAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherAlmostEmpty];
    }
    else if([self isEqualToString:@"puncherAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherAlmostFull];
    }
    else if([self isEqualToString:@"puncherAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherAtLimit];
    }
    else if([self isEqualToString:@"puncherClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherClosed];
    }
    else if([self isEqualToString:@"puncherConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherConfigurationChange];
    }
    else if([self isEqualToString:@"puncherCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherCoverClosed];
    }
    else if([self isEqualToString:@"puncherCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherCoverOpen];
    }
    else if([self isEqualToString:@"puncherEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherEmpty];
    }
    else if([self isEqualToString:@"puncherFull"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherFull];
    }
    else if([self isEqualToString:@"puncherInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherInterlockClosed];
    }
    else if([self isEqualToString:@"puncherInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherInterlockOpen];
    }
    else if([self isEqualToString:@"puncherJam"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherJam];
    }
    else if([self isEqualToString:@"puncherLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherLifeAlmostOver];
    }
    else if([self isEqualToString:@"puncherLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherLifeOver];
    }
    else if([self isEqualToString:@"puncherMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherMemoryExhausted];
    }
    else if([self isEqualToString:@"puncherMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherMissing];
    }
    else if([self isEqualToString:@"puncherMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherMotorFailure];
    }
    else if([self isEqualToString:@"puncherNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherNearLimit];
    }
    else if([self isEqualToString:@"puncherOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherOffline];
    }
    else if([self isEqualToString:@"puncherOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherOpened];
    }
    else if([self isEqualToString:@"puncherOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherOverTemperature];
    }
    else if([self isEqualToString:@"puncherPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherPowerSaver];
    }
    else if([self isEqualToString:@"puncherRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherRecoverableFailure];
    }
    else if([self isEqualToString:@"puncherRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherRecoverableStorage];
    }
    else if([self isEqualToString:@"puncherRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherRemoved];
    }
    else if([self isEqualToString:@"puncherResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherResourceAdded];
    }
    else if([self isEqualToString:@"puncherResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherResourceRemoved];
    }
    else if([self isEqualToString:@"puncherThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherThermistorFailure];
    }
    else if([self isEqualToString:@"puncherTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherTimingFailure];
    }
    else if([self isEqualToString:@"puncherTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherTurnedOff];
    }
    else if([self isEqualToString:@"puncherTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherTurnedOn];
    }
    else if([self isEqualToString:@"puncherUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherUnderTemperature];
    }
    else if([self isEqualToString:@"puncherUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherUnrecoverableFailure];
    }
    else if([self isEqualToString:@"puncherUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"puncherWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail puncherWarmingUp];
    }
    else if([self isEqualToString:@"resuming"])
    {
          return [MSGraphPrinterProcessingStateDetail resuming];
    }
    else if([self isEqualToString:@"scanMediaPathFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathFailure];
    }
    else if([self isEqualToString:@"scanMediaPathInputEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathInputEmpty];
    }
    else if([self isEqualToString:@"scanMediaPathInputFeedError"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathInputFeedError];
    }
    else if([self isEqualToString:@"scanMediaPathInputJam"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathInputJam];
    }
    else if([self isEqualToString:@"scanMediaPathInputRequest"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathInputRequest];
    }
    else if([self isEqualToString:@"scanMediaPathJam"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathJam];
    }
    else if([self isEqualToString:@"scanMediaPathOutputFeedError"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathOutputFeedError];
    }
    else if([self isEqualToString:@"scanMediaPathOutputFull"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathOutputFull];
    }
    else if([self isEqualToString:@"scanMediaPathOutputJam"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathOutputJam];
    }
    else if([self isEqualToString:@"scanMediaPathPickRollerFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerFailure];
    }
    else if([self isEqualToString:@"scanMediaPathPickRollerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerLifeOver];
    }
    else if([self isEqualToString:@"scanMediaPathPickRollerLifeWarn"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerLifeWarn];
    }
    else if([self isEqualToString:@"scanMediaPathPickRollerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathPickRollerMissing];
    }
    else if([self isEqualToString:@"scanMediaPathTrayAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathTrayAlmostFull];
    }
    else if([self isEqualToString:@"scanMediaPathTrayFull"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathTrayFull];
    }
    else if([self isEqualToString:@"scanMediaPathTrayMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail scanMediaPathTrayMissing];
    }
    else if([self isEqualToString:@"scannerLightFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerLightFailure];
    }
    else if([self isEqualToString:@"scannerLightLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerLightLifeAlmostOver];
    }
    else if([self isEqualToString:@"scannerLightLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerLightLifeOver];
    }
    else if([self isEqualToString:@"scannerLightMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerLightMissing];
    }
    else if([self isEqualToString:@"scannerSensorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerSensorFailure];
    }
    else if([self isEqualToString:@"scannerSensorLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerSensorLifeAlmostOver];
    }
    else if([self isEqualToString:@"scannerSensorLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerSensorLifeOver];
    }
    else if([self isEqualToString:@"scannerSensorMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail scannerSensorMissing];
    }
    else if([self isEqualToString:@"separationCutterAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterAdded];
    }
    else if([self isEqualToString:@"separationCutterAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterAlmostEmpty];
    }
    else if([self isEqualToString:@"separationCutterAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterAlmostFull];
    }
    else if([self isEqualToString:@"separationCutterAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterAtLimit];
    }
    else if([self isEqualToString:@"separationCutterClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterClosed];
    }
    else if([self isEqualToString:@"separationCutterConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterConfigurationChange];
    }
    else if([self isEqualToString:@"separationCutterCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterCoverClosed];
    }
    else if([self isEqualToString:@"separationCutterCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterCoverOpen];
    }
    else if([self isEqualToString:@"separationCutterEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterEmpty];
    }
    else if([self isEqualToString:@"separationCutterFull"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterFull];
    }
    else if([self isEqualToString:@"separationCutterInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterInterlockClosed];
    }
    else if([self isEqualToString:@"separationCutterInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterInterlockOpen];
    }
    else if([self isEqualToString:@"separationCutterJam"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterJam];
    }
    else if([self isEqualToString:@"separationCutterLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterLifeAlmostOver];
    }
    else if([self isEqualToString:@"separationCutterLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterLifeOver];
    }
    else if([self isEqualToString:@"separationCutterMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterMemoryExhausted];
    }
    else if([self isEqualToString:@"separationCutterMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterMissing];
    }
    else if([self isEqualToString:@"separationCutterMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterMotorFailure];
    }
    else if([self isEqualToString:@"separationCutterNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterNearLimit];
    }
    else if([self isEqualToString:@"separationCutterOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterOffline];
    }
    else if([self isEqualToString:@"separationCutterOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterOpened];
    }
    else if([self isEqualToString:@"separationCutterOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterOverTemperature];
    }
    else if([self isEqualToString:@"separationCutterPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterPowerSaver];
    }
    else if([self isEqualToString:@"separationCutterRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterRecoverableFailure];
    }
    else if([self isEqualToString:@"separationCutterRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterRecoverableStorage];
    }
    else if([self isEqualToString:@"separationCutterRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterRemoved];
    }
    else if([self isEqualToString:@"separationCutterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterResourceAdded];
    }
    else if([self isEqualToString:@"separationCutterResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterResourceRemoved];
    }
    else if([self isEqualToString:@"separationCutterThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterThermistorFailure];
    }
    else if([self isEqualToString:@"separationCutterTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterTimingFailure];
    }
    else if([self isEqualToString:@"separationCutterTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterTurnedOff];
    }
    else if([self isEqualToString:@"separationCutterTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterTurnedOn];
    }
    else if([self isEqualToString:@"separationCutterUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterUnderTemperature];
    }
    else if([self isEqualToString:@"separationCutterUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterUnrecoverableFailure];
    }
    else if([self isEqualToString:@"separationCutterUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"separationCutterWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail separationCutterWarmingUp];
    }
    else if([self isEqualToString:@"sheetRotatorAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorAdded];
    }
    else if([self isEqualToString:@"sheetRotatorAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorAlmostEmpty];
    }
    else if([self isEqualToString:@"sheetRotatorAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorAlmostFull];
    }
    else if([self isEqualToString:@"sheetRotatorAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorAtLimit];
    }
    else if([self isEqualToString:@"sheetRotatorClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorClosed];
    }
    else if([self isEqualToString:@"sheetRotatorConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorConfigurationChange];
    }
    else if([self isEqualToString:@"sheetRotatorCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorCoverClosed];
    }
    else if([self isEqualToString:@"sheetRotatorCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorCoverOpen];
    }
    else if([self isEqualToString:@"sheetRotatorEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorEmpty];
    }
    else if([self isEqualToString:@"sheetRotatorFull"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorFull];
    }
    else if([self isEqualToString:@"sheetRotatorInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorInterlockClosed];
    }
    else if([self isEqualToString:@"sheetRotatorInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorInterlockOpen];
    }
    else if([self isEqualToString:@"sheetRotatorJam"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorJam];
    }
    else if([self isEqualToString:@"sheetRotatorLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorLifeAlmostOver];
    }
    else if([self isEqualToString:@"sheetRotatorLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorLifeOver];
    }
    else if([self isEqualToString:@"sheetRotatorMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorMemoryExhausted];
    }
    else if([self isEqualToString:@"sheetRotatorMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorMissing];
    }
    else if([self isEqualToString:@"sheetRotatorMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorMotorFailure];
    }
    else if([self isEqualToString:@"sheetRotatorNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorNearLimit];
    }
    else if([self isEqualToString:@"sheetRotatorOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorOffline];
    }
    else if([self isEqualToString:@"sheetRotatorOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorOpened];
    }
    else if([self isEqualToString:@"sheetRotatorOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorOverTemperature];
    }
    else if([self isEqualToString:@"sheetRotatorPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorPowerSaver];
    }
    else if([self isEqualToString:@"sheetRotatorRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorRecoverableFailure];
    }
    else if([self isEqualToString:@"sheetRotatorRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorRecoverableStorage];
    }
    else if([self isEqualToString:@"sheetRotatorRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorRemoved];
    }
    else if([self isEqualToString:@"sheetRotatorResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorResourceAdded];
    }
    else if([self isEqualToString:@"sheetRotatorResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorResourceRemoved];
    }
    else if([self isEqualToString:@"sheetRotatorThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorThermistorFailure];
    }
    else if([self isEqualToString:@"sheetRotatorTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorTimingFailure];
    }
    else if([self isEqualToString:@"sheetRotatorTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorTurnedOff];
    }
    else if([self isEqualToString:@"sheetRotatorTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorTurnedOn];
    }
    else if([self isEqualToString:@"sheetRotatorUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorUnderTemperature];
    }
    else if([self isEqualToString:@"sheetRotatorUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorUnrecoverableFailure];
    }
    else if([self isEqualToString:@"sheetRotatorUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"sheetRotatorWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail sheetRotatorWarmingUp];
    }
    else if([self isEqualToString:@"slitterAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterAdded];
    }
    else if([self isEqualToString:@"slitterAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterAlmostEmpty];
    }
    else if([self isEqualToString:@"slitterAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterAlmostFull];
    }
    else if([self isEqualToString:@"slitterAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterAtLimit];
    }
    else if([self isEqualToString:@"slitterClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterClosed];
    }
    else if([self isEqualToString:@"slitterConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterConfigurationChange];
    }
    else if([self isEqualToString:@"slitterCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterCoverClosed];
    }
    else if([self isEqualToString:@"slitterCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterCoverOpen];
    }
    else if([self isEqualToString:@"slitterEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterEmpty];
    }
    else if([self isEqualToString:@"slitterFull"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterFull];
    }
    else if([self isEqualToString:@"slitterInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterInterlockClosed];
    }
    else if([self isEqualToString:@"slitterInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterInterlockOpen];
    }
    else if([self isEqualToString:@"slitterJam"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterJam];
    }
    else if([self isEqualToString:@"slitterLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterLifeAlmostOver];
    }
    else if([self isEqualToString:@"slitterLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterLifeOver];
    }
    else if([self isEqualToString:@"slitterMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterMemoryExhausted];
    }
    else if([self isEqualToString:@"slitterMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterMissing];
    }
    else if([self isEqualToString:@"slitterMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterMotorFailure];
    }
    else if([self isEqualToString:@"slitterNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterNearLimit];
    }
    else if([self isEqualToString:@"slitterOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterOffline];
    }
    else if([self isEqualToString:@"slitterOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterOpened];
    }
    else if([self isEqualToString:@"slitterOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterOverTemperature];
    }
    else if([self isEqualToString:@"slitterPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterPowerSaver];
    }
    else if([self isEqualToString:@"slitterRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterRecoverableFailure];
    }
    else if([self isEqualToString:@"slitterRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterRecoverableStorage];
    }
    else if([self isEqualToString:@"slitterRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterRemoved];
    }
    else if([self isEqualToString:@"slitterResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterResourceAdded];
    }
    else if([self isEqualToString:@"slitterResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterResourceRemoved];
    }
    else if([self isEqualToString:@"slitterThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterThermistorFailure];
    }
    else if([self isEqualToString:@"slitterTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterTimingFailure];
    }
    else if([self isEqualToString:@"slitterTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterTurnedOff];
    }
    else if([self isEqualToString:@"slitterTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterTurnedOn];
    }
    else if([self isEqualToString:@"slitterUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterUnderTemperature];
    }
    else if([self isEqualToString:@"slitterUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterUnrecoverableFailure];
    }
    else if([self isEqualToString:@"slitterUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"slitterWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail slitterWarmingUp];
    }
    else if([self isEqualToString:@"stackerAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerAdded];
    }
    else if([self isEqualToString:@"stackerAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerAlmostEmpty];
    }
    else if([self isEqualToString:@"stackerAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerAlmostFull];
    }
    else if([self isEqualToString:@"stackerAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerAtLimit];
    }
    else if([self isEqualToString:@"stackerClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerClosed];
    }
    else if([self isEqualToString:@"stackerConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerConfigurationChange];
    }
    else if([self isEqualToString:@"stackerCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerCoverClosed];
    }
    else if([self isEqualToString:@"stackerCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerCoverOpen];
    }
    else if([self isEqualToString:@"stackerEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerEmpty];
    }
    else if([self isEqualToString:@"stackerFull"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerFull];
    }
    else if([self isEqualToString:@"stackerInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerInterlockClosed];
    }
    else if([self isEqualToString:@"stackerInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerInterlockOpen];
    }
    else if([self isEqualToString:@"stackerJam"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerJam];
    }
    else if([self isEqualToString:@"stackerLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerLifeAlmostOver];
    }
    else if([self isEqualToString:@"stackerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerLifeOver];
    }
    else if([self isEqualToString:@"stackerMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerMemoryExhausted];
    }
    else if([self isEqualToString:@"stackerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerMissing];
    }
    else if([self isEqualToString:@"stackerMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerMotorFailure];
    }
    else if([self isEqualToString:@"stackerNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerNearLimit];
    }
    else if([self isEqualToString:@"stackerOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerOffline];
    }
    else if([self isEqualToString:@"stackerOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerOpened];
    }
    else if([self isEqualToString:@"stackerOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerOverTemperature];
    }
    else if([self isEqualToString:@"stackerPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerPowerSaver];
    }
    else if([self isEqualToString:@"stackerRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerRecoverableFailure];
    }
    else if([self isEqualToString:@"stackerRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerRecoverableStorage];
    }
    else if([self isEqualToString:@"stackerRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerRemoved];
    }
    else if([self isEqualToString:@"stackerResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerResourceAdded];
    }
    else if([self isEqualToString:@"stackerResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerResourceRemoved];
    }
    else if([self isEqualToString:@"stackerThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerThermistorFailure];
    }
    else if([self isEqualToString:@"stackerTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerTimingFailure];
    }
    else if([self isEqualToString:@"stackerTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerTurnedOff];
    }
    else if([self isEqualToString:@"stackerTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerTurnedOn];
    }
    else if([self isEqualToString:@"stackerUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerUnderTemperature];
    }
    else if([self isEqualToString:@"stackerUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerUnrecoverableFailure];
    }
    else if([self isEqualToString:@"stackerUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"stackerWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail stackerWarmingUp];
    }
    else if([self isEqualToString:@"standby"])
    {
          return [MSGraphPrinterProcessingStateDetail standby];
    }
    else if([self isEqualToString:@"staplerAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerAdded];
    }
    else if([self isEqualToString:@"staplerAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerAlmostEmpty];
    }
    else if([self isEqualToString:@"staplerAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerAlmostFull];
    }
    else if([self isEqualToString:@"staplerAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerAtLimit];
    }
    else if([self isEqualToString:@"staplerClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerClosed];
    }
    else if([self isEqualToString:@"staplerConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerConfigurationChange];
    }
    else if([self isEqualToString:@"staplerCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerCoverClosed];
    }
    else if([self isEqualToString:@"staplerCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerCoverOpen];
    }
    else if([self isEqualToString:@"staplerEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerEmpty];
    }
    else if([self isEqualToString:@"staplerFull"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerFull];
    }
    else if([self isEqualToString:@"staplerInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerInterlockClosed];
    }
    else if([self isEqualToString:@"staplerInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerInterlockOpen];
    }
    else if([self isEqualToString:@"staplerJam"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerJam];
    }
    else if([self isEqualToString:@"staplerLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerLifeAlmostOver];
    }
    else if([self isEqualToString:@"staplerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerLifeOver];
    }
    else if([self isEqualToString:@"staplerMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerMemoryExhausted];
    }
    else if([self isEqualToString:@"staplerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerMissing];
    }
    else if([self isEqualToString:@"staplerMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerMotorFailure];
    }
    else if([self isEqualToString:@"staplerNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerNearLimit];
    }
    else if([self isEqualToString:@"staplerOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerOffline];
    }
    else if([self isEqualToString:@"staplerOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerOpened];
    }
    else if([self isEqualToString:@"staplerOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerOverTemperature];
    }
    else if([self isEqualToString:@"staplerPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerPowerSaver];
    }
    else if([self isEqualToString:@"staplerRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerRecoverableFailure];
    }
    else if([self isEqualToString:@"staplerRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerRecoverableStorage];
    }
    else if([self isEqualToString:@"staplerRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerRemoved];
    }
    else if([self isEqualToString:@"staplerResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerResourceAdded];
    }
    else if([self isEqualToString:@"staplerResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerResourceRemoved];
    }
    else if([self isEqualToString:@"staplerThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerThermistorFailure];
    }
    else if([self isEqualToString:@"staplerTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerTimingFailure];
    }
    else if([self isEqualToString:@"staplerTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerTurnedOff];
    }
    else if([self isEqualToString:@"staplerTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerTurnedOn];
    }
    else if([self isEqualToString:@"staplerUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerUnderTemperature];
    }
    else if([self isEqualToString:@"staplerUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerUnrecoverableFailure];
    }
    else if([self isEqualToString:@"staplerUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"staplerWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail staplerWarmingUp];
    }
    else if([self isEqualToString:@"stitcherAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherAdded];
    }
    else if([self isEqualToString:@"stitcherAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherAlmostEmpty];
    }
    else if([self isEqualToString:@"stitcherAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherAlmostFull];
    }
    else if([self isEqualToString:@"stitcherAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherAtLimit];
    }
    else if([self isEqualToString:@"stitcherClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherClosed];
    }
    else if([self isEqualToString:@"stitcherConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherConfigurationChange];
    }
    else if([self isEqualToString:@"stitcherCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherCoverClosed];
    }
    else if([self isEqualToString:@"stitcherCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherCoverOpen];
    }
    else if([self isEqualToString:@"stitcherEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherEmpty];
    }
    else if([self isEqualToString:@"stitcherFull"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherFull];
    }
    else if([self isEqualToString:@"stitcherInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherInterlockClosed];
    }
    else if([self isEqualToString:@"stitcherInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherInterlockOpen];
    }
    else if([self isEqualToString:@"stitcherJam"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherJam];
    }
    else if([self isEqualToString:@"stitcherLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherLifeAlmostOver];
    }
    else if([self isEqualToString:@"stitcherLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherLifeOver];
    }
    else if([self isEqualToString:@"stitcherMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherMemoryExhausted];
    }
    else if([self isEqualToString:@"stitcherMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherMissing];
    }
    else if([self isEqualToString:@"stitcherMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherMotorFailure];
    }
    else if([self isEqualToString:@"stitcherNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherNearLimit];
    }
    else if([self isEqualToString:@"stitcherOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherOffline];
    }
    else if([self isEqualToString:@"stitcherOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherOpened];
    }
    else if([self isEqualToString:@"stitcherOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherOverTemperature];
    }
    else if([self isEqualToString:@"stitcherPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherPowerSaver];
    }
    else if([self isEqualToString:@"stitcherRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherRecoverableFailure];
    }
    else if([self isEqualToString:@"stitcherRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherRecoverableStorage];
    }
    else if([self isEqualToString:@"stitcherRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherRemoved];
    }
    else if([self isEqualToString:@"stitcherResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherResourceAdded];
    }
    else if([self isEqualToString:@"stitcherResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherResourceRemoved];
    }
    else if([self isEqualToString:@"stitcherThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherThermistorFailure];
    }
    else if([self isEqualToString:@"stitcherTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherTimingFailure];
    }
    else if([self isEqualToString:@"stitcherTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherTurnedOff];
    }
    else if([self isEqualToString:@"stitcherTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherTurnedOn];
    }
    else if([self isEqualToString:@"stitcherUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherUnderTemperature];
    }
    else if([self isEqualToString:@"stitcherUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherUnrecoverableFailure];
    }
    else if([self isEqualToString:@"stitcherUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"stitcherWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail stitcherWarmingUp];
    }
    else if([self isEqualToString:@"subunitAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitAdded];
    }
    else if([self isEqualToString:@"subunitAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitAlmostEmpty];
    }
    else if([self isEqualToString:@"subunitAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitAlmostFull];
    }
    else if([self isEqualToString:@"subunitAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitAtLimit];
    }
    else if([self isEqualToString:@"subunitClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitClosed];
    }
    else if([self isEqualToString:@"subunitCoolingDown"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitCoolingDown];
    }
    else if([self isEqualToString:@"subunitEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitEmpty];
    }
    else if([self isEqualToString:@"subunitFull"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitFull];
    }
    else if([self isEqualToString:@"subunitLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitLifeAlmostOver];
    }
    else if([self isEqualToString:@"subunitLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitLifeOver];
    }
    else if([self isEqualToString:@"subunitMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitMemoryExhausted];
    }
    else if([self isEqualToString:@"subunitMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitMissing];
    }
    else if([self isEqualToString:@"subunitMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitMotorFailure];
    }
    else if([self isEqualToString:@"subunitNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitNearLimit];
    }
    else if([self isEqualToString:@"subunitOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitOffline];
    }
    else if([self isEqualToString:@"subunitOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitOpened];
    }
    else if([self isEqualToString:@"subunitOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitOverTemperature];
    }
    else if([self isEqualToString:@"subunitPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitPowerSaver];
    }
    else if([self isEqualToString:@"subunitRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitRecoverableFailure];
    }
    else if([self isEqualToString:@"subunitRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitRecoverableStorage];
    }
    else if([self isEqualToString:@"subunitRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitRemoved];
    }
    else if([self isEqualToString:@"subunitResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitResourceAdded];
    }
    else if([self isEqualToString:@"subunitResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitResourceRemoved];
    }
    else if([self isEqualToString:@"subunitThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitThermistorFailure];
    }
    else if([self isEqualToString:@"subunitTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitTimingFailure];
    }
    else if([self isEqualToString:@"subunitTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitTurnedOff];
    }
    else if([self isEqualToString:@"subunitTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitTurnedOn];
    }
    else if([self isEqualToString:@"subunitUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitUnderTemperature];
    }
    else if([self isEqualToString:@"subunitUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitUnrecoverableFailure];
    }
    else if([self isEqualToString:@"subunitUnrecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitUnrecoverableStorage];
    }
    else if([self isEqualToString:@"subunitWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail subunitWarmingUp];
    }
    else if([self isEqualToString:@"suspend"])
    {
          return [MSGraphPrinterProcessingStateDetail suspend];
    }
    else if([self isEqualToString:@"testing"])
    {
          return [MSGraphPrinterProcessingStateDetail testing];
    }
    else if([self isEqualToString:@"trimmerAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerAdded];
    }
    else if([self isEqualToString:@"trimmerAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerAlmostEmpty];
    }
    else if([self isEqualToString:@"trimmerAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerAlmostFull];
    }
    else if([self isEqualToString:@"trimmerAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerAtLimit];
    }
    else if([self isEqualToString:@"trimmerClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerClosed];
    }
    else if([self isEqualToString:@"trimmerConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerConfigurationChange];
    }
    else if([self isEqualToString:@"trimmerCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerCoverClosed];
    }
    else if([self isEqualToString:@"trimmerCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerCoverOpen];
    }
    else if([self isEqualToString:@"trimmerEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerEmpty];
    }
    else if([self isEqualToString:@"trimmerFull"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerFull];
    }
    else if([self isEqualToString:@"trimmerInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerInterlockClosed];
    }
    else if([self isEqualToString:@"trimmerInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerInterlockOpen];
    }
    else if([self isEqualToString:@"trimmerJam"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerJam];
    }
    else if([self isEqualToString:@"trimmerLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerLifeAlmostOver];
    }
    else if([self isEqualToString:@"trimmerLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerLifeOver];
    }
    else if([self isEqualToString:@"trimmerMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerMemoryExhausted];
    }
    else if([self isEqualToString:@"trimmerMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerMissing];
    }
    else if([self isEqualToString:@"trimmerMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerMotorFailure];
    }
    else if([self isEqualToString:@"trimmerNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerNearLimit];
    }
    else if([self isEqualToString:@"trimmerOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerOffline];
    }
    else if([self isEqualToString:@"trimmerOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerOpened];
    }
    else if([self isEqualToString:@"trimmerOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerOverTemperature];
    }
    else if([self isEqualToString:@"trimmerPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerPowerSaver];
    }
    else if([self isEqualToString:@"trimmerRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerRecoverableFailure];
    }
    else if([self isEqualToString:@"trimmerRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerRecoverableStorage];
    }
    else if([self isEqualToString:@"trimmerRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerRemoved];
    }
    else if([self isEqualToString:@"trimmerResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerResourceAdded];
    }
    else if([self isEqualToString:@"trimmerResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerResourceRemoved];
    }
    else if([self isEqualToString:@"trimmerThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerThermistorFailure];
    }
    else if([self isEqualToString:@"trimmerTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerTimingFailure];
    }
    else if([self isEqualToString:@"trimmerTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerTurnedOff];
    }
    else if([self isEqualToString:@"trimmerTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerTurnedOn];
    }
    else if([self isEqualToString:@"trimmerUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerUnderTemperature];
    }
    else if([self isEqualToString:@"trimmerUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerUnrecoverableFailure];
    }
    else if([self isEqualToString:@"trimmerUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"trimmerWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail trimmerWarmingUp];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphPrinterProcessingStateDetail unknown];
    }
    else if([self isEqualToString:@"wrapperAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperAdded];
    }
    else if([self isEqualToString:@"wrapperAlmostEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperAlmostEmpty];
    }
    else if([self isEqualToString:@"wrapperAlmostFull"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperAlmostFull];
    }
    else if([self isEqualToString:@"wrapperAtLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperAtLimit];
    }
    else if([self isEqualToString:@"wrapperClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperClosed];
    }
    else if([self isEqualToString:@"wrapperConfigurationChange"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperConfigurationChange];
    }
    else if([self isEqualToString:@"wrapperCoverClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperCoverClosed];
    }
    else if([self isEqualToString:@"wrapperCoverOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperCoverOpen];
    }
    else if([self isEqualToString:@"wrapperEmpty"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperEmpty];
    }
    else if([self isEqualToString:@"wrapperFull"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperFull];
    }
    else if([self isEqualToString:@"wrapperInterlockClosed"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperInterlockClosed];
    }
    else if([self isEqualToString:@"wrapperInterlockOpen"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperInterlockOpen];
    }
    else if([self isEqualToString:@"wrapperJam"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperJam];
    }
    else if([self isEqualToString:@"wrapperLifeAlmostOver"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperLifeAlmostOver];
    }
    else if([self isEqualToString:@"wrapperLifeOver"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperLifeOver];
    }
    else if([self isEqualToString:@"wrapperMemoryExhausted"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperMemoryExhausted];
    }
    else if([self isEqualToString:@"wrapperMissing"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperMissing];
    }
    else if([self isEqualToString:@"wrapperMotorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperMotorFailure];
    }
    else if([self isEqualToString:@"wrapperNearLimit"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperNearLimit];
    }
    else if([self isEqualToString:@"wrapperOffline"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperOffline];
    }
    else if([self isEqualToString:@"wrapperOpened"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperOpened];
    }
    else if([self isEqualToString:@"wrapperOverTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperOverTemperature];
    }
    else if([self isEqualToString:@"wrapperPowerSaver"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperPowerSaver];
    }
    else if([self isEqualToString:@"wrapperRecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperRecoverableFailure];
    }
    else if([self isEqualToString:@"wrapperRecoverableStorage"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperRecoverableStorage];
    }
    else if([self isEqualToString:@"wrapperRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperRemoved];
    }
    else if([self isEqualToString:@"wrapperResourceAdded"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperResourceAdded];
    }
    else if([self isEqualToString:@"wrapperResourceRemoved"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperResourceRemoved];
    }
    else if([self isEqualToString:@"wrapperThermistorFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperThermistorFailure];
    }
    else if([self isEqualToString:@"wrapperTimingFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperTimingFailure];
    }
    else if([self isEqualToString:@"wrapperTurnedOff"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperTurnedOff];
    }
    else if([self isEqualToString:@"wrapperTurnedOn"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperTurnedOn];
    }
    else if([self isEqualToString:@"wrapperUnderTemperature"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperUnderTemperature];
    }
    else if([self isEqualToString:@"wrapperUnrecoverableFailure"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperUnrecoverableFailure];
    }
    else if([self isEqualToString:@"wrapperUnrecoverableStorageError"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperUnrecoverableStorageError];
    }
    else if([self isEqualToString:@"wrapperWarmingUp"])
    {
          return [MSGraphPrinterProcessingStateDetail wrapperWarmingUp];
    }
    else {
        return [MSGraphPrinterProcessingStateDetail UnknownEnumValue];
    }
}

@end
