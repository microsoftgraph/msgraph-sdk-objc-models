// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMicrosoftAuthenticatorAuthenticationMethod()
{
    NSDate* _createdDateTime;
    NSString* _deviceTag;
    NSString* _displayName;
    NSString* _phoneAppVersion;
    MSGraphDevice* _device;
}
@end

@implementation MSGraphMicrosoftAuthenticatorAuthenticationMethod

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.microsoftAuthenticatorAuthenticationMethod";
    }
    return self;
}
- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) deviceTag
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceTag"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceTag"];
}

- (void) setDeviceTag: (NSString*) val
{
    self.dictionary[@"deviceTag"] = val;
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

- (NSString*) phoneAppVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"phoneAppVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"phoneAppVersion"];
}

- (void) setPhoneAppVersion: (NSString*) val
{
    self.dictionary[@"phoneAppVersion"] = val;
}

- (MSGraphDevice*) device
{
    if(!_device){
        _device = [[MSGraphDevice alloc] initWithDictionary: self.dictionary[@"device"]];
    }
    return _device;
}

- (void) setDevice: (MSGraphDevice*) val
{
    _device = val;
    self.dictionary[@"device"] = val;
}


@end
