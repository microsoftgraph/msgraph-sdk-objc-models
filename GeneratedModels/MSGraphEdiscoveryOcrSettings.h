// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 


#import "MSObject.h"

@interface MSGraphEdiscoveryOcrSettings : MSObject

@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nonatomic, setter=setMaxImageSize:, getter=maxImageSize) int32_t maxImageSize;
@property (nullable, nonatomic, setter=setTimeout:, getter=timeout) MSDuration* timeout;

@end
