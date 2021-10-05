// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAlteredQueryToken; 


#import "MSObject.h"

@interface MSGraphSearchAlteration : MSObject

@property (nullable, nonatomic, setter=setAlteredHighlightedQueryString:, getter=alteredHighlightedQueryString) NSString* alteredHighlightedQueryString;
@property (nullable, nonatomic, setter=setAlteredQueryString:, getter=alteredQueryString) NSString* alteredQueryString;
@property (nullable, nonatomic, setter=setAlteredQueryTokens:, getter=alteredQueryTokens) NSArray* alteredQueryTokens;

@end
