// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryEdiscoveryroot()
{
    NSArray* _cases;
}
@end

@implementation MSGraphEdiscoveryEdiscoveryroot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.ediscoveryroot";
    }
    return self;
}
- (NSArray*) cases
{
    if(!_cases){
        
    NSMutableArray *casesResult = [NSMutableArray array];
    NSArray *cases = self.dictionary[@"cases"];

    if ([cases isKindOfClass:[NSArray class]]){
        for (id tempCase in cases){
            [casesResult addObject:tempCase];
        }
    }

    _cases = casesResult;
        
    }
    return _cases;
}

- (void) setCases: (NSArray*) val
{
    _cases = val;
    self.dictionary[@"cases"] = val;
}


@end
