// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceManagementExportJob; 


#import "MSGraphEntity.h"

@interface MSGraphDeviceManagementReports : MSGraphEntity

  @property (nullable, nonatomic, setter=setExportJobs:, getter=exportJobs) NSArray* exportJobs;
  
@end
