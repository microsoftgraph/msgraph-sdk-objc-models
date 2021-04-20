// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewSet()
{
    NSArray* _definitions;
}
@end

@implementation MSGraphAccessReviewSet

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessReviewSet";
    }
    return self;
}
- (NSArray*) definitions
{
    if(!_definitions){
        
    NSMutableArray *definitionsResult = [NSMutableArray array];
    NSArray *definitions = self.dictionary[@"definitions"];

    if ([definitions isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewScheduleDefinition in definitions){
            [definitionsResult addObject:tempAccessReviewScheduleDefinition];
        }
    }

    _definitions = definitionsResult;
        
    }
    return _definitions;
}

- (void) setDefinitions: (NSArray*) val
{
    _definitions = val;
    self.dictionary[@"definitions"] = val;
}


@end
