// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAlteredQueryToken : MSObject

@property (nonatomic, setter=setLength:, getter=length) int32_t length;
@property (nonatomic, setter=setOffset:, getter=offset) int32_t offset;
@property (nullable, nonatomic, setter=setSuggestion:, getter=suggestion) NSString* suggestion;

@end
