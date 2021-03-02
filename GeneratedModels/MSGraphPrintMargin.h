// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPrintMargin : MSObject

@property (nonatomic, setter=setBottom:, getter=bottom) int32_t bottom;
@property (nonatomic, setter=setLeft:, getter=left) int32_t left;
@property (nonatomic, setter=setRight:, getter=right) int32_t right;
@property (nonatomic, setter=setTop:, getter=top) int32_t top;

@end
