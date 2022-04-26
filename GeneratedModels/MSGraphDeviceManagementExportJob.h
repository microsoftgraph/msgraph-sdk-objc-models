// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceManagementReportFileFormat.h"
#import "MSGraphDeviceManagementExportJobLocalizationType.h"
#import "MSGraphDeviceManagementReportStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceManagementExportJob : MSGraphEntity

  @property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nullable, nonatomic, setter=setFilter:, getter=filter) NSString* filter;
    @property (nonnull, nonatomic, setter=setFormat:, getter=format) MSGraphDeviceManagementReportFileFormat* format;
    @property (nonnull, nonatomic, setter=setLocalizationType:, getter=localizationType) MSGraphDeviceManagementExportJobLocalizationType* localizationType;
    @property (nonnull, nonatomic, setter=setReportName:, getter=reportName) NSString* reportName;
    @property (nonnull, nonatomic, setter=setRequestDateTime:, getter=requestDateTime) NSDate* requestDateTime;
    @property (nullable, nonatomic, setter=setSelect:, getter=select) NSArray* select;
    @property (nullable, nonatomic, setter=setSnapshotId:, getter=snapshotId) NSString* snapshotId;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphDeviceManagementReportStatus* status;
    @property (nullable, nonatomic, setter=setUrl:, getter=url) NSString* url;
  
@end
