// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphTermStoreTerm, MSGraphTermStoreSet; 


#import "MSObject.h"

@interface MSGraphTermColumn : MSObject

@property (nonatomic, setter=setAllowMultipleValues:, getter=allowMultipleValues) BOOL allowMultipleValues;
@property (nonatomic, setter=setShowFullyQualifiedName:, getter=showFullyQualifiedName) BOOL showFullyQualifiedName;
@property (nullable, nonatomic, setter=setParentTerm:, getter=parentTerm) MSGraphTermStoreTerm* parentTerm;
@property (nullable, nonatomic, setter=setTermSet:, getter=termSet) MSGraphTermStoreSet* termSet;

@end
