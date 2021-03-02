// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphGroup, MSGraphUser, MSGraphPrinter; 


#import "MSGraphPrinterBase.h"

@interface MSGraphPrinterShare : MSGraphPrinterBase

  @property (nonatomic, setter=setAllowAllUsers:, getter=allowAllUsers) BOOL allowAllUsers;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setAllowedGroups:, getter=allowedGroups) NSArray* allowedGroups;
    @property (nullable, nonatomic, setter=setAllowedUsers:, getter=allowedUsers) NSArray* allowedUsers;
    @property (nullable, nonatomic, setter=setPrinter:, getter=printer) MSGraphPrinter* printer;
  
@end
