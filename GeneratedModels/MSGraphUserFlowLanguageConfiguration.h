// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserFlowLanguagePage; 


#import "MSGraphEntity.h"

@interface MSGraphUserFlowLanguageConfiguration : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
    @property (nullable, nonatomic, setter=setDefaultPages:, getter=defaultPages) NSArray* defaultPages;
    @property (nullable, nonatomic, setter=setOverridesPages:, getter=overridesPages) NSArray* overridesPages;
  
@end
