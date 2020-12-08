// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphUriClickSecurityState : MSObject

@property (nullable, nonatomic, setter=setClickAction:, getter=clickAction) NSString* clickAction;
@property (nullable, nonatomic, setter=setClickDateTime:, getter=clickDateTime) NSDate* clickDateTime;
@property (nullable, nonatomic, setter=setUriClickSecurityStateId:, getter=uriClickSecurityStateId) NSString* uriClickSecurityStateId;
@property (nullable, nonatomic, setter=setSourceId:, getter=sourceId) NSString* sourceId;
@property (nullable, nonatomic, setter=setUriDomain:, getter=uriDomain) NSString* uriDomain;
@property (nullable, nonatomic, setter=setVerdict:, getter=verdict) NSString* verdict;

@end
