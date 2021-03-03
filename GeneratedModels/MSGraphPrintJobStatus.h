// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintJobStateDetail.h"
#import "MSGraphPrintJobProcessingState.h"


#import "MSObject.h"

@interface MSGraphPrintJobStatus : MSObject

@property (nonnull, nonatomic, setter=setPrintJobStatusDescription:, getter=printJobStatusDescription) NSString* printJobStatusDescription;
@property (nonnull, nonatomic, setter=setDetails:, getter=details) NSArray* details;
@property (nonatomic, setter=setIsAcquiredByPrinter:, getter=isAcquiredByPrinter) BOOL isAcquiredByPrinter;
@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphPrintJobProcessingState* state;

@end
