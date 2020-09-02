// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaInfo()
{
    NSString* _resourceId;
    NSString* _uri;
}
@end

@implementation MSGraphMediaInfo

- (NSString*) resourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceId"];
}

- (void) setResourceId: (NSString*) val
{
    self.dictionary[@"resourceId"] = val;
}

- (NSString*) uri
{
    return self.dictionary[@"uri"];
}

- (void) setUri: (NSString*) val
{
    self.dictionary[@"uri"] = val;
}

@end
