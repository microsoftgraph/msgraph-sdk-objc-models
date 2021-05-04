// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityUserFlowAttribute()
{
    MSGraphIdentityUserFlowAttributeDataType* _dataType;
    NSString* _identityUserFlowAttributeDescription;
    NSString* _displayName;
    MSGraphIdentityUserFlowAttributeType* _userFlowAttributeType;
}
@end

@implementation MSGraphIdentityUserFlowAttribute

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityUserFlowAttribute";
    }
    return self;
}
- (MSGraphIdentityUserFlowAttributeDataType*) dataType
{
    if(!_dataType){
        _dataType = [self.dictionary[@"dataType"] toMSGraphIdentityUserFlowAttributeDataType];
    }
    return _dataType;
}

- (void) setDataType: (MSGraphIdentityUserFlowAttributeDataType*) val
{
    _dataType = val;
    self.dictionary[@"dataType"] = val;
}

- (NSString*) identityUserFlowAttributeDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setIdentityUserFlowAttributeDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphIdentityUserFlowAttributeType*) userFlowAttributeType
{
    if(!_userFlowAttributeType){
        _userFlowAttributeType = [self.dictionary[@"userFlowAttributeType"] toMSGraphIdentityUserFlowAttributeType];
    }
    return _userFlowAttributeType;
}

- (void) setUserFlowAttributeType: (MSGraphIdentityUserFlowAttributeType*) val
{
    _userFlowAttributeType = val;
    self.dictionary[@"userFlowAttributeType"] = val;
}


@end
