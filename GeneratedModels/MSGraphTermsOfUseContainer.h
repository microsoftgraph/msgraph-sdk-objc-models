// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAgreementAcceptance, MSGraphAgreement; 


#import "MSGraphEntity.h"

@interface MSGraphTermsOfUseContainer : MSGraphEntity

  @property (nullable, nonatomic, setter=setAgreementAcceptances:, getter=agreementAcceptances) NSArray* agreementAcceptances;
    @property (nullable, nonatomic, setter=setAgreements:, getter=agreements) NSArray* agreements;
  
@end
