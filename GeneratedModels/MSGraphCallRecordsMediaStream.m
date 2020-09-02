// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsMediaStream()
{
    double _averageAudioDegradation;
    MSDuration* _averageAudioNetworkJitter;
    int64_t _averageBandwidthEstimate;
    MSDuration* _averageJitter;
    double _averagePacketLossRate;
    double _averageRatioOfConcealedSamples;
    double _averageReceivedFrameRate;
    MSDuration* _averageRoundTripTime;
    double _averageVideoFrameLossPercentage;
    double _averageVideoFrameRate;
    double _averageVideoPacketLossRate;
    NSDate* _endDateTime;
    double _lowFrameRateRatio;
    double _lowVideoProcessingCapabilityRatio;
    MSDuration* _maxAudioNetworkJitter;
    MSDuration* _maxJitter;
    double _maxPacketLossRate;
    double _maxRatioOfConcealedSamples;
    MSDuration* _maxRoundTripTime;
    int64_t _packetUtilization;
    double _postForwardErrorCorrectionPacketLossRate;
    NSDate* _startDateTime;
    MSGraphCallRecordsMediaStreamDirection* _streamDirection;
    NSString* _streamId;
    BOOL _wasMediaBypassed;
}
@end

@implementation MSGraphCallRecordsMediaStream

- (double) averageAudioDegradation
{
    _averageAudioDegradation = [self.dictionary[@"averageAudioDegradation"] floatValue];
    return _averageAudioDegradation;
}

- (void) setAverageAudioDegradation: (double) val
{
    _averageAudioDegradation = val;
    self.dictionary[@"averageAudioDegradation"] = @(val);
}

- (MSDuration*) averageAudioNetworkJitter
{
    if(!_averageAudioNetworkJitter){
        _averageAudioNetworkJitter = [MSDuration ms_durationFromString: self.dictionary[@"averageAudioNetworkJitter"]];
    }
    return _averageAudioNetworkJitter;
}

- (void) setAverageAudioNetworkJitter: (MSDuration*) val
{
    _averageAudioNetworkJitter = val;
    self.dictionary[@"averageAudioNetworkJitter"] = val.durationString;
}

- (int64_t) averageBandwidthEstimate
{
    _averageBandwidthEstimate = [self.dictionary[@"averageBandwidthEstimate"] longLongValue];
    return _averageBandwidthEstimate;
}

- (void) setAverageBandwidthEstimate: (int64_t) val
{
    _averageBandwidthEstimate = val;
    self.dictionary[@"averageBandwidthEstimate"] = @(val);
}

- (MSDuration*) averageJitter
{
    if(!_averageJitter){
        _averageJitter = [MSDuration ms_durationFromString: self.dictionary[@"averageJitter"]];
    }
    return _averageJitter;
}

- (void) setAverageJitter: (MSDuration*) val
{
    _averageJitter = val;
    self.dictionary[@"averageJitter"] = val.durationString;
}

- (double) averagePacketLossRate
{
    _averagePacketLossRate = [self.dictionary[@"averagePacketLossRate"] floatValue];
    return _averagePacketLossRate;
}

- (void) setAveragePacketLossRate: (double) val
{
    _averagePacketLossRate = val;
    self.dictionary[@"averagePacketLossRate"] = @(val);
}

- (double) averageRatioOfConcealedSamples
{
    _averageRatioOfConcealedSamples = [self.dictionary[@"averageRatioOfConcealedSamples"] floatValue];
    return _averageRatioOfConcealedSamples;
}

- (void) setAverageRatioOfConcealedSamples: (double) val
{
    _averageRatioOfConcealedSamples = val;
    self.dictionary[@"averageRatioOfConcealedSamples"] = @(val);
}

- (double) averageReceivedFrameRate
{
    _averageReceivedFrameRate = [self.dictionary[@"averageReceivedFrameRate"] floatValue];
    return _averageReceivedFrameRate;
}

- (void) setAverageReceivedFrameRate: (double) val
{
    _averageReceivedFrameRate = val;
    self.dictionary[@"averageReceivedFrameRate"] = @(val);
}

- (MSDuration*) averageRoundTripTime
{
    if(!_averageRoundTripTime){
        _averageRoundTripTime = [MSDuration ms_durationFromString: self.dictionary[@"averageRoundTripTime"]];
    }
    return _averageRoundTripTime;
}

- (void) setAverageRoundTripTime: (MSDuration*) val
{
    _averageRoundTripTime = val;
    self.dictionary[@"averageRoundTripTime"] = val.durationString;
}

- (double) averageVideoFrameLossPercentage
{
    _averageVideoFrameLossPercentage = [self.dictionary[@"averageVideoFrameLossPercentage"] floatValue];
    return _averageVideoFrameLossPercentage;
}

- (void) setAverageVideoFrameLossPercentage: (double) val
{
    _averageVideoFrameLossPercentage = val;
    self.dictionary[@"averageVideoFrameLossPercentage"] = @(val);
}

- (double) averageVideoFrameRate
{
    _averageVideoFrameRate = [self.dictionary[@"averageVideoFrameRate"] floatValue];
    return _averageVideoFrameRate;
}

- (void) setAverageVideoFrameRate: (double) val
{
    _averageVideoFrameRate = val;
    self.dictionary[@"averageVideoFrameRate"] = @(val);
}

- (double) averageVideoPacketLossRate
{
    _averageVideoPacketLossRate = [self.dictionary[@"averageVideoPacketLossRate"] floatValue];
    return _averageVideoPacketLossRate;
}

- (void) setAverageVideoPacketLossRate: (double) val
{
    _averageVideoPacketLossRate = val;
    self.dictionary[@"averageVideoPacketLossRate"] = @(val);
}

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (double) lowFrameRateRatio
{
    _lowFrameRateRatio = [self.dictionary[@"lowFrameRateRatio"] floatValue];
    return _lowFrameRateRatio;
}

- (void) setLowFrameRateRatio: (double) val
{
    _lowFrameRateRatio = val;
    self.dictionary[@"lowFrameRateRatio"] = @(val);
}

- (double) lowVideoProcessingCapabilityRatio
{
    _lowVideoProcessingCapabilityRatio = [self.dictionary[@"lowVideoProcessingCapabilityRatio"] floatValue];
    return _lowVideoProcessingCapabilityRatio;
}

- (void) setLowVideoProcessingCapabilityRatio: (double) val
{
    _lowVideoProcessingCapabilityRatio = val;
    self.dictionary[@"lowVideoProcessingCapabilityRatio"] = @(val);
}

- (MSDuration*) maxAudioNetworkJitter
{
    if(!_maxAudioNetworkJitter){
        _maxAudioNetworkJitter = [MSDuration ms_durationFromString: self.dictionary[@"maxAudioNetworkJitter"]];
    }
    return _maxAudioNetworkJitter;
}

- (void) setMaxAudioNetworkJitter: (MSDuration*) val
{
    _maxAudioNetworkJitter = val;
    self.dictionary[@"maxAudioNetworkJitter"] = val.durationString;
}

- (MSDuration*) maxJitter
{
    if(!_maxJitter){
        _maxJitter = [MSDuration ms_durationFromString: self.dictionary[@"maxJitter"]];
    }
    return _maxJitter;
}

- (void) setMaxJitter: (MSDuration*) val
{
    _maxJitter = val;
    self.dictionary[@"maxJitter"] = val.durationString;
}

- (double) maxPacketLossRate
{
    _maxPacketLossRate = [self.dictionary[@"maxPacketLossRate"] floatValue];
    return _maxPacketLossRate;
}

- (void) setMaxPacketLossRate: (double) val
{
    _maxPacketLossRate = val;
    self.dictionary[@"maxPacketLossRate"] = @(val);
}

- (double) maxRatioOfConcealedSamples
{
    _maxRatioOfConcealedSamples = [self.dictionary[@"maxRatioOfConcealedSamples"] floatValue];
    return _maxRatioOfConcealedSamples;
}

- (void) setMaxRatioOfConcealedSamples: (double) val
{
    _maxRatioOfConcealedSamples = val;
    self.dictionary[@"maxRatioOfConcealedSamples"] = @(val);
}

- (MSDuration*) maxRoundTripTime
{
    if(!_maxRoundTripTime){
        _maxRoundTripTime = [MSDuration ms_durationFromString: self.dictionary[@"maxRoundTripTime"]];
    }
    return _maxRoundTripTime;
}

- (void) setMaxRoundTripTime: (MSDuration*) val
{
    _maxRoundTripTime = val;
    self.dictionary[@"maxRoundTripTime"] = val.durationString;
}

- (int64_t) packetUtilization
{
    _packetUtilization = [self.dictionary[@"packetUtilization"] longLongValue];
    return _packetUtilization;
}

- (void) setPacketUtilization: (int64_t) val
{
    _packetUtilization = val;
    self.dictionary[@"packetUtilization"] = @(val);
}

- (double) postForwardErrorCorrectionPacketLossRate
{
    _postForwardErrorCorrectionPacketLossRate = [self.dictionary[@"postForwardErrorCorrectionPacketLossRate"] floatValue];
    return _postForwardErrorCorrectionPacketLossRate;
}

- (void) setPostForwardErrorCorrectionPacketLossRate: (double) val
{
    _postForwardErrorCorrectionPacketLossRate = val;
    self.dictionary[@"postForwardErrorCorrectionPacketLossRate"] = @(val);
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (MSGraphCallRecordsMediaStreamDirection*) streamDirection
{
    if(!_streamDirection){
        _streamDirection = [self.dictionary[@"streamDirection"] toMSGraphCallRecordsMediaStreamDirection];
    }
    return _streamDirection;
}

- (void) setStreamDirection: (MSGraphCallRecordsMediaStreamDirection*) val
{
    _streamDirection = val;
    self.dictionary[@"streamDirection"] = val;
}

- (NSString*) streamId
{
    if([[NSNull null] isEqual:self.dictionary[@"streamId"]])
    {
        return nil;
    }   
    return self.dictionary[@"streamId"];
}

- (void) setStreamId: (NSString*) val
{
    self.dictionary[@"streamId"] = val;
}

- (BOOL) wasMediaBypassed
{
    _wasMediaBypassed = [self.dictionary[@"wasMediaBypassed"] boolValue];
    return _wasMediaBypassed;
}

- (void) setWasMediaBypassed: (BOOL) val
{
    _wasMediaBypassed = val;
    self.dictionary[@"wasMediaBypassed"] = @(val);
}

@end
