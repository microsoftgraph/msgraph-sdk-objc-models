// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintJob()
{
    MSGraphPrintJobConfiguration* _configuration;
    MSGraphUserIdentity* _createdBy;
    NSDate* _createdDateTime;
    BOOL _isFetchable;
    NSString* _redirectedFrom;
    NSString* _redirectedTo;
    MSGraphPrintJobStatus* _status;
    NSArray* _documents;
    NSArray* _tasks;
}
@end

@implementation MSGraphPrintJob

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printJob";
    }
    return self;
}
- (MSGraphPrintJobConfiguration*) configuration
{
    if(!_configuration){
        _configuration = [[MSGraphPrintJobConfiguration alloc] initWithDictionary: self.dictionary[@"configuration"]];
    }
    return _configuration;
}

- (void) setConfiguration: (MSGraphPrintJobConfiguration*) val
{
    _configuration = val;
    self.dictionary[@"configuration"] = val;
}

- (MSGraphUserIdentity*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphUserIdentity alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphUserIdentity*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
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

- (BOOL) isFetchable
{
    _isFetchable = [self.dictionary[@"isFetchable"] boolValue];
    return _isFetchable;
}

- (void) setIsFetchable: (BOOL) val
{
    _isFetchable = val;
    self.dictionary[@"isFetchable"] = @(val);
}

- (NSString*) redirectedFrom
{
    if([[NSNull null] isEqual:self.dictionary[@"redirectedFrom"]])
    {
        return nil;
    }   
    return self.dictionary[@"redirectedFrom"];
}

- (void) setRedirectedFrom: (NSString*) val
{
    self.dictionary[@"redirectedFrom"] = val;
}

- (NSString*) redirectedTo
{
    if([[NSNull null] isEqual:self.dictionary[@"redirectedTo"]])
    {
        return nil;
    }   
    return self.dictionary[@"redirectedTo"];
}

- (void) setRedirectedTo: (NSString*) val
{
    self.dictionary[@"redirectedTo"] = val;
}

- (MSGraphPrintJobStatus*) status
{
    if(!_status){
        _status = [[MSGraphPrintJobStatus alloc] initWithDictionary: self.dictionary[@"status"]];
    }
    return _status;
}

- (void) setStatus: (MSGraphPrintJobStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) documents
{
    if(!_documents){
        
    NSMutableArray *documentsResult = [NSMutableArray array];
    NSArray *documents = self.dictionary[@"documents"];

    if ([documents isKindOfClass:[NSArray class]]){
        for (id tempPrintDocument in documents){
            [documentsResult addObject:tempPrintDocument];
        }
    }

    _documents = documentsResult;
        
    }
    return _documents;
}

- (void) setDocuments: (NSArray*) val
{
    _documents = val;
    self.dictionary[@"documents"] = val;
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
