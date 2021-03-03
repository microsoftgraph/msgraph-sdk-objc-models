// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintTaskProcessingState.h"


#import "MSObject.h"

@interface MSGraphPrintTaskStatus : MSObject

@property (nonnull, nonatomic, setter=setPrintTaskStatusDescription:, getter=printTaskStatusDescription) NSString* printTaskStatusDescription;
@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphPrintTaskProcessingState* state;

@end
