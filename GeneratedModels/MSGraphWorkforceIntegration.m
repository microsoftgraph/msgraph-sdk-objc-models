// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkforceIntegration()
{
    NSString* _displayName;
    int32_t _apiVersion;
    MSGraphWorkforceIntegrationEncryption* _encryption;
    BOOL _isActive;
    NSString* _url;
    MSGraphWorkforceIntegrationSupportedEntities* _supportedEntities;
}
@end

@implementation MSGraphWorkforceIntegration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workforceIntegration";
    }
    return self;
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

- (int32_t) apiVersion
{
    _apiVersion = [self.dictionary[@"apiVersion"] intValue];
    return _apiVersion;
}

- (void) setApiVersion: (int32_t) val
{
    _apiVersion = val;
    self.dictionary[@"apiVersion"] = @(val);
}

- (MSGraphWorkforceIntegrationEncryption*) encryption
{
    if(!_encryption){
        _encryption = [[MSGraphWorkforceIntegrationEncryption alloc] initWithDictionary: self.dictionary[@"encryption"]];
    }
    return _encryption;
}

- (void) setEncryption: (MSGraphWorkforceIntegrationEncryption*) val
{
    _encryption = val;
    self.dictionary[@"encryption"] = val;
}

- (BOOL) isActive
{
    _isActive = [self.dictionary[@"isActive"] boolValue];
    return _isActive;
}

- (void) setIsActive: (BOOL) val
{
    _isActive = val;
    self.dictionary[@"isActive"] = @(val);
}

- (NSString*) url
{
    if([[NSNull null] isEqual:self.dictionary[@"url"]])
    {
        return nil;
    }   
    return self.dictionary[@"url"];
}

- (void) setUrl: (NSString*) val
{
    self.dictionary[@"url"] = val;
}

- (MSGraphWorkforceIntegrationSupportedEntities*) supportedEntities
{
    if(!_supportedEntities){
        _supportedEntities = [self.dictionary[@"supportedEntities"] toMSGraphWorkforceIntegrationSupportedEntities];
    }
    return _supportedEntities;
}

- (void) setSupportedEntities: (MSGraphWorkforceIntegrationSupportedEntities*) val
{
    _supportedEntities = val;
    self.dictionary[@"supportedEntities"] = val;
}


@end
