// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAgreementFileData; 


#import "MSGraphEntity.h"

@interface MSGraphAgreementFileProperties : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setFileData:, getter=fileData) MSGraphAgreementFileData* fileData;
    @property (nullable, nonatomic, setter=setFileName:, getter=fileName) NSString* fileName;
    @property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
    @property (nonatomic, setter=setIsMajorVersion:, getter=isMajorVersion) BOOL isMajorVersion;
    @property (nullable, nonatomic, setter=setLanguage:, getter=language) NSString* language;
  
@end
