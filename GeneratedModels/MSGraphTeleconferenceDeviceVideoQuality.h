// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphTeleconferenceDeviceMediaQuality.h"

@interface MSGraphTeleconferenceDeviceVideoQuality : MSGraphTeleconferenceDeviceMediaQuality

@property (nonatomic, setter=setAverageInboundFrameRate:, getter=averageInboundFrameRate) double averageInboundFrameRate;
@property (nonatomic, setter=setAverageOutboundFrameRate:, getter=averageOutboundFrameRate) double averageOutboundFrameRate;
@property (nonatomic, setter=setAverageInboundBitRate:, getter=averageInboundBitRate) double averageInboundBitRate;
@property (nonatomic, setter=setAverageOutboundBitRate:, getter=averageOutboundBitRate) double averageOutboundBitRate;

@end
