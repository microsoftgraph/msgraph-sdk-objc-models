// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoveryOcrSettings, MSGraphEdiscoveryRedundancyDetectionSettings, MSGraphEdiscoveryTopicModelingSettings; 


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryCaseSettings : MSGraphEntity

  @property (nullable, nonatomic, setter=setOcr:, getter=ocr) MSGraphEdiscoveryOcrSettings* ocr;
    @property (nullable, nonatomic, setter=setRedundancyDetection:, getter=redundancyDetection) MSGraphEdiscoveryRedundancyDetectionSettings* redundancyDetection;
    @property (nullable, nonatomic, setter=setTopicModeling:, getter=topicModeling) MSGraphEdiscoveryTopicModelingSettings* topicModeling;
  
@end
