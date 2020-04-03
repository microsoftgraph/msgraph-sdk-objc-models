// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeleconferenceDeviceMediaQuality()
{
    int32_t _channelIndex;
    MSDuration* _mediaDuration;
    int64_t _networkLinkSpeedInBytes;
    NSString* _localIPAddress;
    int32_t _localPort;
    NSString* _remoteIPAddress;
    int32_t _remotePort;
    int64_t _inboundPackets;
    int64_t _outboundPackets;
    double _averageInboundPacketLossRateInPercentage;
    double _averageOutboundPacketLossRateInPercentage;
    double _maximumInboundPacketLossRateInPercentage;
    double _maximumOutboundPacketLossRateInPercentage;
    MSDuration* _averageInboundRoundTripDelay;
    MSDuration* _averageOutboundRoundTripDelay;
    MSDuration* _maximumInboundRoundTripDelay;
    MSDuration* _maximumOutboundRoundTripDelay;
    MSDuration* _averageInboundJitter;
    MSDuration* _averageOutboundJitter;
    MSDuration* _maximumInboundJitter;
    MSDuration* _maximumOutboundJitter;
}
@end

@implementation MSGraphTeleconferenceDeviceMediaQuality

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

@end
