// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphEnrollmentState.h"


#import "MSGraphEntity.h"

@interface MSGraphWindowsAutopilotDeviceIdentity : MSGraphEntity

  @property (nullable, nonatomic, setter=setAddressableUserName:, getter=addressableUserName) NSString* addressableUserName;
    @property (nullable, nonatomic, setter=setAzureActiveDirectoryDeviceId:, getter=azureActiveDirectoryDeviceId) NSString* azureActiveDirectoryDeviceId;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setEnrollmentState:, getter=enrollmentState) MSGraphEnrollmentState* enrollmentState;
    @property (nullable, nonatomic, setter=setGroupTag:, getter=groupTag) NSString* groupTag;
    @property (nonnull, nonatomic, setter=setLastContactedDateTime:, getter=lastContactedDateTime) NSDate* lastContactedDateTime;
    @property (nullable, nonatomic, setter=setManagedDeviceId:, getter=managedDeviceId) NSString* managedDeviceId;
    @property (nullable, nonatomic, setter=setManufacturer:, getter=manufacturer) NSString* manufacturer;
    @property (nullable, nonatomic, setter=setModel:, getter=model) NSString* model;
    @property (nullable, nonatomic, setter=setProductKey:, getter=productKey) NSString* productKey;
    @property (nullable, nonatomic, setter=setPurchaseOrderIdentifier:, getter=purchaseOrderIdentifier) NSString* purchaseOrderIdentifier;
    @property (nullable, nonatomic, setter=setResourceName:, getter=resourceName) NSString* resourceName;
    @property (nullable, nonatomic, setter=setSerialNumber:, getter=serialNumber) NSString* serialNumber;
    @property (nullable, nonatomic, setter=setSkuNumber:, getter=skuNumber) NSString* skuNumber;
    @property (nullable, nonatomic, setter=setSystemFamily:, getter=systemFamily) NSString* systemFamily;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
  
@end
