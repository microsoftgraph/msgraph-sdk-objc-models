// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApplicationTemplate()
{
    NSArray* _categories;
    NSString* _applicationTemplateDescription;
    NSString* _displayName;
    NSString* _homePageUrl;
    NSString* _logoUrl;
    NSString* _publisher;
    NSArray* _supportedProvisioningTypes;
    NSArray* _supportedSingleSignOnModes;
}
@end

@implementation MSGraphApplicationTemplate

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.applicationTemplate";
    }
    return self;
}
- (NSArray*) categories
{
    if([[NSNull null] isEqual:self.dictionary[@"categories"]])
    {
        return nil;
    }   
    return self.dictionary[@"categories"];
}

- (void) setCategories: (NSArray*) val
{
    self.dictionary[@"categories"] = val;
}

- (NSString*) applicationTemplateDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setApplicationTemplateDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) homePageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"homePageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"homePageUrl"];
}

- (void) setHomePageUrl: (NSString*) val
{
    self.dictionary[@"homePageUrl"] = val;
}

- (NSString*) logoUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"logoUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"logoUrl"];
}

- (void) setLogoUrl: (NSString*) val
{
    self.dictionary[@"logoUrl"] = val;
}

- (NSString*) publisher
{
    if([[NSNull null] isEqual:self.dictionary[@"publisher"]])
    {
        return nil;
    }   
    return self.dictionary[@"publisher"];
}

- (void) setPublisher: (NSString*) val
{
    self.dictionary[@"publisher"] = val;
}

- (NSArray*) supportedProvisioningTypes
{
    if([[NSNull null] isEqual:self.dictionary[@"supportedProvisioningTypes"]])
    {
        return nil;
    }   
    return self.dictionary[@"supportedProvisioningTypes"];
}

- (void) setSupportedProvisioningTypes: (NSArray*) val
{
    self.dictionary[@"supportedProvisioningTypes"] = val;
}

- (NSArray*) supportedSingleSignOnModes
{
    if([[NSNull null] isEqual:self.dictionary[@"supportedSingleSignOnModes"]])
    {
        return nil;
    }   
    return self.dictionary[@"supportedSingleSignOnModes"];
}

- (void) setSupportedSingleSignOnModes: (NSArray*) val
{
    self.dictionary[@"supportedSingleSignOnModes"] = val;
}


@end
