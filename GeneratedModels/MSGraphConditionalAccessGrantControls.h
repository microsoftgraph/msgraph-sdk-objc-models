// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessGrantControl.h"


#import "MSObject.h"

@interface MSGraphConditionalAccessGrantControls : MSObject

@property (nonnull, nonatomic, setter=setBuiltInControls:, getter=builtInControls) NSArray* builtInControls;
@property (nonnull, nonatomic, setter=setCustomAuthenticationFactors:, getter=customAuthenticationFactors) NSArray* customAuthenticationFactors;
@property (nullable, nonatomic, setter=setOperator:, getter=operator) NSString* operator;
@property (nonnull, nonatomic, setter=setTermsOfUse:, getter=termsOfUse) NSArray* termsOfUse;

@end
