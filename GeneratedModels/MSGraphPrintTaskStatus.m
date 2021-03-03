// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintTaskStatus()
{
    NSString* _printTaskStatusDescription;
    MSGraphPrintTaskProcessingState* _state;
}
@end

@implementation MSGraphPrintTaskStatus

- (NSString*) printTaskStatusDescription
{
    return self.dictionary[@"description"];
}

- (void) setPrintTaskStatusDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphPrintTaskProcessingState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphPrintTaskProcessingState];
    }
    return _state;
}

- (void) setState: (MSGraphPrintTaskProcessingState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

@end
