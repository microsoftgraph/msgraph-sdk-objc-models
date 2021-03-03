// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintUsageByUser()
{
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphPrintUsageByUser

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printUsageByUser";
    }
    return self;
}
- (NSString*) userPrincipalName
{
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}


@end
