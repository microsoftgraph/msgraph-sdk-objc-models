// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAccessReviewReviewerScope : MSObject

@property (nullable, nonatomic, setter=setQuery:, getter=query) NSString* query;
@property (nullable, nonatomic, setter=setQueryRoot:, getter=queryRoot) NSString* queryRoot;
@property (nullable, nonatomic, setter=setQueryType:, getter=queryType) NSString* queryType;

@end
