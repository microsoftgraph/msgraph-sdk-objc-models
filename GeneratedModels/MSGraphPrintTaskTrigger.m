// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintTaskTrigger()
{
    MSGraphPrintEvent* _event;
    MSGraphPrintTaskDefinition* _definition;
}
@end

@implementation MSGraphPrintTaskTrigger

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printTaskTrigger";
    }
    return self;
}
- (MSGraphPrintEvent*) event
{
    if(!_event){
        _event = [self.dictionary[@"event"] toMSGraphPrintEvent];
    }
    return _event;
}

- (void) setEvent: (MSGraphPrintEvent*) val
{
    _event = val;
    self.dictionary[@"event"] = val;
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


@end
