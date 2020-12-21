// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphImageInfo : MSObject

@property (nonatomic, setter=setAddImageQuery:, getter=addImageQuery) BOOL addImageQuery;
@property (nullable, nonatomic, setter=setAlternateText:, getter=alternateText) NSString* alternateText;
@property (nullable, nonatomic, setter=setAlternativeText:, getter=alternativeText) NSString* alternativeText;
@property (nullable, nonatomic, setter=setIconUrl:, getter=iconUrl) NSString* iconUrl;

@end
