// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryRedundancyDetectionSettings()
{
    BOOL _isEnabled;
    int32_t _maxWords;
    int32_t _minWords;
    int32_t _similarityThreshold;
}
@end

@implementation MSGraphEdiscoveryRedundancyDetectionSettings

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

- (int32_t) maxWords
{
    _maxWords = [self.dictionary[@"maxWords"] intValue];
    return _maxWords;
}

- (void) setMaxWords: (int32_t) val
{
    _maxWords = val;
    self.dictionary[@"maxWords"] = @(val);
}

- (int32_t) minWords
{
    _minWords = [self.dictionary[@"minWords"] intValue];
    return _minWords;
}

- (void) setMinWords: (int32_t) val
{
    _minWords = val;
    self.dictionary[@"minWords"] = @(val);
}

- (int32_t) similarityThreshold
{
    _similarityThreshold = [self.dictionary[@"similarityThreshold"] intValue];
    return _similarityThreshold;
}

- (void) setSimilarityThreshold: (int32_t) val
{
    _similarityThreshold = val;
    self.dictionary[@"similarityThreshold"] = @(val);
}

@end
