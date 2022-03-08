// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTermStoreLocalizedDescription : MSObject

@property (nullable, nonatomic, setter=setLocalizedDescriptionDescription:, getter=localizedDescriptionDescription) NSString* localizedDescriptionDescription;
@property (nullable, nonatomic, setter=setLanguageTag:, getter=languageTag) NSString* languageTag;

@end
