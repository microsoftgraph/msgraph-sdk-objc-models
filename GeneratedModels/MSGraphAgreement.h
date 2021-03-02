// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermsExpiration, MSDuration, MSGraphAgreementAcceptance, MSGraphAgreementFile, MSGraphAgreementFileLocalization; 


#import "MSGraphEntity.h"

@interface MSGraphAgreement : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsPerDeviceAcceptanceRequired:, getter=isPerDeviceAcceptanceRequired) BOOL isPerDeviceAcceptanceRequired;
    @property (nonatomic, setter=setIsViewingBeforeAcceptanceRequired:, getter=isViewingBeforeAcceptanceRequired) BOOL isViewingBeforeAcceptanceRequired;
    @property (nullable, nonatomic, setter=setTermsExpiration:, getter=termsExpiration) MSGraphTermsExpiration* termsExpiration;
    @property (nullable, nonatomic, setter=setUserReacceptRequiredFrequency:, getter=userReacceptRequiredFrequency) MSDuration* userReacceptRequiredFrequency;
    @property (nullable, nonatomic, setter=setAcceptances:, getter=acceptances) NSArray* acceptances;
    @property (nullable, nonatomic, setter=setFile:, getter=file) MSGraphAgreementFile* file;
    @property (nullable, nonatomic, setter=setFiles:, getter=files) NSArray* files;
  
@end
