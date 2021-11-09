// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDisplayNameLocalization; 


#import "MSObject.h"

@interface MSGraphColumnValidation : MSObject

@property (nullable, nonatomic, setter=setDefaultLanguage:, getter=defaultLanguage) NSString* defaultLanguage;
@property (nullable, nonatomic, setter=setDescriptions:, getter=descriptions) NSArray* descriptions;
@property (nullable, nonatomic, setter=setFormula:, getter=formula) NSString* formula;

@end
