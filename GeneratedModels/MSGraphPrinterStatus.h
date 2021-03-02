// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrinterProcessingStateDetail.h"
#import "MSGraphPrinterProcessingState.h"


#import "MSObject.h"

@interface MSGraphPrinterStatus : MSObject

@property (nullable, nonatomic, setter=setPrinterStatusDescription:, getter=printerStatusDescription) NSString* printerStatusDescription;
@property (nonnull, nonatomic, setter=setDetails:, getter=details) NSArray* details;
@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphPrinterProcessingState* state;

@end
