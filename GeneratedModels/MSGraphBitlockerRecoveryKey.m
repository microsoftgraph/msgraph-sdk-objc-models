// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBitlockerRecoveryKey()
{
    NSDate* _createdDateTime;
    NSString* _deviceId;
    NSString* _key;
    MSGraphVolumeType* _volumeType;
}
@end

@implementation MSGraphBitlockerRecoveryKey

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bitlockerRecoveryKey";
    }
    return self;
}
- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) deviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceId"];
}

- (void) setDeviceId: (NSString*) val
{
    self.dictionary[@"deviceId"] = val;
}

- (NSString*) key
{
    return self.dictionary[@"key"];
}

- (void) setKey: (NSString*) val
{
    self.dictionary[@"key"] = val;
}

- (MSGraphVolumeType*) volumeType
{
    if(!_volumeType){
        _volumeType = [self.dictionary[@"volumeType"] toMSGraphVolumeType];
    }
    return _volumeType;
}

- (void) setVolumeType: (MSGraphVolumeType*) val
{
    _volumeType = val;
    self.dictionary[@"volumeType"] = val;
}


@end
