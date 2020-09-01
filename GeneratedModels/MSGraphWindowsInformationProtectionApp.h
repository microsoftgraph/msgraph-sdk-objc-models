// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWindowsInformationProtectionApp : MSObject

@property (nonatomic, setter=setDenied:, getter=denied) BOOL denied;
@property (nullable, nonatomic, setter=setWindowsInformationProtectionAppDescription:, getter=windowsInformationProtectionAppDescription) NSString* windowsInformationProtectionAppDescription;
@property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setProductName:, getter=productName) NSString* productName;
@property (nullable, nonatomic, setter=setPublisherName:, getter=publisherName) NSString* publisherName;

@end
