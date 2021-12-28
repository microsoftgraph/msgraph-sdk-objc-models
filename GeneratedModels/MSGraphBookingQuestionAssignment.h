// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphBookingQuestionAssignment : MSObject

@property (nonatomic, setter=setIsRequired:, getter=isRequired) BOOL isRequired;
@property (nonnull, nonatomic, setter=setQuestionId:, getter=questionId) NSString* questionId;

@end
