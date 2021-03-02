// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintServiceEndpoint()
{
    NSString* _displayName;
    NSString* _uri;
}
@end

@implementation MSGraphPrintServiceEndpoint

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printServiceEndpoint";
    }
    return self;
}
- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
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
