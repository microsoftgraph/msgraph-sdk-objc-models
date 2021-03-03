// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintTask()
{
    NSString* _parentUrl;
    MSGraphPrintTaskStatus* _status;
    MSGraphPrintTaskDefinition* _definition;
    MSGraphPrintTaskTrigger* _trigger;
}
@end

@implementation MSGraphPrintTask

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printTask";
    }
    return self;
}
- (NSString*) parentUrl
{
    return self.dictionary[@"parentUrl"];
}

- (void) setParentUrl: (NSString*) val
{
    self.dictionary[@"parentUrl"] = val;
}

- (MSGraphPrintTaskStatus*) status
{
    if(!_status){
        _status = [[MSGraphPrintTaskStatus alloc] initWithDictionary: self.dictionary[@"status"]];
    }
    return _status;
}

- (void) setStatus: (MSGraphPrintTaskStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphPrintTaskDefinition*) definition
{
    if(!_definition){
        _definition = [[MSGraphPrintTaskDefinition alloc] initWithDictionary: self.dictionary[@"definition"]];
    }
    return _definition;
}

- (void) setDefinition: (MSGraphPrintTaskDefinition*) val
{
    _definition = val;
    self.dictionary[@"definition"] = val;
}

- (MSGraphPrintTaskTrigger*) trigger
{
    if(!_trigger){
        _trigger = [[MSGraphPrintTaskTrigger alloc] initWithDictionary: self.dictionary[@"trigger"]];
    }
    return _trigger;
}

- (void) setTrigger: (MSGraphPrintTaskTrigger*) val
{
    _trigger = val;
    self.dictionary[@"trigger"] = val;
}


@end
