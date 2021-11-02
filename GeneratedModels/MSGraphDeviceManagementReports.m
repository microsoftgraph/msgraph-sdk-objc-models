// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagementReports()
{
    NSArray* _exportJobs;
}
@end

@implementation MSGraphDeviceManagementReports

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceManagementReports";
    }
    return self;
}
- (NSArray*) exportJobs
{
    if(!_exportJobs){
        
    NSMutableArray *exportJobsResult = [NSMutableArray array];
    NSArray *exportJobs = self.dictionary[@"exportJobs"];

    if ([exportJobs isKindOfClass:[NSArray class]]){
        for (id tempDeviceManagementExportJob in exportJobs){
            [exportJobsResult addObject:tempDeviceManagementExportJob];
        }
    }

    _exportJobs = exportJobsResult;
        
    }
    return _exportJobs;
}

- (void) setExportJobs: (NSArray*) val
{
    _exportJobs = val;
    self.dictionary[@"exportJobs"] = val;
}


@end
