// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintOperationProcessingState.h"


#import "MSObject.h"

@interface MSGraphPrintOperationStatus : MSObject

@property (nonnull, nonatomic, setter=setPrintOperationStatusDescription:, getter=printOperationStatusDescription) NSString* printOperationStatusDescription;
@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphPrintOperationProcessingState* state;

@end
