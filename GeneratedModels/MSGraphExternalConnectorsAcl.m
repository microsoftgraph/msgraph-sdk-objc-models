// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsAcl()
{
    MSGraphExternalConnectorsAccessType* _accessType;
    MSGraphExternalConnectorsAclType* _type;
    NSString* _value;
}
@end

@implementation MSGraphExternalConnectorsAcl

- (MSGraphExternalConnectorsAccessType*) accessType
{
    if(!_accessType){
        _accessType = [self.dictionary[@"accessType"] toMSGraphExternalConnectorsAccessType];
    }
    return _accessType;
}

- (void) setAccessType: (MSGraphExternalConnectorsAccessType*) val
{
    _accessType = val;
    self.dictionary[@"accessType"] = val;
}

- (MSGraphExternalConnectorsAclType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphExternalConnectorsAclType];
    }
    return _type;
}

- (void) setType: (MSGraphExternalConnectorsAclType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (NSString*) value
{
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

@end
