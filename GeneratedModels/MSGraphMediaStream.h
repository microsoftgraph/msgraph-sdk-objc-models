// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMediaDirection.h"
#import "MSGraphModality.h"


#import "MSObject.h"

@interface MSGraphMediaStream : MSObject

@property (nonnull, nonatomic, setter=setDirection:, getter=direction) MSGraphMediaDirection* direction;
@property (nullable, nonatomic, setter=setLabel:, getter=label) NSString* label;
@property (nonnull, nonatomic, setter=setMediaType:, getter=mediaType) MSGraphModality* mediaType;
@property (nonatomic, setter=setServerMuted:, getter=serverMuted) BOOL serverMuted;
@property (nonnull, nonatomic, setter=setSourceId:, getter=sourceId) NSString* sourceId;

@end
