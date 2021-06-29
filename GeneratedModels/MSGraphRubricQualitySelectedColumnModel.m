// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRubricQualitySelectedColumnModel()
{
    NSString* _columnId;
    NSString* _qualityId;
}
@end

@implementation MSGraphRubricQualitySelectedColumnModel

- (NSString*) columnId
{
    if([[NSNull null] isEqual:self.dictionary[@"columnId"]])
    {
        return nil;
    }   
    return self.dictionary[@"columnId"];
}

- (void) setColumnId: (NSString*) val
{
    self.dictionary[@"columnId"] = val;
}

- (NSString*) qualityId
{
    if([[NSNull null] isEqual:self.dictionary[@"qualityId"]])
    {
        return nil;
    }   
    return self.dictionary[@"qualityId"];
}

- (void) setQualityId: (NSString*) val
{
    self.dictionary[@"qualityId"] = val;
}

@end
