// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphKeyValue; 


#import "MSObject.h"

@interface MSGraphAddIn : MSObject

@property (nullable, nonatomic, setter=setAddInId:, getter=addInId) NSString* addInId;
@property (nonnull, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nonnull, nonatomic, setter=setProperties:, getter=properties) NSArray* properties;

@end
