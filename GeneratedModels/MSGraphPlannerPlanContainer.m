// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerPlanContainer()
{
    NSString* _containerId;
    MSGraphPlannerContainerType* _type;
    NSString* _url;
}
@end

@implementation MSGraphPlannerPlanContainer

- (NSString*) containerId
{
    return self.dictionary[@"containerId"];
}

- (void) setContainerId: (NSString*) val
{
    self.dictionary[@"containerId"] = val;
}

- (MSGraphPlannerContainerType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphPlannerContainerType];
    }
    return _type;
}

- (void) setType: (MSGraphPlannerContainerType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (NSString*) url
{
    return self.dictionary[@"url"];
}

- (void) setUrl: (NSString*) val
{
    self.dictionary[@"url"] = val;
}

@end
