// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermStoreGroup, MSGraphTermStoreSet; 


#import "MSGraphEntity.h"

@interface MSGraphTermStoreStore : MSGraphEntity

  @property (nonnull, nonatomic, setter=setDefaultLanguageTag:, getter=defaultLanguageTag) NSString* defaultLanguageTag;
    @property (nonnull, nonatomic, setter=setLanguageTags:, getter=languageTags) NSArray* languageTags;
    @property (nullable, nonatomic, setter=setGroups:, getter=groups) NSArray* groups;
    @property (nullable, nonatomic, setter=setSets:, getter=sets) NSArray* sets;
  
@end
