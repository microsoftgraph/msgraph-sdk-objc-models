// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSearchHit; 


#import "MSObject.h"

@interface MSGraphSearchHitsContainer : MSObject

@property (nullable, nonatomic, setter=setHits:, getter=hits) NSArray* hits;
@property (nonatomic, setter=setMoreResultsAvailable:, getter=moreResultsAvailable) BOOL moreResultsAvailable;
@property (nonatomic, setter=setTotal:, getter=total) int32_t total;

@end
