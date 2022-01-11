// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharePointIdentity()
{
    NSString* _loginName;
}
@end

@implementation MSGraphSharePointIdentity

- (NSString*) loginName
{
    if([[NSNull null] isEqual:self.dictionary[@"loginName"]])
    {
        return nil;
    }   
    return self.dictionary[@"loginName"];
}

- (void) setLoginName: (NSString*) val
{
    self.dictionary[@"loginName"] = val;
}

@end
