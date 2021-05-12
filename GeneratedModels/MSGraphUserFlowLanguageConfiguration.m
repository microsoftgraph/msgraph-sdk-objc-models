// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserFlowLanguageConfiguration()
{
    NSString* _displayName;
    BOOL _isEnabled;
    NSArray* _defaultPages;
    NSArray* _overridesPages;
}
@end

@implementation MSGraphUserFlowLanguageConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userFlowLanguageConfiguration";
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

- (NSArray*) defaultPages
{
    if(!_defaultPages){
        
    NSMutableArray *defaultPagesResult = [NSMutableArray array];
    NSArray *defaultPages = self.dictionary[@"defaultPages"];

    if ([defaultPages isKindOfClass:[NSArray class]]){
        for (id tempUserFlowLanguagePage in defaultPages){
            [defaultPagesResult addObject:tempUserFlowLanguagePage];
        }
    }

    _defaultPages = defaultPagesResult;
        
    }
    return _defaultPages;
}

- (void) setDefaultPages: (NSArray*) val
{
    _defaultPages = val;
    self.dictionary[@"defaultPages"] = val;
}

- (NSArray*) overridesPages
{
    if(!_overridesPages){
        
    NSMutableArray *overridesPagesResult = [NSMutableArray array];
    NSArray *overridesPages = self.dictionary[@"overridesPages"];

    if ([overridesPages isKindOfClass:[NSArray class]]){
        for (id tempUserFlowLanguagePage in overridesPages){
            [overridesPagesResult addObject:tempUserFlowLanguagePage];
        }
    }

    _overridesPages = overridesPagesResult;
        
    }
    return _overridesPages;
}

- (void) setOverridesPages: (NSArray*) val
{
    _overridesPages = val;
    self.dictionary[@"overridesPages"] = val;
}


@end
