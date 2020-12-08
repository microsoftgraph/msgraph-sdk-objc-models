// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAlertDetection : MSObject

@property (nullable, nonatomic, setter=setDetectionType:, getter=detectionType) NSString* detectionType;
@property (nullable, nonatomic, setter=setMethod:, getter=method) NSString* method;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;

@end
