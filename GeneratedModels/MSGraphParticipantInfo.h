// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 
#import "MSGraphEndpointType.h"


#import "MSObject.h"

@interface MSGraphParticipantInfo : MSObject

@property (nullable, nonatomic, setter=setCountryCode:, getter=countryCode) NSString* countryCode;
@property (nullable, nonatomic, setter=setEndpointType:, getter=endpointType) MSGraphEndpointType* endpointType;
@property (nonnull, nonatomic, setter=setIdentity:, getter=identity) MSGraphIdentitySet* identity;
@property (nullable, nonatomic, setter=setLanguageId:, getter=languageId) NSString* languageId;
@property (nullable, nonatomic, setter=setRegion:, getter=region) NSString* region;

@end
