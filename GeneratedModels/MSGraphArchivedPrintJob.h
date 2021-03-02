// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphUserIdentity; 
#import "MSGraphPrintJobProcessingState.h"


#import "MSObject.h"

@interface MSGraphArchivedPrintJob : MSObject

@property (nonatomic, setter=setAcquiredByPrinter:, getter=acquiredByPrinter) BOOL acquiredByPrinter;
@property (nullable, nonatomic, setter=setAcquiredDateTime:, getter=acquiredDateTime) NSDate* acquiredDateTime;
@property (nullable, nonatomic, setter=setCompletionDateTime:, getter=completionDateTime) NSDate* completionDateTime;
@property (nonatomic, setter=setCopiesPrinted:, getter=copiesPrinted) int32_t copiesPrinted;
@property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphUserIdentity* createdBy;
@property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
@property (nonnull, nonatomic, setter=setArchivedPrintJobId:, getter=archivedPrintJobId) NSString* archivedPrintJobId;
@property (nullable, nonatomic, setter=setPrinterId:, getter=printerId) NSString* printerId;
@property (nonnull, nonatomic, setter=setProcessingState:, getter=processingState) MSGraphPrintJobProcessingState* processingState;

@end
