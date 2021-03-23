// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApproval()
{
    NSArray* _stages;
}
@end

@implementation MSGraphApproval

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.approval";
    }
    return self;
}
- (NSArray*) stages
{
    if(!_stages){
        
    NSMutableArray *stagesResult = [NSMutableArray array];
    NSArray *stages = self.dictionary[@"stages"];

    if ([stages isKindOfClass:[NSArray class]]){
        for (id tempApprovalStage in stages){
            [stagesResult addObject:tempApprovalStage];
        }
    }

    _stages = stagesResult;
        
    }
    return _stages;
}

- (void) setStages: (NSArray*) val
{
    _stages = val;
    self.dictionary[@"stages"] = val;
}


@end
