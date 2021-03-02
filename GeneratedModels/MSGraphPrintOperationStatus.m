// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintOperationStatus()
{
    NSString* _printOperationStatusDescription;
    MSGraphPrintOperationProcessingState* _state;
}
@end

@implementation MSGraphPrintOperationStatus

- (NSString*) printOperationStatusDescription
{
    return self.dictionary[@"description"];
}

- (void) setPrintOperationStatusDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphPrintOperationProcessingState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphPrintOperationProcessingState];
    }
    return _state;
}

- (void) setState: (MSGraphPrintOperationProcessingState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

@end
