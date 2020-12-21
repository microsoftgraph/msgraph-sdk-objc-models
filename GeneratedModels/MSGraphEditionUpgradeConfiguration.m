// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEditionUpgradeConfiguration()
{
    NSString* _license;
    MSGraphEditionUpgradeLicenseType* _licenseType;
    NSString* _productKey;
    MSGraphWindows10EditionType* _targetEdition;
}
@end

@implementation MSGraphEditionUpgradeConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.editionUpgradeConfiguration";
    }
    return self;
}
- (NSString*) license
{
    if([[NSNull null] isEqual:self.dictionary[@"license"]])
    {
        return nil;
    }   
    return self.dictionary[@"license"];
}

- (void) setLicense: (NSString*) val
{
    self.dictionary[@"license"] = val;
}

- (MSGraphEditionUpgradeLicenseType*) licenseType
{
    if(!_licenseType){
        _licenseType = [self.dictionary[@"licenseType"] toMSGraphEditionUpgradeLicenseType];
    }
    return _licenseType;
}

- (void) setLicenseType: (MSGraphEditionUpgradeLicenseType*) val
{
    _licenseType = val;
    self.dictionary[@"licenseType"] = val;
}

- (NSString*) productKey
{
    if([[NSNull null] isEqual:self.dictionary[@"productKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"productKey"];
}

- (void) setProductKey: (NSString*) val
{
    self.dictionary[@"productKey"] = val;
}

- (MSGraphWindows10EditionType*) targetEdition
{
    if(!_targetEdition){
        _targetEdition = [self.dictionary[@"targetEdition"] toMSGraphWindows10EditionType];
    }
    return _targetEdition;
}

- (void) setTargetEdition: (MSGraphWindows10EditionType*) val
{
    _targetEdition = val;
    self.dictionary[@"targetEdition"] = val;
}


@end
