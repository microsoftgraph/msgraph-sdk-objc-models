// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsMedia()
{
    NSString* _label;
    MSGraphCallRecordsNetworkInfo* _callerNetwork;
    MSGraphCallRecordsNetworkInfo* _calleeNetwork;
    MSGraphCallRecordsDeviceInfo* _callerDevice;
    MSGraphCallRecordsDeviceInfo* _calleeDevice;
    NSArray* _streams;
}
@end

@implementation MSGraphCallRecordsMedia

- (NSString*) label
{
    if([[NSNull null] isEqual:self.dictionary[@"label"]])
    {
        return nil;
    }   
    return self.dictionary[@"label"];
}

- (void) setLabel: (NSString*) val
{
    self.dictionary[@"label"] = val;
}

- (MSGraphCallRecordsNetworkInfo*) callerNetwork
{
    if(!_callerNetwork){
        _callerNetwork = [[MSGraphCallRecordsNetworkInfo alloc] initWithDictionary: self.dictionary[@"callerNetwork"]];
    }
    return _callerNetwork;
}

- (void) setCallerNetwork: (MSGraphCallRecordsNetworkInfo*) val
{
    _callerNetwork = val;
    self.dictionary[@"callerNetwork"] = val;
}

- (MSGraphCallRecordsNetworkInfo*) calleeNetwork
{
    if(!_calleeNetwork){
        _calleeNetwork = [[MSGraphCallRecordsNetworkInfo alloc] initWithDictionary: self.dictionary[@"calleeNetwork"]];
    }
    return _calleeNetwork;
}

- (void) setCalleeNetwork: (MSGraphCallRecordsNetworkInfo*) val
{
    _calleeNetwork = val;
    self.dictionary[@"calleeNetwork"] = val;
}

- (MSGraphCallRecordsDeviceInfo*) callerDevice
{
    if(!_callerDevice){
        _callerDevice = [[MSGraphCallRecordsDeviceInfo alloc] initWithDictionary: self.dictionary[@"callerDevice"]];
    }
    return _callerDevice;
}

- (void) setCallerDevice: (MSGraphCallRecordsDeviceInfo*) val
{
    _callerDevice = val;
    self.dictionary[@"callerDevice"] = val;
}

- (MSGraphCallRecordsDeviceInfo*) calleeDevice
{
    if(!_calleeDevice){
        _calleeDevice = [[MSGraphCallRecordsDeviceInfo alloc] initWithDictionary: self.dictionary[@"calleeDevice"]];
    }
    return _calleeDevice;
}

- (void) setCalleeDevice: (MSGraphCallRecordsDeviceInfo*) val
{
    _calleeDevice = val;
    self.dictionary[@"calleeDevice"] = val;
}

- (NSArray*) streams
{
    if(!_streams){
        
    NSMutableArray *streamsResult = [NSMutableArray array];
    NSArray *streams = self.dictionary[@"streams"];

    if ([streams isKindOfClass:[NSArray class]]){
        for (id tempMediaStream in streams){
            [streamsResult addObject:tempMediaStream];
        }
    }

    _streams = streamsResult;
        
    }
    return _streams;
}

- (void) setStreams: (NSArray*) val
{
    _streams = val;
    self.dictionary[@"streams"] = val;
}

@end
