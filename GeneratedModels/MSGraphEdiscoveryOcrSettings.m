// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryOcrSettings()
{
    BOOL _isEnabled;
    int32_t _maxImageSize;
    MSDuration* _timeout;
}
@end

@implementation MSGraphEdiscoveryOcrSettings

- (BOOL) isEnabled
{
    _isEnabled = [self.dictionary[@"isEnabled"] boolValue];
    return _isEnabled;
}

- (void) setIsEnabled: (BOOL) val
{
    _isEnabled = val;
    self.dictionary[@"isEnabled"] = @(val);
}

- (int32_t) maxImageSize
{
    _maxImageSize = [self.dictionary[@"maxImageSize"] intValue];
    return _maxImageSize;
}

- (void) setMaxImageSize: (int32_t) val
{
    _maxImageSize = val;
    self.dictionary[@"maxImageSize"] = @(val);
}

- (MSDuration*) timeout
{
    if(!_timeout){
        _timeout = [MSDuration ms_durationFromString: self.dictionary[@"timeout"]];
    }
    return _timeout;
}

- (void) setTimeout: (MSDuration*) val
{
    _timeout = val;
    self.dictionary[@"timeout"] = val.durationString;
}

@end
