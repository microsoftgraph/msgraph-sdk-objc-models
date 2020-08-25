// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallTranscriptionState.h"


#import "MSObject.h"

@interface MSGraphCallTranscriptionInfo : MSObject

@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphCallTranscriptionState* state;
@property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;

@end
