// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermStoreStore()
{
    NSString* _defaultLanguageTag;
    NSArray* _languageTags;
    NSArray* _groups;
    NSArray* _sets;
}
@end

@implementation MSGraphTermStoreStore

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termStore.store";
    }
    return self;
}
- (NSString*) defaultLanguageTag
{
    return self.dictionary[@"defaultLanguageTag"];
}

- (void) setDefaultLanguageTag: (NSString*) val
{
    self.dictionary[@"defaultLanguageTag"] = val;
}

- (NSArray*) languageTags
{
    return self.dictionary[@"languageTags"];
}

- (void) setLanguageTags: (NSArray*) val
{
    self.dictionary[@"languageTags"] = val;
}

- (NSArray*) groups
{
    if(!_groups){
        
    NSMutableArray *groupsResult = [NSMutableArray array];
    NSArray *groups = self.dictionary[@"groups"];

    if ([groups isKindOfClass:[NSArray class]]){
        for (id tempGroup in groups){
            [groupsResult addObject:tempGroup];
        }
    }

    _groups = groupsResult;
        
    }
    return _groups;
}

- (void) setGroups: (NSArray*) val
{
    _groups = val;
    self.dictionary[@"groups"] = val;
}

- (NSArray*) sets
{
    if(!_sets){
        
    NSMutableArray *setsResult = [NSMutableArray array];
    NSArray *sets = self.dictionary[@"sets"];

    if ([sets isKindOfClass:[NSArray class]]){
        for (id tempSet in sets){
            [setsResult addObject:tempSet];
        }
    }

    _sets = setsResult;
        
    }
    return _sets;
}

- (void) setSets: (NSArray*) val
{
    _sets = val;
    self.dictionary[@"sets"] = val;
}


@end
