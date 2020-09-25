// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppMsiInformation()
{
    MSGraphWin32LobAppMsiPackageType* _packageType;
    NSString* _productCode;
    NSString* _productName;
    NSString* _productVersion;
    NSString* _publisher;
    BOOL _requiresReboot;
    NSString* _upgradeCode;
}
@end

@implementation MSGraphWin32LobAppMsiInformation

- (MSGraphWin32LobAppMsiPackageType*) packageType
{
    if(!_packageType){
        _packageType = [self.dictionary[@"packageType"] toMSGraphWin32LobAppMsiPackageType];
    }
    return _packageType;
}

- (void) setPackageType: (MSGraphWin32LobAppMsiPackageType*) val
{
    _packageType = val;
    self.dictionary[@"packageType"] = val;
}

- (NSString*) productCode
{
    if([[NSNull null] isEqual:self.dictionary[@"productCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"productCode"];
}

- (void) setProductCode: (NSString*) val
{
    self.dictionary[@"productCode"] = val;
}

- (NSString*) productName
{
    if([[NSNull null] isEqual:self.dictionary[@"productName"]])
    {
        return nil;
    }   
    return self.dictionary[@"productName"];
}

- (void) setProductName: (NSString*) val
{
    self.dictionary[@"productName"] = val;
}

- (NSString*) productVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"productVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"productVersion"];
}

- (void) setProductVersion: (NSString*) val
{
    self.dictionary[@"productVersion"] = val;
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

- (BOOL) requiresReboot
{
    _requiresReboot = [self.dictionary[@"requiresReboot"] boolValue];
    return _requiresReboot;
}

- (void) setRequiresReboot: (BOOL) val
{
    _requiresReboot = val;
    self.dictionary[@"requiresReboot"] = @(val);
}

- (NSString*) upgradeCode
{
    if([[NSNull null] isEqual:self.dictionary[@"upgradeCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"upgradeCode"];
}

- (void) setUpgradeCode: (NSString*) val
{
    self.dictionary[@"upgradeCode"] = val;
}

@end
