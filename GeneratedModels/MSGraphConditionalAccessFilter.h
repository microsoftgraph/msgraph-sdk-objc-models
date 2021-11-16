// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFilterMode.h"


#import "MSObject.h"

@interface MSGraphConditionalAccessFilter : MSObject

@property (nonnull, nonatomic, setter=setMode:, getter=mode) MSGraphFilterMode* mode;
@property (nonnull, nonatomic, setter=setRule:, getter=rule) NSString* rule;

@end
