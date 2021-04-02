// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphProvisioningErrorInfo; 
#import "MSGraphProvisioningResult.h"


#import "MSObject.h"

@interface MSGraphProvisioningStatusInfo : MSObject

@property (nullable, nonatomic, setter=setErrorInformation:, getter=errorInformation) MSGraphProvisioningErrorInfo* errorInformation;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphProvisioningResult* status;

@end
