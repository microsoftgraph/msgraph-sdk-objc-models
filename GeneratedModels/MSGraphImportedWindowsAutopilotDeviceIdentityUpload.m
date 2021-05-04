// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphImportedWindowsAutopilotDeviceIdentityUpload()
{
    NSDate* _createdDateTimeUtc;
    MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus* _status;
    NSArray* _deviceIdentities;
}
@end

@implementation MSGraphImportedWindowsAutopilotDeviceIdentityUpload

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.importedWindowsAutopilotDeviceIdentityUpload";
    }
    return self;
}
- (NSDate*) createdDateTimeUtc
{
    if(!_createdDateTimeUtc){
        _createdDateTimeUtc = [NSDate ms_dateFromString: self.dictionary[@"createdDateTimeUtc"]];
    }
    return _createdDateTimeUtc;
}

- (void) setCreatedDateTimeUtc: (NSDate*) val
{
    _createdDateTimeUtc = val;
    self.dictionary[@"createdDateTimeUtc"] = [val ms_toString];
}

- (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) deviceIdentities
{
    if(!_deviceIdentities){
        
    NSMutableArray *deviceIdentitiesResult = [NSMutableArray array];
    NSArray *deviceIdentities = self.dictionary[@"deviceIdentities"];

    if ([deviceIdentities isKindOfClass:[NSArray class]]){
        for (id tempImportedWindowsAutopilotDeviceIdentity in deviceIdentities){
            [deviceIdentitiesResult addObject:tempImportedWindowsAutopilotDeviceIdentity];
        }
    }

    _deviceIdentities = deviceIdentitiesResult;
        
    }
    return _deviceIdentities;
}

- (void) setDeviceIdentities: (NSArray*) val
{
    _deviceIdentities = val;
    self.dictionary[@"deviceIdentities"] = val;
}


@end
