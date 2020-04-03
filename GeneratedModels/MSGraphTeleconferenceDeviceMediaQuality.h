// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 


#import "MSObject.h"

@interface MSGraphTeleconferenceDeviceMediaQuality : MSObject

@property (nonatomic, setter=setChannelIndex:, getter=channelIndex) int32_t channelIndex;
@property (nullable, nonatomic, setter=setMediaDuration:, getter=mediaDuration) MSDuration* mediaDuration;
@property (nonatomic, setter=setNetworkLinkSpeedInBytes:, getter=networkLinkSpeedInBytes) int64_t networkLinkSpeedInBytes;
@property (nullable, nonatomic, setter=setLocalIPAddress:, getter=localIPAddress) NSString* localIPAddress;
@property (nonatomic, setter=setLocalPort:, getter=localPort) int32_t localPort;
@property (nullable, nonatomic, setter=setRemoteIPAddress:, getter=remoteIPAddress) NSString* remoteIPAddress;
@property (nonatomic, setter=setRemotePort:, getter=remotePort) int32_t remotePort;
@property (nonatomic, setter=setInboundPackets:, getter=inboundPackets) int64_t inboundPackets;
@property (nonatomic, setter=setOutboundPackets:, getter=outboundPackets) int64_t outboundPackets;
@property (nonatomic, setter=setAverageInboundPacketLossRateInPercentage:, getter=averageInboundPacketLossRateInPercentage) double averageInboundPacketLossRateInPercentage;
@property (nonatomic, setter=setAverageOutboundPacketLossRateInPercentage:, getter=averageOutboundPacketLossRateInPercentage) double averageOutboundPacketLossRateInPercentage;
@property (nonatomic, setter=setMaximumInboundPacketLossRateInPercentage:, getter=maximumInboundPacketLossRateInPercentage) double maximumInboundPacketLossRateInPercentage;
@property (nonatomic, setter=setMaximumOutboundPacketLossRateInPercentage:, getter=maximumOutboundPacketLossRateInPercentage) double maximumOutboundPacketLossRateInPercentage;
@property (nullable, nonatomic, setter=setAverageInboundRoundTripDelay:, getter=averageInboundRoundTripDelay) MSDuration* averageInboundRoundTripDelay;
@property (nullable, nonatomic, setter=setAverageOutboundRoundTripDelay:, getter=averageOutboundRoundTripDelay) MSDuration* averageOutboundRoundTripDelay;
@property (nullable, nonatomic, setter=setMaximumInboundRoundTripDelay:, getter=maximumInboundRoundTripDelay) MSDuration* maximumInboundRoundTripDelay;
@property (nullable, nonatomic, setter=setMaximumOutboundRoundTripDelay:, getter=maximumOutboundRoundTripDelay) MSDuration* maximumOutboundRoundTripDelay;
@property (nullable, nonatomic, setter=setAverageInboundJitter:, getter=averageInboundJitter) MSDuration* averageInboundJitter;
@property (nullable, nonatomic, setter=setAverageOutboundJitter:, getter=averageOutboundJitter) MSDuration* averageOutboundJitter;
@property (nullable, nonatomic, setter=setMaximumInboundJitter:, getter=maximumInboundJitter) MSDuration* maximumInboundJitter;
@property (nullable, nonatomic, setter=setMaximumOutboundJitter:, getter=maximumOutboundJitter) MSDuration* maximumOutboundJitter;

@end
