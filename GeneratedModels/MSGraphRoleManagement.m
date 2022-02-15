// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRoleManagement()
{
    MSGraphRbacApplication* _directory;
    MSGraphRbacApplication* _entitlementManagement;
}
@end

@implementation MSGraphRoleManagement

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.roleManagement";
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
- (MSGraphRbacApplication*) directory
{
    if(!_directory){
        _directory = [[MSGraphRbacApplication alloc] initWithDictionary: self.dictionary[@"directory"]];
    }
    return _directory;
}

- (void) setDirectory: (MSGraphRbacApplication*) val
{
    _directory = val;
    self.dictionary[@"directory"] = val;
}

- (MSGraphRbacApplication*) entitlementManagement
{
    if(!_entitlementManagement){
        _entitlementManagement = [[MSGraphRbacApplication alloc] initWithDictionary: self.dictionary[@"entitlementManagement"]];
    }
    return _entitlementManagement;
}

- (void) setEntitlementManagement: (MSGraphRbacApplication*) val
{
    _entitlementManagement = val;
    self.dictionary[@"entitlementManagement"] = val;
}


@end
