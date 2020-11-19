// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLobbyBypassSettings()
{
    BOOL _isDialInBypassEnabled;
    MSGraphLobbyBypassScope* _scope;
}
@end

@implementation MSGraphLobbyBypassSettings

- (BOOL) isDialInBypassEnabled
{
    _isDialInBypassEnabled = [self.dictionary[@"isDialInBypassEnabled"] boolValue];
    return _isDialInBypassEnabled;
}

- (void) setIsDialInBypassEnabled: (BOOL) val
{
    _isDialInBypassEnabled = val;
    self.dictionary[@"isDialInBypassEnabled"] = @(val);
}

- (MSGraphLobbyBypassScope*) scope
{
    if(!_scope){
        _scope = [self.dictionary[@"scope"] toMSGraphLobbyBypassScope];
    }
    return _scope;
}

- (void) setScope: (MSGraphLobbyBypassScope*) val
{
    _scope = val;
    self.dictionary[@"scope"] = val;
}

@end
