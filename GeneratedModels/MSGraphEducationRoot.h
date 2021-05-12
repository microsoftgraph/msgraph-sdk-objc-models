// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationClass, MSGraphEducationUser, MSGraphEducationSchool; 


#import "MSObject.h"

@interface MSGraphEducationRoot : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setClasses:, getter=classes) NSArray* classes;
    @property (nullable, nonatomic, setter=setMe:, getter=me) MSGraphEducationUser* me;
    @property (nullable, nonatomic, setter=setSchools:, getter=schools) NSArray* schools;
    @property (nullable, nonatomic, setter=setUsers:, getter=users) NSArray* users;
  
@end
