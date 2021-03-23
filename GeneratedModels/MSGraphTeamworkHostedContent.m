// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamworkHostedContent()
{
    NSString* _contentBytes;
    NSString* _contentType;
}
@end

@implementation MSGraphTeamworkHostedContent

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamworkHostedContent";
    }
    return self;
}
- (NSString*) contentBytes
{
    if([[NSNull null] isEqual:self.dictionary[@"contentBytes"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentBytes"];
}

- (void) setContentBytes: (NSString*) val
{
    self.dictionary[@"contentBytes"] = val;
}

- (NSString*) contentType
{
    if([[NSNull null] isEqual:self.dictionary[@"contentType"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentType"];
}

- (void) setContentType: (NSString*) val
{
    self.dictionary[@"contentType"] = val;
}


@end
