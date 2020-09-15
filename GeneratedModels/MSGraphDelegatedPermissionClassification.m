// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDelegatedPermissionClassification()
{
    MSGraphPermissionClassificationType* _classification;
    NSString* _permissionId;
    NSString* _permissionName;
}
@end

@implementation MSGraphDelegatedPermissionClassification

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.delegatedPermissionClassification";
    }
    return self;
}
- (MSGraphPermissionClassificationType*) classification
{
    if(!_classification){
        _classification = [self.dictionary[@"classification"] toMSGraphPermissionClassificationType];
    }
    return _classification;
}

- (void) setClassification: (MSGraphPermissionClassificationType*) val
{
    _classification = val;
    self.dictionary[@"classification"] = val;
}

- (NSString*) permissionId
{
    if([[NSNull null] isEqual:self.dictionary[@"permissionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"permissionId"];
}

- (void) setPermissionId: (NSString*) val
{
    self.dictionary[@"permissionId"] = val;
}

- (NSString*) permissionName
{
    if([[NSNull null] isEqual:self.dictionary[@"permissionName"]])
    {
        return nil;
    }   
    return self.dictionary[@"permissionName"];
}

- (void) setPermissionName: (NSString*) val
{
    self.dictionary[@"permissionName"] = val;
}


@end
