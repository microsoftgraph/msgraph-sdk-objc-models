// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphApplicationTemplate : MSGraphEntity

  @property (nullable, nonatomic, setter=setCategories:, getter=categories) NSArray* categories;
    @property (nullable, nonatomic, setter=setApplicationTemplateDescription:, getter=applicationTemplateDescription) NSString* applicationTemplateDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setHomePageUrl:, getter=homePageUrl) NSString* homePageUrl;
    @property (nullable, nonatomic, setter=setLogoUrl:, getter=logoUrl) NSString* logoUrl;
    @property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;
    @property (nullable, nonatomic, setter=setSupportedProvisioningTypes:, getter=supportedProvisioningTypes) NSArray* supportedProvisioningTypes;
    @property (nullable, nonatomic, setter=setSupportedSingleSignOnModes:, getter=supportedSingleSignOnModes) NSArray* supportedSingleSignOnModes;
  
@end
