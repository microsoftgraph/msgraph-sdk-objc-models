// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 
#import "MSGraphCallRecordsMediaStreamDirection.h"


#import "MSObject.h"

@interface MSGraphCallRecordsMediaStream : MSObject

@property (nonatomic, setter=setAverageAudioDegradation:, getter=averageAudioDegradation) double averageAudioDegradation;
@property (nullable, nonatomic, setter=setAverageAudioNetworkJitter:, getter=averageAudioNetworkJitter) MSDuration* averageAudioNetworkJitter;
@property (nonatomic, setter=setAverageBandwidthEstimate:, getter=averageBandwidthEstimate) int64_t averageBandwidthEstimate;
@property (nullable, nonatomic, setter=setAverageJitter:, getter=averageJitter) MSDuration* averageJitter;
@property (nonatomic, setter=setAveragePacketLossRate:, getter=averagePacketLossRate) double averagePacketLossRate;
@property (nonatomic, setter=setAverageRatioOfConcealedSamples:, getter=averageRatioOfConcealedSamples) double averageRatioOfConcealedSamples;
@property (nonatomic, setter=setAverageReceivedFrameRate:, getter=averageReceivedFrameRate) double averageReceivedFrameRate;
@property (nullable, nonatomic, setter=setAverageRoundTripTime:, getter=averageRoundTripTime) MSDuration* averageRoundTripTime;
@property (nonatomic, setter=setAverageVideoFrameLossPercentage:, getter=averageVideoFrameLossPercentage) double averageVideoFrameLossPercentage;
@property (nonatomic, setter=setAverageVideoFrameRate:, getter=averageVideoFrameRate) double averageVideoFrameRate;
@property (nonatomic, setter=setAverageVideoPacketLossRate:, getter=averageVideoPacketLossRate) double averageVideoPacketLossRate;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nonatomic, setter=setLowFrameRateRatio:, getter=lowFrameRateRatio) double lowFrameRateRatio;
@property (nonatomic, setter=setLowVideoProcessingCapabilityRatio:, getter=lowVideoProcessingCapabilityRatio) double lowVideoProcessingCapabilityRatio;
@property (nullable, nonatomic, setter=setMaxAudioNetworkJitter:, getter=maxAudioNetworkJitter) MSDuration* maxAudioNetworkJitter;
@property (nullable, nonatomic, setter=setMaxJitter:, getter=maxJitter) MSDuration* maxJitter;
@property (nonatomic, setter=setMaxPacketLossRate:, getter=maxPacketLossRate) double maxPacketLossRate;
@property (nonatomic, setter=setMaxRatioOfConcealedSamples:, getter=maxRatioOfConcealedSamples) double maxRatioOfConcealedSamples;
@property (nullable, nonatomic, setter=setMaxRoundTripTime:, getter=maxRoundTripTime) MSDuration* maxRoundTripTime;
@property (nonatomic, setter=setPacketUtilization:, getter=packetUtilization) int64_t packetUtilization;
@property (nonatomic, setter=setPostForwardErrorCorrectionPacketLossRate:, getter=postForwardErrorCorrectionPacketLossRate) double postForwardErrorCorrectionPacketLossRate;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nonnull, nonatomic, setter=setStreamDirection:, getter=streamDirection) MSGraphCallRecordsMediaStreamDirection* streamDirection;
@property (nullable, nonatomic, setter=setStreamId:, getter=streamId) NSString* streamId;
@property (nonatomic, setter=setWasMediaBypassed:, getter=wasMediaBypassed) BOOL wasMediaBypassed;

@end
