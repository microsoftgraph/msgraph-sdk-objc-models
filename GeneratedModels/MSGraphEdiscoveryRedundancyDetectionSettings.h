// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphEdiscoveryRedundancyDetectionSettings : MSObject

@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nonatomic, setter=setMaxWords:, getter=maxWords) int32_t maxWords;
@property (nonatomic, setter=setMinWords:, getter=minWords) int32_t minWords;
@property (nonatomic, setter=setSimilarityThreshold:, getter=similarityThreshold) int32_t similarityThreshold;

@end
