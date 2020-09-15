// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPermissionGrantPolicy()
{
    NSArray* _excludes;
    NSArray* _includes;
}
@end

@implementation MSGraphPermissionGrantPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.permissionGrantPolicy";
    }
    return self;
}
- (NSArray*) excludes
{
    if(!_excludes){
        
    NSMutableArray *excludesResult = [NSMutableArray array];
    NSArray *excludes = self.dictionary[@"excludes"];

    if ([excludes isKindOfClass:[NSArray class]]){
        for (id tempPermissionGrantConditionSet in excludes){
            [excludesResult addObject:tempPermissionGrantConditionSet];
        }
    }

    _excludes = excludesResult;
        
    }
    return _excludes;
}

- (void) setExcludes: (NSArray*) val
{
    _excludes = val;
    self.dictionary[@"excludes"] = val;
}

- (NSArray*) includes
{
    if(!_includes){
        
    NSMutableArray *includesResult = [NSMutableArray array];
    NSArray *includes = self.dictionary[@"includes"];

    if ([includes isKindOfClass:[NSArray class]]){
        for (id tempPermissionGrantConditionSet in includes){
            [includesResult addObject:tempPermissionGrantConditionSet];
        }
    }

    _includes = includesResult;
        
    }
    return _includes;
}

- (void) setIncludes: (NSArray*) val
{
    _includes = val;
    self.dictionary[@"includes"] = val;
}


@end
