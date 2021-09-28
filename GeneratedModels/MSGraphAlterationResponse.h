// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSearchAlteration; 
#import "MSGraphSearchAlterationType.h"


#import "MSObject.h"

@interface MSGraphAlterationResponse : MSObject

@property (nullable, nonatomic, setter=setOriginalQueryString:, getter=originalQueryString) NSString* originalQueryString;
@property (nullable, nonatomic, setter=setQueryAlteration:, getter=queryAlteration) MSGraphSearchAlteration* queryAlteration;
@property (nullable, nonatomic, setter=setQueryAlterationType:, getter=queryAlterationType) MSGraphSearchAlterationType* queryAlterationType;

@end
