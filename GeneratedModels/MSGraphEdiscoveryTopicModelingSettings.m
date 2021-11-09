// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryTopicModelingSettings()
{
    BOOL _dynamicallyAdjustTopicCount;
    BOOL _ignoreNumbers;
    BOOL _isEnabled;
    int32_t _topicCount;
}
@end

@implementation MSGraphEdiscoveryTopicModelingSettings

- (BOOL) dynamicallyAdjustTopicCount
{
    _dynamicallyAdjustTopicCount = [self.dictionary[@"dynamicallyAdjustTopicCount"] boolValue];
    return _dynamicallyAdjustTopicCount;
}

- (void) setDynamicallyAdjustTopicCount: (BOOL) val
{
    _dynamicallyAdjustTopicCount = val;
    self.dictionary[@"dynamicallyAdjustTopicCount"] = @(val);
}

- (BOOL) ignoreNumbers
{
    _ignoreNumbers = [self.dictionary[@"ignoreNumbers"] boolValue];
    return _ignoreNumbers;
}

- (void) setIgnoreNumbers: (BOOL) val
{
    _ignoreNumbers = val;
    self.dictionary[@"ignoreNumbers"] = @(val);
}

- (BOOL) isEnabled
{
    _isEnabled = [self.dictionary[@"isEnabled"] boolValue];
    return _isEnabled;
}

- (void) setIsEnabled: (BOOL) val
{
    _isEnabled = val;
    self.dictionary[@"isEnabled"] = @(val);
}

- (int32_t) topicCount
{
    _topicCount = [self.dictionary[@"topicCount"] intValue];
    return _topicCount;
}

- (void) setTopicCount: (int32_t) val
{
    _topicCount = val;
    self.dictionary[@"topicCount"] = @(val);
}

@end
