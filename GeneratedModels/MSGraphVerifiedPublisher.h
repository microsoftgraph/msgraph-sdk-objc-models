// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphVerifiedPublisher : MSObject

@property (nullable, nonatomic, setter=setAddedDateTime:, getter=addedDateTime) NSDate* addedDateTime;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setVerifiedPublisherId:, getter=verifiedPublisherId) NSString* verifiedPublisherId;

@end
