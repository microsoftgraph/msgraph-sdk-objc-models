// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAgreementFileLocalization; 


#import "MSGraphAgreementFileProperties.h"

@interface MSGraphAgreementFile : MSGraphAgreementFileProperties

  @property (nullable, nonatomic, setter=setLocalizations:, getter=localizations) NSArray* localizations;
  
@end
