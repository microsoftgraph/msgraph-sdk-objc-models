// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSortProperty : MSObject

@property (nonatomic, setter=setIsDescending:, getter=isDescending) BOOL isDescending;
@property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;

@end
