// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphRubricQualitySelectedColumnModel : MSObject

@property (nullable, nonatomic, setter=setColumnId:, getter=columnId) NSString* columnId;
@property (nullable, nonatomic, setter=setQualityId:, getter=qualityId) NSString* qualityId;

@end
