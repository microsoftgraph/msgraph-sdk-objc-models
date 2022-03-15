// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewSet()
{
    NSArray* _definitions;
    NSArray* _historyDefinitions;
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

- (NSArray*) historyDefinitions
{
    if(!_historyDefinitions){
        
    NSMutableArray *historyDefinitionsResult = [NSMutableArray array];
    NSArray *historyDefinitions = self.dictionary[@"historyDefinitions"];

    if ([historyDefinitions isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewHistoryDefinition in historyDefinitions){
            [historyDefinitionsResult addObject:tempAccessReviewHistoryDefinition];
        }
    }

    _historyDefinitions = historyDefinitionsResult;
        
    }
    return _historyDefinitions;
}

- (void) setHistoryDefinitions: (NSArray*) val
{
    _historyDefinitions = val;
    self.dictionary[@"historyDefinitions"] = val;
}


@end
