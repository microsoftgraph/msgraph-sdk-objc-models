// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAlterationResponse, MSGraphSearchResultSet; 


#import "MSObject.h"

@interface MSGraphSearchResponse : MSObject

@property (nullable, nonatomic, setter=setQueryAlterationResponse:, getter=queryAlterationResponse) MSGraphAlterationResponse* queryAlterationResponse;
@property (nonnull, nonatomic, setter=setValue:, getter=value) NSArray* value;

@end
