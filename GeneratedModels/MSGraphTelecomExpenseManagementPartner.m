// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTelecomExpenseManagementPartner()
{
    BOOL _appAuthorized;
    NSString* _displayName;
    BOOL _enabled;
    NSDate* _lastConnectionDateTime;
    NSString* _url;
}
@end

@implementation MSGraphTelecomExpenseManagementPartner

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.telecomExpenseManagementPartner";
    }
    return self;
}
- (BOOL) appAuthorized
{
    _appAuthorized = [self.dictionary[@"appAuthorized"] boolValue];
    return _appAuthorized;
}

- (void) setAppAuthorized: (BOOL) val
{
    _appAuthorized = val;
    self.dictionary[@"appAuthorized"] = @(val);
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

- (BOOL) enabled
{
    _enabled = [self.dictionary[@"enabled"] boolValue];
    return _enabled;
}

- (void) setEnabled: (BOOL) val
{
    _enabled = val;
    self.dictionary[@"enabled"] = @(val);
}

- (NSDate*) lastConnectionDateTime
{
    if(!_lastConnectionDateTime){
        _lastConnectionDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastConnectionDateTime"]];
    }
    return _lastConnectionDateTime;
}

- (void) setLastConnectionDateTime: (NSDate*) val
{
    _lastConnectionDateTime = val;
    self.dictionary[@"lastConnectionDateTime"] = [val ms_toString];
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


@end
