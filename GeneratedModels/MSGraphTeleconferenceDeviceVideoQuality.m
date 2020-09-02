// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeleconferenceDeviceVideoQuality()
{
    double _averageInboundBitRate;
    double _averageInboundFrameRate;
    double _averageOutboundBitRate;
    double _averageOutboundFrameRate;
}
@end

@implementation MSGraphTeleconferenceDeviceVideoQuality

- (double) averageInboundBitRate
{
    _averageInboundBitRate = [self.dictionary[@"averageInboundBitRate"] floatValue];
    return _averageInboundBitRate;
}

- (void) setAverageInboundBitRate: (double) val
{
    _averageInboundBitRate = val;
    self.dictionary[@"averageInboundBitRate"] = @(val);
}

- (double) averageInboundFrameRate
{
    _averageInboundFrameRate = [self.dictionary[@"averageInboundFrameRate"] floatValue];
    return _averageInboundFrameRate;
}

- (void) setAverageInboundFrameRate: (double) val
{
    _averageInboundFrameRate = val;
    self.dictionary[@"averageInboundFrameRate"] = @(val);
}

- (double) averageOutboundBitRate
{
    _averageOutboundBitRate = [self.dictionary[@"averageOutboundBitRate"] floatValue];
    return _averageOutboundBitRate;
}

- (void) setAverageOutboundBitRate: (double) val
{
    _averageOutboundBitRate = val;
    self.dictionary[@"averageOutboundBitRate"] = @(val);
}

- (double) averageOutboundFrameRate
{
    _averageOutboundFrameRate = [self.dictionary[@"averageOutboundFrameRate"] floatValue];
    return _averageOutboundFrameRate;
}

- (void) setAverageOutboundFrameRate: (double) val
{
    _averageOutboundFrameRate = val;
    self.dictionary[@"averageOutboundFrameRate"] = @(val);
}

@end
