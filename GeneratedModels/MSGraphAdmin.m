// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAdmin()
{
    MSGraphServiceAnnouncement* _serviceAnnouncement;
}
@end

@implementation MSGraphAdmin

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.admin";
    }
    return self;
}
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
}
- (MSGraphServiceAnnouncement*) serviceAnnouncement
{
    if(!_serviceAnnouncement){
        _serviceAnnouncement = [[MSGraphServiceAnnouncement alloc] initWithDictionary: self.dictionary[@"serviceAnnouncement"]];
    }
    return _serviceAnnouncement;
}

- (void) setServiceAnnouncement: (MSGraphServiceAnnouncement*) val
{
    _serviceAnnouncement = val;
    self.dictionary[@"serviceAnnouncement"] = val;
}


@end
