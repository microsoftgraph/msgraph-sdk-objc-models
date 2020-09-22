// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppMsiPackageType.h"


#import "MSObject.h"

@interface MSGraphWin32LobAppMsiInformation : MSObject

@property (nonnull, nonatomic, setter=setPackageType:, getter=packageType) MSGraphWin32LobAppMsiPackageType* packageType;
@property (nullable, nonatomic, setter=setProductCode:, getter=productCode) NSString* productCode;
@property (nullable, nonatomic, setter=setProductName:, getter=productName) NSString* productName;
@property (nullable, nonatomic, setter=setProductVersion:, getter=productVersion) NSString* productVersion;
@property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;
@property (nonatomic, setter=setRequiresReboot:, getter=requiresReboot) BOOL requiresReboot;
@property (nullable, nonatomic, setter=setUpgradeCode:, getter=upgradeCode) NSString* upgradeCode;

@end
