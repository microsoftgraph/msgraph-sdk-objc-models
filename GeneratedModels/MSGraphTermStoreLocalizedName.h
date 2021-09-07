// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTermStoreLocalizedName : MSObject

@property (nullable, nonatomic, setter=setLanguageTag:, getter=languageTag) NSString* languageTag;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;

@end
