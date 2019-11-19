// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExtensionProperty()
{
    NSString* _appDisplayName;
    NSString* _name;
    NSString* _dataType;
    BOOL _isSyncedFromOnPremises;
    NSArray* _targetObjects;
}
@end

@implementation MSGraphExtensionProperty

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.extensionProperty";
    }
    return self;
}
- (NSString*) appDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"appDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"appDisplayName"];
}

- (void) setAppDisplayName: (NSString*) val
{
    self.dictionary[@"appDisplayName"] = val;
}

- (NSString*) name
{
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) dataType
{
    return self.dictionary[@"dataType"];
}

- (void) setDataType: (NSString*) val
{
    self.dictionary[@"dataType"] = val;
}

- (BOOL) isSyncedFromOnPremises
{
    _isSyncedFromOnPremises = [self.dictionary[@"isSyncedFromOnPremises"] boolValue];
    return _isSyncedFromOnPremises;
}

- (void) setIsSyncedFromOnPremises: (BOOL) val
{
    _isSyncedFromOnPremises = val;
    self.dictionary[@"isSyncedFromOnPremises"] = @(val);
}

- (NSArray*) targetObjects
{
    return self.dictionary[@"targetObjects"];
}

- (void) setTargetObjects: (NSArray*) val
{
    self.dictionary[@"targetObjects"] = val;
}


@end
