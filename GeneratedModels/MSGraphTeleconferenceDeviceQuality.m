// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeleconferenceDeviceQuality()
{
    NSString* _callChainId;
    NSString* _participantId;
    NSString* _mediaLegId;
    NSString* _deviceName;
    NSString* _deviceDescription;
    NSString* _cloudServiceName;
    NSString* _cloudServiceInstanceName;
    NSString* _cloudServiceDeploymentId;
    NSString* _cloudServiceDeploymentEnvironment;
    NSArray* _mediaQualityList;
}
@end

@implementation MSGraphTeleconferenceDeviceQuality

- (NSString*) callChainId
{
    return self.dictionary[@"callChainId"];
}

- (void) setCallChainId: (NSString*) val
{
    self.dictionary[@"callChainId"] = val;
}

- (NSString*) participantId
{
    return self.dictionary[@"participantId"];
}

- (void) setParticipantId: (NSString*) val
{
    self.dictionary[@"participantId"] = val;
}

- (NSString*) mediaLegId
{
    return self.dictionary[@"mediaLegId"];
}

- (void) setMediaLegId: (NSString*) val
{
    self.dictionary[@"mediaLegId"] = val;
}

- (NSString*) deviceName
{
    return self.dictionary[@"deviceName"];
}

- (void) setDeviceName: (NSString*) val
{
    self.dictionary[@"deviceName"] = val;
}

- (NSString*) deviceDescription
{
    return self.dictionary[@"deviceDescription"];
}

- (void) setDeviceDescription: (NSString*) val
{
    self.dictionary[@"deviceDescription"] = val;
}

- (NSString*) cloudServiceName
{
    if([[NSNull null] isEqual:self.dictionary[@"cloudServiceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"cloudServiceName"];
}

- (void) setCloudServiceName: (NSString*) val
{
    self.dictionary[@"cloudServiceName"] = val;
}

- (NSString*) cloudServiceInstanceName
{
    if([[NSNull null] isEqual:self.dictionary[@"cloudServiceInstanceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"cloudServiceInstanceName"];
}

- (void) setCloudServiceInstanceName: (NSString*) val
{
    self.dictionary[@"cloudServiceInstanceName"] = val;
}

- (NSString*) cloudServiceDeploymentId
{
    if([[NSNull null] isEqual:self.dictionary[@"cloudServiceDeploymentId"]])
    {
        return nil;
    }   
    return self.dictionary[@"cloudServiceDeploymentId"];
}

- (void) setCloudServiceDeploymentId: (NSString*) val
{
    self.dictionary[@"cloudServiceDeploymentId"] = val;
}

- (NSString*) cloudServiceDeploymentEnvironment
{
    if([[NSNull null] isEqual:self.dictionary[@"cloudServiceDeploymentEnvironment"]])
    {
        return nil;
    }   
    return self.dictionary[@"cloudServiceDeploymentEnvironment"];
}

- (void) setCloudServiceDeploymentEnvironment: (NSString*) val
{
    self.dictionary[@"cloudServiceDeploymentEnvironment"] = val;
}

- (NSArray*) mediaQualityList
{
    if(!_mediaQualityList){
        
    NSMutableArray *mediaQualityListResult = [NSMutableArray array];
    NSArray *mediaQualityList = self.dictionary[@"mediaQualityList"];

    if ([mediaQualityList isKindOfClass:[NSArray class]]){
        for (id tempTeleconferenceDeviceMediaQuality in mediaQualityList){
            [mediaQualityListResult addObject:tempTeleconferenceDeviceMediaQuality];
        }
    }

    _mediaQualityList = mediaQualityListResult;
        
    }
    return _mediaQualityList;
}

- (void) setMediaQualityList: (NSArray*) val
{
    _mediaQualityList = val;
    self.dictionary[@"mediaQualityList"] = val;
}

@end
