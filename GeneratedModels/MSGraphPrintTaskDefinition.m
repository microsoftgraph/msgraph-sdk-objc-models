// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintTaskDefinition()
{
    MSGraphAppIdentity* _createdBy;
    NSString* _displayName;
    NSArray* _tasks;
}
@end

@implementation MSGraphPrintTaskDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printTaskDefinition";
    }
    return self;
}
- (MSGraphAppIdentity*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphAppIdentity alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphAppIdentity*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSArray*) tasks
{
    if(!_tasks){
        
    NSMutableArray *tasksResult = [NSMutableArray array];
    NSArray *tasks = self.dictionary[@"tasks"];

    if ([tasks isKindOfClass:[NSArray class]]){
        for (id tempPrintTask in tasks){
            [tasksResult addObject:tempPrintTask];
        }
    }

    _tasks = tasksResult;
        
    }
    return _tasks;
}

- (void) setTasks: (NSArray*) val
{
    _tasks = val;
    self.dictionary[@"tasks"] = val;
}


@end
