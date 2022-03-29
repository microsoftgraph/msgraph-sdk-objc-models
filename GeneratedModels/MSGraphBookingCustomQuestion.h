// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAnswerInputType.h"


#import "MSGraphEntity.h"

@interface MSGraphBookingCustomQuestion : MSGraphEntity

  @property (nullable, nonatomic, setter=setAnswerInputType:, getter=answerInputType) MSGraphAnswerInputType* answerInputType;
    @property (nullable, nonatomic, setter=setAnswerOptions:, getter=answerOptions) NSArray* answerOptions;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
  
@end
