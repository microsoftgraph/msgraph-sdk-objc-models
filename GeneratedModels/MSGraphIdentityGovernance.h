// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermsOfUseContainer; 


#import "MSObject.h"

@interface MSGraphIdentityGovernance : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setTermsOfUse:, getter=termsOfUse) MSGraphTermsOfUseContainer* termsOfUse;
  
@end
