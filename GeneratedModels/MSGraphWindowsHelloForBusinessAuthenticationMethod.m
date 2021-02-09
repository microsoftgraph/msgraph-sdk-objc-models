// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsHelloForBusinessAuthenticationMethod()
{
    NSDate* _createdDateTime;
    NSString* _displayName;
    MSGraphAuthenticationMethodKeyStrength* _keyStrength;
    MSGraphDevice* _device;
}
@end

@implementation MSGraphWindowsHelloForBusinessAuthenticationMethod

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsHelloForBusinessAuthenticationMethod";
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

- (MSGraphAuthenticationMethodKeyStrength*) keyStrength
{
    if(!_keyStrength){
        _keyStrength = [self.dictionary[@"keyStrength"] toMSGraphAuthenticationMethodKeyStrength];
    }
    return _keyStrength;
}

- (void) setKeyStrength: (MSGraphAuthenticationMethodKeyStrength*) val
{
    _keyStrength = val;
    self.dictionary[@"keyStrength"] = val;
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
