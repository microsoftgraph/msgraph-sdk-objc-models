// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryCaseSettings()
{
    MSGraphEdiscoveryOcrSettings* _ocr;
    MSGraphEdiscoveryRedundancyDetectionSettings* _redundancyDetection;
    MSGraphEdiscoveryTopicModelingSettings* _topicModeling;
}
@end

@implementation MSGraphEdiscoveryCaseSettings

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.caseSettings";
    }
    return self;
}
- (MSGraphEdiscoveryOcrSettings*) ocr
{
    if(!_ocr){
        _ocr = [[MSGraphEdiscoveryOcrSettings alloc] initWithDictionary: self.dictionary[@"ocr"]];
    }
    return _ocr;
}

- (void) setOcr: (MSGraphEdiscoveryOcrSettings*) val
{
    _ocr = val;
    self.dictionary[@"ocr"] = val;
}

- (MSGraphEdiscoveryRedundancyDetectionSettings*) redundancyDetection
{
    if(!_redundancyDetection){
        _redundancyDetection = [[MSGraphEdiscoveryRedundancyDetectionSettings alloc] initWithDictionary: self.dictionary[@"redundancyDetection"]];
    }
    return _redundancyDetection;
}

- (void) setRedundancyDetection: (MSGraphEdiscoveryRedundancyDetectionSettings*) val
{
    _redundancyDetection = val;
    self.dictionary[@"redundancyDetection"] = val;
}

- (MSGraphEdiscoveryTopicModelingSettings*) topicModeling
{
    if(!_topicModeling){
        _topicModeling = [[MSGraphEdiscoveryTopicModelingSettings alloc] initWithDictionary: self.dictionary[@"topicModeling"]];
    }
    return _topicModeling;
}

- (void) setTopicModeling: (MSGraphEdiscoveryTopicModelingSettings*) val
{
    _topicModeling = val;
    self.dictionary[@"topicModeling"] = val;
}


@end
