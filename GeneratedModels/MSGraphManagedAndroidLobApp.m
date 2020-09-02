// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAndroidLobApp()
{
    MSGraphAndroidMinimumOperatingSystem* _minimumSupportedOperatingSystem;
    NSString* _packageId;
    NSString* _versionCode;
    NSString* _versionName;
}
@end

@implementation MSGraphManagedAndroidLobApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedAndroidLobApp";
    }
    return self;
}
- (MSGraphAndroidMinimumOperatingSystem*) minimumSupportedOperatingSystem
{
    if(!_minimumSupportedOperatingSystem){
        _minimumSupportedOperatingSystem = [[MSGraphAndroidMinimumOperatingSystem alloc] initWithDictionary: self.dictionary[@"minimumSupportedOperatingSystem"]];
    }
    return _minimumSupportedOperatingSystem;
}

- (void) setMinimumSupportedOperatingSystem: (MSGraphAndroidMinimumOperatingSystem*) val
{
    _minimumSupportedOperatingSystem = val;
    self.dictionary[@"minimumSupportedOperatingSystem"] = val;
}

- (NSString*) packageId
{
    if([[NSNull null] isEqual:self.dictionary[@"packageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"packageId"];
}

- (void) setPackageId: (NSString*) val
{
    self.dictionary[@"packageId"] = val;
}

- (NSString*) versionCode
{
    if([[NSNull null] isEqual:self.dictionary[@"versionCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"versionCode"];
}

- (void) setVersionCode: (NSString*) val
{
    self.dictionary[@"versionCode"] = val;
}

- (NSString*) versionName
{
    if([[NSNull null] isEqual:self.dictionary[@"versionName"]])
    {
        return nil;
    }   
    return self.dictionary[@"versionName"];
}

- (void) setVersionName: (NSString*) val
{
    self.dictionary[@"versionName"] = val;
}


@end
