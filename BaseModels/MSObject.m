// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import "MSObject.h"

@interface MSObject()

@property NSMutableDictionary *dictionary;

@end

@implementation MSObject

- (instancetype)init
{
   return [self initWithDictionary:[NSMutableDictionary new]];
}

-(instancetype)initWithData:(NSData *)data error:(NSError *__autoreleasing *)error
{
    if(!data)
    {
        return nil;
    }
    self = [super init];
    if(self)
    {
        self.dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
    }
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (!dictionary)
    {
        return nil;
    }
    self = [super init];
    if(self)
    {
        self.dictionary = [NSMutableDictionary dictionaryWithDictionary:dictionary];
    }
    return self;
}

-(NSMutableDictionary *)getDictionary
{
    return [self.dictionary mutableCopy];
}

- (NSData *)getSerializedDataWithError:(NSError *__autoreleasing *)error
{
    NSDictionary *convertedDictionary = [self recursivelyConvertObjectsToDictionariesInDictionary:self.dictionary];
    return [NSJSONSerialization dataWithJSONObject:convertedDictionary options:kNilOptions error:error];
}

- (NSDictionary *)recursivelyConvertObjectsToDictionariesInDictionary:(NSDictionary *)dictionary {
    NSMutableDictionary *convertedDictionary = [NSMutableDictionary dictionary];
    for (NSString *key in dictionary) {
        if ([dictionary[key] isKindOfClass:[MSObject class]]) {
            MSObject *object = dictionary[key];
            convertedDictionary[key] = [self recursivelyConvertObjectsToDictionariesInDictionary:object.dictionary];
        } else if ([dictionary[key] isKindOfClass:[NSArray class]]) {
            NSArray *array = dictionary[key];
            convertedDictionary[key] = [self recursivelyConvertObjectsToDictionariesInArray:array];
        } else if ([dictionary[key] respondsToSelector:@selector(ms_toString)]) {
            NSString *enumValue = [dictionary[key] performSelector:@selector(ms_toString)];
            convertedDictionary[key] = enumValue;
        } else {
            convertedDictionary[key] = dictionary[key];
        }
    }
    return convertedDictionary;
}

- (NSArray *)recursivelyConvertObjectsToDictionariesInArray:(NSArray *)array {
    NSMutableArray *convertedArray = [NSMutableArray array];
    for (id item in array) {
        if ([item isKindOfClass:[MSObject class]]) {
            MSObject *object = item;
            [convertedArray addObject:[self recursivelyConvertObjectsToDictionariesInDictionary:object.dictionary]];
        } else if ([item isKindOfClass:[NSArray class]]) {
            NSArray *array = item;
            [convertedArray addObject:[self recursivelyConvertObjectsToDictionariesInArray:array]];
        } else if ([item respondsToSelector:@selector(ms_toString)]) {
            NSString *enumValue = [item performSelector:@selector(ms_toString)];
            [convertedArray addObject:enumValue];
        } else {
            [convertedArray addObject:item];
        }
    }
    return convertedArray;
}

@end
