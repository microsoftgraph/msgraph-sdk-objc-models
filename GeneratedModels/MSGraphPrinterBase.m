// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterBase()
{
    MSGraphPrinterCapabilities* _capabilities;
    MSGraphPrinterDefaults* _defaults;
    NSString* _displayName;
    BOOL _isAcceptingJobs;
    MSGraphPrinterLocation* _location;
    NSString* _manufacturer;
    NSString* _model;
    MSGraphPrinterStatus* _status;
    NSArray* _jobs;
}
@end

@implementation MSGraphPrinterBase

- (MSGraphPrinterCapabilities*) capabilities
{
    if(!_capabilities){
        _capabilities = [[MSGraphPrinterCapabilities alloc] initWithDictionary: self.dictionary[@"capabilities"]];
    }
    return _capabilities;
}

- (void) setCapabilities: (MSGraphPrinterCapabilities*) val
{
    _capabilities = val;
    self.dictionary[@"capabilities"] = val;
}

- (MSGraphPrinterDefaults*) defaults
{
    if(!_defaults){
        _defaults = [[MSGraphPrinterDefaults alloc] initWithDictionary: self.dictionary[@"defaults"]];
    }
    return _defaults;
}

- (void) setDefaults: (MSGraphPrinterDefaults*) val
{
    _defaults = val;
    self.dictionary[@"defaults"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isAcceptingJobs
{
    _isAcceptingJobs = [self.dictionary[@"isAcceptingJobs"] boolValue];
    return _isAcceptingJobs;
}

- (void) setIsAcceptingJobs: (BOOL) val
{
    _isAcceptingJobs = val;
    self.dictionary[@"isAcceptingJobs"] = @(val);
}

- (MSGraphPrinterLocation*) location
{
    if(!_location){
        _location = [[MSGraphPrinterLocation alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphPrinterLocation*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
}

- (NSString*) manufacturer
{
    if([[NSNull null] isEqual:self.dictionary[@"manufacturer"]])
    {
        return nil;
    }   
    return self.dictionary[@"manufacturer"];
}

- (void) setManufacturer: (NSString*) val
{
    self.dictionary[@"manufacturer"] = val;
}

- (NSString*) model
{
    if([[NSNull null] isEqual:self.dictionary[@"model"]])
    {
        return nil;
    }   
    return self.dictionary[@"model"];
}

- (void) setModel: (NSString*) val
{
    self.dictionary[@"model"] = val;
}

- (MSGraphPrinterStatus*) status
{
    if(!_status){
        _status = [[MSGraphPrinterStatus alloc] initWithDictionary: self.dictionary[@"status"]];
    }
    return _status;
}

- (void) setStatus: (MSGraphPrinterStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) jobs
{
    if(!_jobs){
        
    NSMutableArray *jobsResult = [NSMutableArray array];
    NSArray *jobs = self.dictionary[@"jobs"];

    if ([jobs isKindOfClass:[NSArray class]]){
        for (id tempPrintJob in jobs){
            [jobsResult addObject:tempPrintJob];
        }
    }

    _jobs = jobsResult;
        
    }
    return _jobs;
}

- (void) setJobs: (NSArray*) val
{
    _jobs = val;
    self.dictionary[@"jobs"] = val;
}


@end
