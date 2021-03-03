// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphIntegerRange : MSObject

@property (nonatomic, setter=setEnd:, getter=end) int64_t end;
@property (nonatomic, setter=setStart:, getter=start) int64_t start;

@end
