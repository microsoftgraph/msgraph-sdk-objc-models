// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphStsPolicy()
{
    NSArray* _definition;
    BOOL _isOrganizationDefault;
    NSArray* _appliesTo;
}
@end

@implementation MSGraphStsPolicy

- (NSArray*) definition
{
    return self.dictionary[@"definition"];
}

- (void) setDefinition: (NSArray*) val
{
    self.dictionary[@"definition"] = val;
}

- (BOOL) isOrganizationDefault
{
    _isOrganizationDefault = [self.dictionary[@"isOrganizationDefault"] boolValue];
    return _isOrganizationDefault;
}

- (void) setIsOrganizationDefault: (BOOL) val
{
    _isOrganizationDefault = val;
    self.dictionary[@"isOrganizationDefault"] = @(val);
}

- (NSArray*) appliesTo
{
    if(!_appliesTo){
        
    NSMutableArray *appliesToResult = [NSMutableArray array];
    NSArray *appliesTo = self.dictionary[@"appliesTo"];

    if ([appliesTo isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in appliesTo){
            [appliesToResult addObject:tempDirectoryObject];
        }
    }

    _appliesTo = appliesToResult;
        
    }
    return _appliesTo;
}

- (void) setAppliesTo: (NSArray*) val
{
    _appliesTo = val;
    self.dictionary[@"appliesTo"] = val;
}


@end
