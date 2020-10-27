// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTodoTaskList()
{
    NSString* _displayName;
    BOOL _isOwner;
    BOOL _isShared;
    MSGraphWellknownListName* _wellknownListName;
    NSArray* _extensions;
    NSArray* _tasks;
}
@end

@implementation MSGraphTodoTaskList

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.todoTaskList";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isOwner
{
    _isOwner = [self.dictionary[@"isOwner"] boolValue];
    return _isOwner;
}

- (void) setIsOwner: (BOOL) val
{
    _isOwner = val;
    self.dictionary[@"isOwner"] = @(val);
}

- (BOOL) isShared
{
    _isShared = [self.dictionary[@"isShared"] boolValue];
    return _isShared;
}

- (void) setIsShared: (BOOL) val
{
    _isShared = val;
    self.dictionary[@"isShared"] = @(val);
}

- (MSGraphWellknownListName*) wellknownListName
{
    if(!_wellknownListName){
        _wellknownListName = [self.dictionary[@"wellknownListName"] toMSGraphWellknownListName];
    }
    return _wellknownListName;
}

- (void) setWellknownListName: (MSGraphWellknownListName*) val
{
    _wellknownListName = val;
    self.dictionary[@"wellknownListName"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}

- (NSArray*) tasks
{
    if(!_tasks){
        
    NSMutableArray *tasksResult = [NSMutableArray array];
    NSArray *tasks = self.dictionary[@"tasks"];

    if ([tasks isKindOfClass:[NSArray class]]){
        for (id tempTodoTask in tasks){
            [tasksResult addObject:tempTodoTask];
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
