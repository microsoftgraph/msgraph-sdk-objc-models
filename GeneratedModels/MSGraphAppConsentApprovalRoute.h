// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppConsentRequest; 


#import "MSGraphEntity.h"

@interface MSGraphAppConsentApprovalRoute : MSGraphEntity

  @property (nullable, nonatomic, setter=setAppConsentRequests:, getter=appConsentRequests) NSArray* appConsentRequests;
  
@end
