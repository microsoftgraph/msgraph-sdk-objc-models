// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPublicError; 


#import "MSObject.h"

@interface MSGraphActionResultPart : MSObject

@property (nullable, nonatomic, setter=setError:, getter=error) MSGraphPublicError* error;

@end
