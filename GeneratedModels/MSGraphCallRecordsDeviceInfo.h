// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphCallRecordsDeviceInfo : MSObject

@property (nullable, nonatomic, setter=setCaptureDeviceName:, getter=captureDeviceName) NSString* captureDeviceName;
@property (nullable, nonatomic, setter=setCaptureDeviceDriver:, getter=captureDeviceDriver) NSString* captureDeviceDriver;
@property (nullable, nonatomic, setter=setRenderDeviceName:, getter=renderDeviceName) NSString* renderDeviceName;
@property (nullable, nonatomic, setter=setRenderDeviceDriver:, getter=renderDeviceDriver) NSString* renderDeviceDriver;
@property (nonatomic, setter=setSentSignalLevel:, getter=sentSignalLevel) int32_t sentSignalLevel;
@property (nonatomic, setter=setReceivedSignalLevel:, getter=receivedSignalLevel) int32_t receivedSignalLevel;
@property (nonatomic, setter=setSentNoiseLevel:, getter=sentNoiseLevel) int32_t sentNoiseLevel;
@property (nonatomic, setter=setReceivedNoiseLevel:, getter=receivedNoiseLevel) int32_t receivedNoiseLevel;
@property (nonatomic, setter=setInitialSignalLevelRootMeanSquare:, getter=initialSignalLevelRootMeanSquare) double initialSignalLevelRootMeanSquare;
@property (nonatomic, setter=setCpuInsufficentEventRatio:, getter=cpuInsufficentEventRatio) double cpuInsufficentEventRatio;
@property (nonatomic, setter=setRenderNotFunctioningEventRatio:, getter=renderNotFunctioningEventRatio) double renderNotFunctioningEventRatio;
@property (nonatomic, setter=setCaptureNotFunctioningEventRatio:, getter=captureNotFunctioningEventRatio) double captureNotFunctioningEventRatio;
@property (nonatomic, setter=setDeviceGlitchEventRatio:, getter=deviceGlitchEventRatio) double deviceGlitchEventRatio;
@property (nonatomic, setter=setLowSpeechToNoiseEventRatio:, getter=lowSpeechToNoiseEventRatio) double lowSpeechToNoiseEventRatio;
@property (nonatomic, setter=setLowSpeechLevelEventRatio:, getter=lowSpeechLevelEventRatio) double lowSpeechLevelEventRatio;
@property (nonatomic, setter=setDeviceClippingEventRatio:, getter=deviceClippingEventRatio) double deviceClippingEventRatio;
@property (nonatomic, setter=setHowlingEventCount:, getter=howlingEventCount) int32_t howlingEventCount;
@property (nonatomic, setter=setRenderZeroVolumeEventRatio:, getter=renderZeroVolumeEventRatio) double renderZeroVolumeEventRatio;
@property (nonatomic, setter=setRenderMuteEventRatio:, getter=renderMuteEventRatio) double renderMuteEventRatio;
@property (nonatomic, setter=setMicGlitchRate:, getter=micGlitchRate) double micGlitchRate;
@property (nonatomic, setter=setSpeakerGlitchRate:, getter=speakerGlitchRate) double speakerGlitchRate;

@end
