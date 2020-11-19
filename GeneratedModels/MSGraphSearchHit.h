// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphEntity; 


#import "MSObject.h"

@interface MSGraphSearchHit : MSObject

@property (nullable, nonatomic, setter=setContentSource:, getter=contentSource) NSString* contentSource;
@property (nullable, nonatomic, setter=setHitId:, getter=hitId) NSString* hitId;
@property (nonatomic, setter=setRank:, getter=rank) int32_t rank;
@property (nullable, nonatomic, setter=setSummary:, getter=summary) NSString* summary;
@property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphEntity* resource;

@end
