// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintConnector()
{
    NSString* _appVersion;
    NSString* _displayName;
    NSString* _fullyQualifiedDomainName;
    MSGraphPrinterLocation* _location;
    NSString* _operatingSystem;
    NSDate* _registeredDateTime;
}
@end

@implementation MSGraphPrintConnector

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printConnector";
    }
    return self;
}
- (NSString*) appVersion
{
    return self.dictionary[@"appVersion"];
}

- (void) setAppVersion: (NSString*) val
{
    self.dictionary[@"appVersion"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) fullyQualifiedDomainName
{
    return self.dictionary[@"fullyQualifiedDomainName"];
}

- (void) setFullyQualifiedDomainName: (NSString*) val
{
    self.dictionary[@"fullyQualifiedDomainName"] = val;
}

- (MSGraphPrinterLocation*) location
{
    if(!_location){
        _location = [[MSGraphPrinterLocation alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphPrinterLocation*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
}

- (NSString*) operatingSystem
{
    return self.dictionary[@"operatingSystem"];
}

- (void) setOperatingSystem: (NSString*) val
{
    self.dictionary[@"operatingSystem"] = val;
}

- (NSDate*) registeredDateTime
{
    if(!_registeredDateTime){
        _registeredDateTime = [NSDate ms_dateFromString: self.dictionary[@"registeredDateTime"]];
    }
    return _registeredDateTime;
}

- (void) setRegisteredDateTime: (NSDate*) val
{
    _registeredDateTime = val;
    self.dictionary[@"registeredDateTime"] = [val ms_toString];
}


@end
