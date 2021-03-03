// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphArchivedPrintJob()
{
    BOOL _acquiredByPrinter;
    NSDate* _acquiredDateTime;
    NSDate* _completionDateTime;
    int32_t _copiesPrinted;
    MSGraphUserIdentity* _createdBy;
    NSDate* _createdDateTime;
    NSString* _archivedPrintJobId;
    NSString* _printerId;
    MSGraphPrintJobProcessingState* _processingState;
}
@end

@implementation MSGraphArchivedPrintJob

- (BOOL) acquiredByPrinter
{
    _acquiredByPrinter = [self.dictionary[@"acquiredByPrinter"] boolValue];
    return _acquiredByPrinter;
}

- (void) setAcquiredByPrinter: (BOOL) val
{
    _acquiredByPrinter = val;
    self.dictionary[@"acquiredByPrinter"] = @(val);
}

- (NSDate*) acquiredDateTime
{
    if(!_acquiredDateTime){
        _acquiredDateTime = [NSDate ms_dateFromString: self.dictionary[@"acquiredDateTime"]];
    }
    return _acquiredDateTime;
}

- (void) setAcquiredDateTime: (NSDate*) val
{
    _acquiredDateTime = val;
    self.dictionary[@"acquiredDateTime"] = [val ms_toString];
}

- (NSDate*) completionDateTime
{
    if(!_completionDateTime){
        _completionDateTime = [NSDate ms_dateFromString: self.dictionary[@"completionDateTime"]];
    }
    return _completionDateTime;
}

- (void) setCompletionDateTime: (NSDate*) val
{
    _completionDateTime = val;
    self.dictionary[@"completionDateTime"] = [val ms_toString];
}

- (int32_t) copiesPrinted
{
    _copiesPrinted = [self.dictionary[@"copiesPrinted"] intValue];
    return _copiesPrinted;
}

- (void) setCopiesPrinted: (int32_t) val
{
    _copiesPrinted = val;
    self.dictionary[@"copiesPrinted"] = @(val);
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

- (NSString*) archivedPrintJobId
{
    return self.dictionary[@"id"];
}

- (void) setArchivedPrintJobId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) printerId
{
    if([[NSNull null] isEqual:self.dictionary[@"printerId"]])
    {
        return nil;
    }   
    return self.dictionary[@"printerId"];
}

- (void) setPrinterId: (NSString*) val
{
    self.dictionary[@"printerId"] = val;
}

- (MSGraphPrintJobProcessingState*) processingState
{
    if(!_processingState){
        _processingState = [self.dictionary[@"processingState"] toMSGraphPrintJobProcessingState];
    }
    return _processingState;
}

- (void) setProcessingState: (MSGraphPrintJobProcessingState*) val
{
    _processingState = val;
    self.dictionary[@"processingState"] = val;
}

@end
