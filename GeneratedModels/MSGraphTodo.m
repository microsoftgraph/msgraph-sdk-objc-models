// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTodo()
{
    NSArray* _lists;
}
@end

@implementation MSGraphTodo

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.todo";
    }
    return self;
}
- (NSArray*) lists
{
    if(!_lists){
        
    NSMutableArray *listsResult = [NSMutableArray array];
    NSArray *lists = self.dictionary[@"lists"];

    if ([lists isKindOfClass:[NSArray class]]){
        for (id tempTodoTaskList in lists){
            [listsResult addObject:tempTodoTaskList];
        }
    }

    _lists = listsResult;
        
    }
    return _lists;
}

- (void) setLists: (NSArray*) val
{
    _lists = val;
    self.dictionary[@"lists"] = val;
}


@end
