// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphSubjectSet.h"

@interface MSGraphSingleUser : MSGraphSubjectSet

@property (nullable, nonatomic, setter=setSingleUserDescription:, getter=singleUserDescription) NSString* singleUserDescription;
@property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;

@end
