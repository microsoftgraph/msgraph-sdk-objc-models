// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphProvisioningStatusErrorCategory.h"


#import "MSObject.h"

@interface MSGraphProvisioningErrorInfo : MSObject

@property (nullable, nonatomic, setter=setAdditionalDetails:, getter=additionalDetails) NSString* additionalDetails;
@property (nullable, nonatomic, setter=setErrorCategory:, getter=errorCategory) MSGraphProvisioningStatusErrorCategory* errorCategory;
@property (nullable, nonatomic, setter=setErrorCode:, getter=errorCode) NSString* errorCode;
@property (nullable, nonatomic, setter=setReason:, getter=reason) NSString* reason;
@property (nullable, nonatomic, setter=setRecommendedAction:, getter=recommendedAction) NSString* recommendedAction;

@end
