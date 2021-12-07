// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAlbum; 


#import "MSObject.h"

@interface MSGraphBundle : MSObject

@property (nullable, nonatomic, setter=setAlbum:, getter=album) MSGraphAlbum* album;
@property (nonatomic, setter=setChildCount:, getter=childCount) int32_t childCount;

@end
