// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeleconferenceDeviceMediaQuality()
{
    MSDuration* _averageInboundJitter;
    double _averageInboundPacketLossRateInPercentage;
    MSDuration* _averageInboundRoundTripDelay;
    MSDuration* _averageOutboundJitter;
    double _averageOutboundPacketLossRateInPercentage;
    MSDuration* _averageOutboundRoundTripDelay;
    int32_t _channelIndex;
    int64_t _inboundPackets;
    NSString* _localIPAddress;
    int32_t _localPort;
    MSDuration* _maximumInboundJitter;
    double _maximumInboundPacketLossRateInPercentage;
    MSDuration* _maximumInboundRoundTripDelay;
    MSDuration* _maximumOutboundJitter;
    double _maximumOutboundPacketLossRateInPercentage;
    MSDuration* _maximumOutboundRoundTripDelay;
    MSDuration* _mediaDuration;
    int64_t _networkLinkSpeedInBytes;
    int64_t _outboundPackets;
    NSString* _remoteIPAddress;
    int32_t _remotePort;
}
@end

@implementation MSGraphTeleconferenceDeviceMediaQuality

- (MSDuration*) averageInboundJitter
{
    if(!_averageInboundJitter){
        _averageInboundJitter = [MSDuration ms_durationFromString: self.dictionary[@"averageInboundJitter"]];
    }
    return _averageInboundJitter;
}

- (void) setAverageInboundJitter: (MSDuration*) val
{
    _averageInboundJitter = val;
    self.dictionary[@"averageInboundJitter"] = val.durationString;
}

- (double) averageInboundPacketLossRateInPercentage
{
    _averageInboundPacketLossRateInPercentage = [self.dictionary[@"averageInboundPacketLossRateInPercentage"] floatValue];
    return _averageInboundPacketLossRateInPercentage;
}

- (void) setAverageInboundPacketLossRateInPercentage: (double) val
{
    _averageInboundPacketLossRateInPercentage = val;
    self.dictionary[@"averageInboundPacketLossRateInPercentage"] = @(val);
}

- (MSDuration*) averageInboundRoundTripDelay
{
    if(!_averageInboundRoundTripDelay){
        _averageInboundRoundTripDelay = [MSDuration ms_durationFromString: self.dictionary[@"averageInboundRoundTripDelay"]];
    }
    return _averageInboundRoundTripDelay;
}

- (void) setAverageInboundRoundTripDelay: (MSDuration*) val
{
    _averageInboundRoundTripDelay = val;
    self.dictionary[@"averageInboundRoundTripDelay"] = val.durationString;
}

- (MSDuration*) averageOutboundJitter
{
    if(!_averageOutboundJitter){
        _averageOutboundJitter = [MSDuration ms_durationFromString: self.dictionary[@"averageOutboundJitter"]];
    }
    return _averageOutboundJitter;
}

- (void) setAverageOutboundJitter: (MSDuration*) val
{
    _averageOutboundJitter = val;
    self.dictionary[@"averageOutboundJitter"] = val.durationString;
}

- (double) averageOutboundPacketLossRateInPercentage
{
    _averageOutboundPacketLossRateInPercentage = [self.dictionary[@"averageOutboundPacketLossRateInPercentage"] floatValue];
    return _averageOutboundPacketLossRateInPercentage;
}

- (void) setAverageOutboundPacketLossRateInPercentage: (double) val
{
    _averageOutboundPacketLossRateInPercentage = val;
    self.dictionary[@"averageOutboundPacketLossRateInPercentage"] = @(val);
}

- (MSDuration*) averageOutboundRoundTripDelay
{
    if(!_averageOutboundRoundTripDelay){
        _averageOutboundRoundTripDelay = [MSDuration ms_durationFromString: self.dictionary[@"averageOutboundRoundTripDelay"]];
    }
    return _averageOutboundRoundTripDelay;
}

- (void) setAverageOutboundRoundTripDelay: (MSDuration*) val
{
    _averageOutboundRoundTripDelay = val;
    self.dictionary[@"averageOutboundRoundTripDelay"] = val.durationString;
}

- (int32_t) channelIndex
{
    _channelIndex = [self.dictionary[@"channelIndex"] intValue];
    return _channelIndex;
}

- (void) setChannelIndex: (int32_t) val
{
    _channelIndex = val;
    self.dictionary[@"channelIndex"] = @(val);
}

- (int64_t) inboundPackets
{
    _inboundPackets = [self.dictionary[@"inboundPackets"] longLongValue];
    return _inboundPackets;
}

- (void) setInboundPackets: (int64_t) val
{
    _inboundPackets = val;
    self.dictionary[@"inboundPackets"] = @(val);
}

- (NSString*) localIPAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"localIPAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"localIPAddress"];
}

- (void) setLocalIPAddress: (NSString*) val
{
    self.dictionary[@"localIPAddress"] = val;
}

- (int32_t) localPort
{
    _localPort = [self.dictionary[@"localPort"] intValue];
    return _localPort;
}

- (void) setLocalPort: (int32_t) val
{
    _localPort = val;
    self.dictionary[@"localPort"] = @(val);
}

- (MSDuration*) maximumInboundJitter
{
    if(!_maximumInboundJitter){
        _maximumInboundJitter = [MSDuration ms_durationFromString: self.dictionary[@"maximumInboundJitter"]];
    }
    return _maximumInboundJitter;
}

- (void) setMaximumInboundJitter: (MSDuration*) val
{
    _maximumInboundJitter = val;
    self.dictionary[@"maximumInboundJitter"] = val.durationString;
}

- (double) maximumInboundPacketLossRateInPercentage
{
    _maximumInboundPacketLossRateInPercentage = [self.dictionary[@"maximumInboundPacketLossRateInPercentage"] floatValue];
    return _maximumInboundPacketLossRateInPercentage;
}

- (void) setMaximumInboundPacketLossRateInPercentage: (double) val
{
    _maximumInboundPacketLossRateInPercentage = val;
    self.dictionary[@"maximumInboundPacketLossRateInPercentage"] = @(val);
}

- (MSDuration*) maximumInboundRoundTripDelay
{
    if(!_maximumInboundRoundTripDelay){
        _maximumInboundRoundTripDelay = [MSDuration ms_durationFromString: self.dictionary[@"maximumInboundRoundTripDelay"]];
    }
    return _maximumInboundRoundTripDelay;
}

- (void) setMaximumInboundRoundTripDelay: (MSDuration*) val
{
    _maximumInboundRoundTripDelay = val;
    self.dictionary[@"maximumInboundRoundTripDelay"] = val.durationString;
}

- (MSDuration*) maximumOutboundJitter
{
    if(!_maximumOutboundJitter){
        _maximumOutboundJitter = [MSDuration ms_durationFromString: self.dictionary[@"maximumOutboundJitter"]];
    }
    return _maximumOutboundJitter;
}

- (void) setMaximumOutboundJitter: (MSDuration*) val
{
    _maximumOutboundJitter = val;
    self.dictionary[@"maximumOutboundJitter"] = val.durationString;
}

- (double) maximumOutboundPacketLossRateInPercentage
{
    _maximumOutboundPacketLossRateInPercentage = [self.dictionary[@"maximumOutboundPacketLossRateInPercentage"] floatValue];
    return _maximumOutboundPacketLossRateInPercentage;
}

- (void) setMaximumOutboundPacketLossRateInPercentage: (double) val
{
    _maximumOutboundPacketLossRateInPercentage = val;
    self.dictionary[@"maximumOutboundPacketLossRateInPercentage"] = @(val);
}

- (MSDuration*) maximumOutboundRoundTripDelay
{
    if(!_maximumOutboundRoundTripDelay){
        _maximumOutboundRoundTripDelay = [MSDuration ms_durationFromString: self.dictionary[@"maximumOutboundRoundTripDelay"]];
    }
    return _maximumOutboundRoundTripDelay;
}

- (void) setMaximumOutboundRoundTripDelay: (MSDuration*) val
{
    _maximumOutboundRoundTripDelay = val;
    self.dictionary[@"maximumOutboundRoundTripDelay"] = val.durationString;
}

- (MSDuration*) mediaDuration
{
    if(!_mediaDuration){
        _mediaDuration = [MSDuration ms_durationFromString: self.dictionary[@"mediaDuration"]];
    }
    return _mediaDuration;
}

- (void) setMediaDuration: (MSDuration*) val
{
    _mediaDuration = val;
    self.dictionary[@"mediaDuration"] = val.durationString;
}

- (int64_t) networkLinkSpeedInBytes
{
    _networkLinkSpeedInBytes = [self.dictionary[@"networkLinkSpeedInBytes"] longLongValue];
    return _networkLinkSpeedInBytes;
}

- (void) setNetworkLinkSpeedInBytes: (int64_t) val
{
    _networkLinkSpeedInBytes = val;
    self.dictionary[@"networkLinkSpeedInBytes"] = @(val);
}

- (int64_t) outboundPackets
{
    _outboundPackets = [self.dictionary[@"outboundPackets"] longLongValue];
    return _outboundPackets;
}

- (void) setOutboundPackets: (int64_t) val
{
    _outboundPackets = val;
    self.dictionary[@"outboundPackets"] = @(val);
}

- (NSString*) remoteIPAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"remoteIPAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"remoteIPAddress"];
}

- (void) setRemoteIPAddress: (NSString*) val
{
    self.dictionary[@"remoteIPAddress"] = val;
}

- (int32_t) remotePort
{
    _remotePort = [self.dictionary[@"remotePort"] intValue];
    return _remotePort;
}

- (void) setRemotePort: (int32_t) val
{
    _remotePort = val;
    self.dictionary[@"remotePort"] = @(val);
}

@end
