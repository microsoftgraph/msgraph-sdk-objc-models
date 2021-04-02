// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamworkActivityTopic()
{
    MSGraphTeamworkActivityTopicSource* _source;
    NSString* _value;
    NSString* _webUrl;
}
@end

@implementation MSGraphTeamworkActivityTopic

- (MSGraphTeamworkActivityTopicSource*) source
{
    if(!_source){
        _source = [self.dictionary[@"source"] toMSGraphTeamworkActivityTopicSource];
    }
    return _source;
}

- (void) setSource: (MSGraphTeamworkActivityTopicSource*) val
{
    _source = val;
    self.dictionary[@"source"] = val;
}

- (NSString*) value
{
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

@end
