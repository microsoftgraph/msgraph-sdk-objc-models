// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEmployeeOrgData()
{
    NSString* _costCenter;
    NSString* _division;
}
@end

@implementation MSGraphEmployeeOrgData

- (NSString*) costCenter
{
    if([[NSNull null] isEqual:self.dictionary[@"costCenter"]])
    {
        return nil;
    }   
    return self.dictionary[@"costCenter"];
}

- (void) setCostCenter: (NSString*) val
{
    self.dictionary[@"costCenter"] = val;
}

- (NSString*) division
{
    if([[NSNull null] isEqual:self.dictionary[@"division"]])
    {
        return nil;
    }   
    return self.dictionary[@"division"];
}

- (void) setDivision: (NSString*) val
{
    self.dictionary[@"division"] = val;
}

@end
