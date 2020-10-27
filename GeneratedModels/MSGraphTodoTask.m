// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTodoTask()
{
    MSGraphItemBody* _body;
    NSDate* _bodyLastModifiedDateTime;
    MSGraphDateTimeTimeZone* _completedDateTime;
    NSDate* _createdDateTime;
    MSGraphDateTimeTimeZone* _dueDateTime;
    MSGraphImportance* _importance;
    BOOL _isReminderOn;
    NSDate* _lastModifiedDateTime;
    MSGraphPatternedRecurrence* _recurrence;
    MSGraphDateTimeTimeZone* _reminderDateTime;
    MSGraphTaskStatus* _status;
    NSString* _title;
    NSArray* _extensions;
    NSArray* _linkedResources;
}
@end

@implementation MSGraphTodoTask

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.todoTask";
    }
    return self;
}
- (MSGraphItemBody*) body
{
    if(!_body){
        _body = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"body"]];
    }
    return _body;
}

- (void) setBody: (MSGraphItemBody*) val
{
    _body = val;
    self.dictionary[@"body"] = val;
}

- (NSDate*) bodyLastModifiedDateTime
{
    if(!_bodyLastModifiedDateTime){
        _bodyLastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"bodyLastModifiedDateTime"]];
    }
    return _bodyLastModifiedDateTime;
}

- (void) setBodyLastModifiedDateTime: (NSDate*) val
{
    _bodyLastModifiedDateTime = val;
    self.dictionary[@"bodyLastModifiedDateTime"] = [val ms_toString];
}

- (MSGraphDateTimeTimeZone*) completedDateTime
{
    if(!_completedDateTime){
        _completedDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"completedDateTime"]];
    }
    return _completedDateTime;
}

- (void) setCompletedDateTime: (MSGraphDateTimeTimeZone*) val
{
    _completedDateTime = val;
    self.dictionary[@"completedDateTime"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphDateTimeTimeZone*) dueDateTime
{
    if(!_dueDateTime){
        _dueDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"dueDateTime"]];
    }
    return _dueDateTime;
}

- (void) setDueDateTime: (MSGraphDateTimeTimeZone*) val
{
    _dueDateTime = val;
    self.dictionary[@"dueDateTime"] = val;
}

- (MSGraphImportance*) importance
{
    if(!_importance){
        _importance = [self.dictionary[@"importance"] toMSGraphImportance];
    }
    return _importance;
}

- (void) setImportance: (MSGraphImportance*) val
{
    _importance = val;
    self.dictionary[@"importance"] = val;
}

- (BOOL) isReminderOn
{
    _isReminderOn = [self.dictionary[@"isReminderOn"] boolValue];
    return _isReminderOn;
}

- (void) setIsReminderOn: (BOOL) val
{
    _isReminderOn = val;
    self.dictionary[@"isReminderOn"] = @(val);
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (MSGraphPatternedRecurrence*) recurrence
{
    if(!_recurrence){
        _recurrence = [[MSGraphPatternedRecurrence alloc] initWithDictionary: self.dictionary[@"recurrence"]];
    }
    return _recurrence;
}

- (void) setRecurrence: (MSGraphPatternedRecurrence*) val
{
    _recurrence = val;
    self.dictionary[@"recurrence"] = val;
}

- (MSGraphDateTimeTimeZone*) reminderDateTime
{
    if(!_reminderDateTime){
        _reminderDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"reminderDateTime"]];
    }
    return _reminderDateTime;
}

- (void) setReminderDateTime: (MSGraphDateTimeTimeZone*) val
{
    _reminderDateTime = val;
    self.dictionary[@"reminderDateTime"] = val;
}

- (MSGraphTaskStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphTaskStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphTaskStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
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

- (NSArray*) linkedResources
{
    if(!_linkedResources){
        
    NSMutableArray *linkedResourcesResult = [NSMutableArray array];
    NSArray *linkedResources = self.dictionary[@"linkedResources"];

    if ([linkedResources isKindOfClass:[NSArray class]]){
        for (id tempLinkedResource in linkedResources){
            [linkedResourcesResult addObject:tempLinkedResource];
        }
    }

    _linkedResources = linkedResourcesResult;
        
    }
    return _linkedResources;
}

- (void) setLinkedResources: (NSArray*) val
{
    _linkedResources = val;
    self.dictionary[@"linkedResources"] = val;
}


@end
