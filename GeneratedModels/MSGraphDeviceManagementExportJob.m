// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagementExportJob()
{
    NSDate* _expirationDateTime;
    NSString* _filter;
    MSGraphDeviceManagementReportFileFormat* _format;
    MSGraphDeviceManagementExportJobLocalizationType* _localizationType;
    NSString* _reportName;
    NSDate* _requestDateTime;
    NSArray* _select;
    NSString* _snapshotId;
    MSGraphDeviceManagementReportStatus* _status;
    NSString* _url;
}
@end

@implementation MSGraphDeviceManagementExportJob

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceManagementExportJob";
    }
    return self;
}
- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSString*) filter
{
    if([[NSNull null] isEqual:self.dictionary[@"filter"]])
    {
        return nil;
    }   
    return self.dictionary[@"filter"];
}

- (void) setFilter: (NSString*) val
{
    self.dictionary[@"filter"] = val;
}

- (MSGraphDeviceManagementReportFileFormat*) format
{
    if(!_format){
        _format = [self.dictionary[@"format"] toMSGraphDeviceManagementReportFileFormat];
    }
    return _format;
}

- (void) setFormat: (MSGraphDeviceManagementReportFileFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}

- (MSGraphDeviceManagementExportJobLocalizationType*) localizationType
{
    if(!_localizationType){
        _localizationType = [self.dictionary[@"localizationType"] toMSGraphDeviceManagementExportJobLocalizationType];
    }
    return _localizationType;
}

- (void) setLocalizationType: (MSGraphDeviceManagementExportJobLocalizationType*) val
{
    _localizationType = val;
    self.dictionary[@"localizationType"] = val;
}

- (NSString*) reportName
{
    return self.dictionary[@"reportName"];
}

- (void) setReportName: (NSString*) val
{
    self.dictionary[@"reportName"] = val;
}

- (NSDate*) requestDateTime
{
    if(!_requestDateTime){
        _requestDateTime = [NSDate ms_dateFromString: self.dictionary[@"requestDateTime"]];
    }
    return _requestDateTime;
}

- (void) setRequestDateTime: (NSDate*) val
{
    _requestDateTime = val;
    self.dictionary[@"requestDateTime"] = [val ms_toString];
}

- (NSArray*) select
{
    if([[NSNull null] isEqual:self.dictionary[@"select"]])
    {
        return nil;
    }   
    return self.dictionary[@"select"];
}

- (void) setSelect: (NSArray*) val
{
    self.dictionary[@"select"] = val;
}

- (NSString*) snapshotId
{
    if([[NSNull null] isEqual:self.dictionary[@"snapshotId"]])
    {
        return nil;
    }   
    return self.dictionary[@"snapshotId"];
}

- (void) setSnapshotId: (NSString*) val
{
    self.dictionary[@"snapshotId"] = val;
}

- (MSGraphDeviceManagementReportStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphDeviceManagementReportStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphDeviceManagementReportStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) url
{
    if([[NSNull null] isEqual:self.dictionary[@"url"]])
    {
        return nil;
    }   
    return self.dictionary[@"url"];
}

- (void) setUrl: (NSString*) val
{
    self.dictionary[@"url"] = val;
}


@end
