// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAddIn()
{
    NSString* _addInId;
    NSArray* _properties;
    NSString* _type;
}
@end

@implementation MSGraphAddIn

- (NSString*) addInId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setAddInId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSArray*) properties
{
    if(!_properties){
        
    NSMutableArray *propertiesResult = [NSMutableArray array];
    NSArray *properties = self.dictionary[@"properties"];

    if ([properties isKindOfClass:[NSArray class]]){
        for (id tempKeyValue in properties){
            [propertiesResult addObject:tempKeyValue];
        }
    }

    _properties = propertiesResult;
        
    }
    return _properties;
}

- (void) setProperties: (NSArray*) val
{
    _properties = val;
    self.dictionary[@"properties"] = val;
}

- (NSString*) type
{
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

@end
