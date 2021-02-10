// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAttestationLevel.h"


#import "MSGraphAuthenticationMethod.h"

@interface MSGraphFido2AuthenticationMethod : MSGraphAuthenticationMethod

  @property (nullable, nonatomic, setter=setAaGuid:, getter=aaGuid) NSString* aaGuid;
    @property (nullable, nonatomic, setter=setAttestationCertificates:, getter=attestationCertificates) NSArray* attestationCertificates;
    @property (nullable, nonatomic, setter=setAttestationLevel:, getter=attestationLevel) MSGraphAttestationLevel* attestationLevel;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setModel:, getter=model) NSString* model;
  
@end
