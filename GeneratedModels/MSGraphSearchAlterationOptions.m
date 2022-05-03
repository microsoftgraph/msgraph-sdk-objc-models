// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchAlterationOptions()
{
    BOOL _enableModification;
    BOOL _enableSuggestion;
}
@end

@implementation MSGraphSearchAlterationOptions

- (BOOL) enableModification
{
    _enableModification = [self.dictionary[@"enableModification"] boolValue];
    return _enableModification;
}

- (void) setEnableModification: (BOOL) val
{
    _enableModification = val;
    self.dictionary[@"enableModification"] = @(val);
}

- (BOOL) enableSuggestion
{
    _enableSuggestion = [self.dictionary[@"enableSuggestion"] boolValue];
    return _enableSuggestion;
}

- (void) setEnableSuggestion: (BOOL) val
{
    _enableSuggestion = val;
    self.dictionary[@"enableSuggestion"] = @(val);
}

@end
