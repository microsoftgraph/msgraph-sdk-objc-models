// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeleconferenceDeviceQuality()
{
    NSString* _callChainId;
    NSString* _cloudServiceDeploymentEnvironment;
    NSString* _cloudServiceDeploymentId;
    NSString* _cloudServiceInstanceName;
    NSString* _cloudServiceName;
    NSString* _deviceDescription;
    NSString* _deviceName;
    NSString* _mediaLegId;
    NSArray* _mediaQualityList;
    NSString* _participantId;
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

- (NSString*) deviceDescription
{
    return self.dictionary[@"deviceDescription"];
}

- (void) setDeviceDescription: (NSString*) val
{
    self.dictionary[@"deviceDescription"] = val;
}

- (NSString*) deviceName
{
    return self.dictionary[@"deviceName"];
}

- (void) setDeviceName: (NSString*) val
{
    self.dictionary[@"deviceName"] = val;
}

- (NSString*) mediaLegId
{
    return self.dictionary[@"mediaLegId"];
}

- (void) setMediaLegId: (NSString*) val
{
    self.dictionary[@"mediaLegId"] = val;
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

- (NSString*) participantId
{
    return self.dictionary[@"participantId"];
}

- (void) setParticipantId: (NSString*) val
{
    self.dictionary[@"participantId"] = val;
}

@end
