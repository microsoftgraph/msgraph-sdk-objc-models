// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsDeviceInfo()
{
    NSString* _captureDeviceDriver;
    NSString* _captureDeviceName;
    double _captureNotFunctioningEventRatio;
    double _cpuInsufficentEventRatio;
    double _deviceClippingEventRatio;
    double _deviceGlitchEventRatio;
    int32_t _howlingEventCount;
    double _initialSignalLevelRootMeanSquare;
    double _lowSpeechLevelEventRatio;
    double _lowSpeechToNoiseEventRatio;
    double _micGlitchRate;
    int32_t _receivedNoiseLevel;
    int32_t _receivedSignalLevel;
    NSString* _renderDeviceDriver;
    NSString* _renderDeviceName;
    double _renderMuteEventRatio;
    double _renderNotFunctioningEventRatio;
    double _renderZeroVolumeEventRatio;
    int32_t _sentNoiseLevel;
    int32_t _sentSignalLevel;
    double _speakerGlitchRate;
}
@end

@implementation MSGraphCallRecordsDeviceInfo

- (NSString*) captureDeviceDriver
{
    if([[NSNull null] isEqual:self.dictionary[@"captureDeviceDriver"]])
    {
        return nil;
    }   
    return self.dictionary[@"captureDeviceDriver"];
}

- (void) setCaptureDeviceDriver: (NSString*) val
{
    self.dictionary[@"captureDeviceDriver"] = val;
}

- (NSString*) captureDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"captureDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"captureDeviceName"];
}

- (void) setCaptureDeviceName: (NSString*) val
{
    self.dictionary[@"captureDeviceName"] = val;
}

- (double) captureNotFunctioningEventRatio
{
    _captureNotFunctioningEventRatio = [self.dictionary[@"captureNotFunctioningEventRatio"] floatValue];
    return _captureNotFunctioningEventRatio;
}

- (void) setCaptureNotFunctioningEventRatio: (double) val
{
    _captureNotFunctioningEventRatio = val;
    self.dictionary[@"captureNotFunctioningEventRatio"] = @(val);
}

- (double) cpuInsufficentEventRatio
{
    _cpuInsufficentEventRatio = [self.dictionary[@"cpuInsufficentEventRatio"] floatValue];
    return _cpuInsufficentEventRatio;
}

- (void) setCpuInsufficentEventRatio: (double) val
{
    _cpuInsufficentEventRatio = val;
    self.dictionary[@"cpuInsufficentEventRatio"] = @(val);
}

- (double) deviceClippingEventRatio
{
    _deviceClippingEventRatio = [self.dictionary[@"deviceClippingEventRatio"] floatValue];
    return _deviceClippingEventRatio;
}

- (void) setDeviceClippingEventRatio: (double) val
{
    _deviceClippingEventRatio = val;
    self.dictionary[@"deviceClippingEventRatio"] = @(val);
}

- (double) deviceGlitchEventRatio
{
    _deviceGlitchEventRatio = [self.dictionary[@"deviceGlitchEventRatio"] floatValue];
    return _deviceGlitchEventRatio;
}

- (void) setDeviceGlitchEventRatio: (double) val
{
    _deviceGlitchEventRatio = val;
    self.dictionary[@"deviceGlitchEventRatio"] = @(val);
}

- (int32_t) howlingEventCount
{
    _howlingEventCount = [self.dictionary[@"howlingEventCount"] intValue];
    return _howlingEventCount;
}

- (void) setHowlingEventCount: (int32_t) val
{
    _howlingEventCount = val;
    self.dictionary[@"howlingEventCount"] = @(val);
}

- (double) initialSignalLevelRootMeanSquare
{
    _initialSignalLevelRootMeanSquare = [self.dictionary[@"initialSignalLevelRootMeanSquare"] floatValue];
    return _initialSignalLevelRootMeanSquare;
}

- (void) setInitialSignalLevelRootMeanSquare: (double) val
{
    _initialSignalLevelRootMeanSquare = val;
    self.dictionary[@"initialSignalLevelRootMeanSquare"] = @(val);
}

- (double) lowSpeechLevelEventRatio
{
    _lowSpeechLevelEventRatio = [self.dictionary[@"lowSpeechLevelEventRatio"] floatValue];
    return _lowSpeechLevelEventRatio;
}

- (void) setLowSpeechLevelEventRatio: (double) val
{
    _lowSpeechLevelEventRatio = val;
    self.dictionary[@"lowSpeechLevelEventRatio"] = @(val);
}

- (double) lowSpeechToNoiseEventRatio
{
    _lowSpeechToNoiseEventRatio = [self.dictionary[@"lowSpeechToNoiseEventRatio"] floatValue];
    return _lowSpeechToNoiseEventRatio;
}

- (void) setLowSpeechToNoiseEventRatio: (double) val
{
    _lowSpeechToNoiseEventRatio = val;
    self.dictionary[@"lowSpeechToNoiseEventRatio"] = @(val);
}

- (double) micGlitchRate
{
    _micGlitchRate = [self.dictionary[@"micGlitchRate"] floatValue];
    return _micGlitchRate;
}

- (void) setMicGlitchRate: (double) val
{
    _micGlitchRate = val;
    self.dictionary[@"micGlitchRate"] = @(val);
}

- (int32_t) receivedNoiseLevel
{
    _receivedNoiseLevel = [self.dictionary[@"receivedNoiseLevel"] intValue];
    return _receivedNoiseLevel;
}

- (void) setReceivedNoiseLevel: (int32_t) val
{
    _receivedNoiseLevel = val;
    self.dictionary[@"receivedNoiseLevel"] = @(val);
}

- (int32_t) receivedSignalLevel
{
    _receivedSignalLevel = [self.dictionary[@"receivedSignalLevel"] intValue];
    return _receivedSignalLevel;
}

- (void) setReceivedSignalLevel: (int32_t) val
{
    _receivedSignalLevel = val;
    self.dictionary[@"receivedSignalLevel"] = @(val);
}

- (NSString*) renderDeviceDriver
{
    if([[NSNull null] isEqual:self.dictionary[@"renderDeviceDriver"]])
    {
        return nil;
    }   
    return self.dictionary[@"renderDeviceDriver"];
}

- (void) setRenderDeviceDriver: (NSString*) val
{
    self.dictionary[@"renderDeviceDriver"] = val;
}

- (NSString*) renderDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"renderDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"renderDeviceName"];
}

- (void) setRenderDeviceName: (NSString*) val
{
    self.dictionary[@"renderDeviceName"] = val;
}

- (double) renderMuteEventRatio
{
    _renderMuteEventRatio = [self.dictionary[@"renderMuteEventRatio"] floatValue];
    return _renderMuteEventRatio;
}

- (void) setRenderMuteEventRatio: (double) val
{
    _renderMuteEventRatio = val;
    self.dictionary[@"renderMuteEventRatio"] = @(val);
}

- (double) renderNotFunctioningEventRatio
{
    _renderNotFunctioningEventRatio = [self.dictionary[@"renderNotFunctioningEventRatio"] floatValue];
    return _renderNotFunctioningEventRatio;
}

- (void) setRenderNotFunctioningEventRatio: (double) val
{
    _renderNotFunctioningEventRatio = val;
    self.dictionary[@"renderNotFunctioningEventRatio"] = @(val);
}

- (double) renderZeroVolumeEventRatio
{
    _renderZeroVolumeEventRatio = [self.dictionary[@"renderZeroVolumeEventRatio"] floatValue];
    return _renderZeroVolumeEventRatio;
}

- (void) setRenderZeroVolumeEventRatio: (double) val
{
    _renderZeroVolumeEventRatio = val;
    self.dictionary[@"renderZeroVolumeEventRatio"] = @(val);
}

- (int32_t) sentNoiseLevel
{
    _sentNoiseLevel = [self.dictionary[@"sentNoiseLevel"] intValue];
    return _sentNoiseLevel;
}

- (void) setSentNoiseLevel: (int32_t) val
{
    _sentNoiseLevel = val;
    self.dictionary[@"sentNoiseLevel"] = @(val);
}

- (int32_t) sentSignalLevel
{
    _sentSignalLevel = [self.dictionary[@"sentSignalLevel"] intValue];
    return _sentSignalLevel;
}

- (void) setSentSignalLevel: (int32_t) val
{
    _sentSignalLevel = val;
    self.dictionary[@"sentSignalLevel"] = @(val);
}

- (double) speakerGlitchRate
{
    _speakerGlitchRate = [self.dictionary[@"speakerGlitchRate"] floatValue];
    return _speakerGlitchRate;
}

- (void) setSpeakerGlitchRate: (double) val
{
    _speakerGlitchRate = val;
    self.dictionary[@"speakerGlitchRate"] = @(val);
}

@end
