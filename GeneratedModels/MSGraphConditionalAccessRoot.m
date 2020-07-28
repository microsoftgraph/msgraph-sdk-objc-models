// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessRoot()
{
    NSArray* _policies;
    NSArray* _namedLocations;
}
@end

@implementation MSGraphConditionalAccessRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.conditionalAccessRoot";
    }
    return self;
}
- (NSArray*) policies
{
    if(!_policies){
        
    NSMutableArray *policiesResult = [NSMutableArray array];
    NSArray *policies = self.dictionary[@"policies"];

    if ([policies isKindOfClass:[NSArray class]]){
        for (id tempConditionalAccessPolicy in policies){
            [policiesResult addObject:tempConditionalAccessPolicy];
        }
    }

    _policies = policiesResult;
        
    }
    return _policies;
}

- (void) setPolicies: (NSArray*) val
{
    _policies = val;
    self.dictionary[@"policies"] = val;
}

- (NSArray*) namedLocations
{
    if(!_namedLocations){
        
    NSMutableArray *namedLocationsResult = [NSMutableArray array];
    NSArray *namedLocations = self.dictionary[@"namedLocations"];

    if ([namedLocations isKindOfClass:[NSArray class]]){
        for (id tempNamedLocation in namedLocations){
            [namedLocationsResult addObject:tempNamedLocation];
        }
    }

    _namedLocations = namedLocationsResult;
        
    }
    return _namedLocations;
}

- (void) setNamedLocations: (NSArray*) val
{
    _namedLocations = val;
    self.dictionary[@"namedLocations"] = val;
}


@end
