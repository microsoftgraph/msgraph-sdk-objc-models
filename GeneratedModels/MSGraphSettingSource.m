// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSettingSource()
{
    NSString* _displayName;
    NSString* _settingSourceId;
    MSGraphSettingSourceType* _sourceType;
}
@end

@implementation MSGraphSettingSource

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

- (NSString*) settingSourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setSettingSourceId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (MSGraphSettingSourceType*) sourceType
{
    if(!_sourceType){
        _sourceType = [self.dictionary[@"sourceType"] toMSGraphSettingSourceType];
    }
    return _sourceType;
}

- (void) setSourceType: (MSGraphSettingSourceType*) val
{
    _sourceType = val;
    self.dictionary[@"sourceType"] = val;
}

@end
