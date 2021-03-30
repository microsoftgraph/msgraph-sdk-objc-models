// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphApproval; 


#import "MSGraphRequest.h"

@interface MSGraphUserConsentRequest : MSGraphRequest

  @property (nullable, nonatomic, setter=setReason:, getter=reason) NSString* reason;
    @property (nullable, nonatomic, setter=setApproval:, getter=approval) MSGraphApproval* approval;
  
@end
