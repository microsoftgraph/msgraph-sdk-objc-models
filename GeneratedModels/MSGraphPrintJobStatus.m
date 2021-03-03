// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintJobStatus()
{
    NSString* _printJobStatusDescription;
    NSArray* _details;
    BOOL _isAcquiredByPrinter;
    MSGraphPrintJobProcessingState* _state;
}
@end

@implementation MSGraphPrintJobStatus

- (NSString*) printJobStatusDescription
{
    return self.dictionary[@"description"];
}

- (void) setPrintJobStatusDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) details
{
    if(!_details){
        
    NSMutableArray *detailsResult = [NSMutableArray array];
    NSArray *details = self.dictionary[@"details"];

    if ([details isKindOfClass:[NSArray class]]){
        for (id tempPrintJobStateDetail in details){
            [detailsResult addObject:tempPrintJobStateDetail];
        }
    }

    _details = detailsResult;
        
    }
    return _details;
}

- (void) setDetails: (NSArray*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (BOOL) isAcquiredByPrinter
{
    _isAcquiredByPrinter = [self.dictionary[@"isAcquiredByPrinter"] boolValue];
    return _isAcquiredByPrinter;
}

- (void) setIsAcquiredByPrinter: (BOOL) val
{
    _isAcquiredByPrinter = val;
    self.dictionary[@"isAcquiredByPrinter"] = @(val);
}

- (MSGraphPrintJobProcessingState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphPrintJobProcessingState];
    }
    return _state;
}

- (void) setState: (MSGraphPrintJobProcessingState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

@end
