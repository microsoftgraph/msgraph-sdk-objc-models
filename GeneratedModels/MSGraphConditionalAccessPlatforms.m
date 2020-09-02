// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessPlatforms()
{
    NSArray* _excludePlatforms;
    NSArray* _includePlatforms;
}
@end

@implementation MSGraphConditionalAccessPlatforms

- (NSArray*) excludePlatforms
{
    if(!_excludePlatforms){
        
    NSMutableArray *excludePlatformsResult = [NSMutableArray array];
    NSArray *excludePlatforms = self.dictionary[@"excludePlatforms"];

    if ([excludePlatforms isKindOfClass:[NSArray class]]){
        for (id tempConditionalAccessDevicePlatform in excludePlatforms){
            [excludePlatformsResult addObject:tempConditionalAccessDevicePlatform];
        }
    }

    _excludePlatforms = excludePlatformsResult;
        
    }
    return _excludePlatforms;
}

- (void) setExcludePlatforms: (NSArray*) val
{
    _excludePlatforms = val;
    self.dictionary[@"excludePlatforms"] = val;
}

- (NSArray*) includePlatforms
{
    if(!_includePlatforms){
        
    NSMutableArray *includePlatformsResult = [NSMutableArray array];
    NSArray *includePlatforms = self.dictionary[@"includePlatforms"];

    if ([includePlatforms isKindOfClass:[NSArray class]]){
        for (id tempConditionalAccessDevicePlatform in includePlatforms){
            [includePlatformsResult addObject:tempConditionalAccessDevicePlatform];
        }
    }

    _includePlatforms = includePlatformsResult;
        
    }
    return _includePlatforms;
}

- (void) setIncludePlatforms: (NSArray*) val
{
    _includePlatforms = val;
    self.dictionary[@"includePlatforms"] = val;
}

@end
