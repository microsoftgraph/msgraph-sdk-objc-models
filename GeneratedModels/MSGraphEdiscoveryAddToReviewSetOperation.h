// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoveryReviewSet, MSGraphEdiscoverySourceCollection; 


#import "MSGraphEdiscoveryCaseOperation.h"

@interface MSGraphEdiscoveryAddToReviewSetOperation : MSGraphEdiscoveryCaseOperation

  @property (nullable, nonatomic, setter=setReviewSet:, getter=reviewSet) MSGraphEdiscoveryReviewSet* reviewSet;
    @property (nullable, nonatomic, setter=setSourceCollection:, getter=sourceCollection) MSGraphEdiscoverySourceCollection* sourceCollection;
  
@end
