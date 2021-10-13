// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDocumentSet()
{
    NSArray* _allowedContentTypes;
    NSArray* _defaultContents;
    BOOL _propagateWelcomePageChanges;
    BOOL _shouldPrefixNameToFile;
    NSString* _welcomePageUrl;
    NSArray* _sharedColumns;
    NSArray* _welcomePageColumns;
}
@end

@implementation MSGraphDocumentSet

- (NSArray*) allowedContentTypes
{
    if(!_allowedContentTypes){
        
    NSMutableArray *allowedContentTypesResult = [NSMutableArray array];
    NSArray *allowedContentTypes = self.dictionary[@"allowedContentTypes"];

    if ([allowedContentTypes isKindOfClass:[NSArray class]]){
        for (id tempContentTypeInfo in allowedContentTypes){
            [allowedContentTypesResult addObject:tempContentTypeInfo];
        }
    }

    _allowedContentTypes = allowedContentTypesResult;
        
    }
    return _allowedContentTypes;
}

- (void) setAllowedContentTypes: (NSArray*) val
{
    _allowedContentTypes = val;
    self.dictionary[@"allowedContentTypes"] = val;
}

- (NSArray*) defaultContents
{
    if(!_defaultContents){
        
    NSMutableArray *defaultContentsResult = [NSMutableArray array];
    NSArray *defaultContents = self.dictionary[@"defaultContents"];

    if ([defaultContents isKindOfClass:[NSArray class]]){
        for (id tempDocumentSetContent in defaultContents){
            [defaultContentsResult addObject:tempDocumentSetContent];
        }
    }

    _defaultContents = defaultContentsResult;
        
    }
    return _defaultContents;
}

- (void) setDefaultContents: (NSArray*) val
{
    _defaultContents = val;
    self.dictionary[@"defaultContents"] = val;
}

- (BOOL) propagateWelcomePageChanges
{
    _propagateWelcomePageChanges = [self.dictionary[@"propagateWelcomePageChanges"] boolValue];
    return _propagateWelcomePageChanges;
}

- (void) setPropagateWelcomePageChanges: (BOOL) val
{
    _propagateWelcomePageChanges = val;
    self.dictionary[@"propagateWelcomePageChanges"] = @(val);
}

- (BOOL) shouldPrefixNameToFile
{
    _shouldPrefixNameToFile = [self.dictionary[@"shouldPrefixNameToFile"] boolValue];
    return _shouldPrefixNameToFile;
}

- (void) setShouldPrefixNameToFile: (BOOL) val
{
    _shouldPrefixNameToFile = val;
    self.dictionary[@"shouldPrefixNameToFile"] = @(val);
}

- (NSString*) welcomePageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"welcomePageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"welcomePageUrl"];
}

- (void) setWelcomePageUrl: (NSString*) val
{
    self.dictionary[@"welcomePageUrl"] = val;
}

- (NSArray*) sharedColumns
{
    if(!_sharedColumns){
        
    NSMutableArray *sharedColumnsResult = [NSMutableArray array];
    NSArray *sharedColumns = self.dictionary[@"sharedColumns"];

    if ([sharedColumns isKindOfClass:[NSArray class]]){
        for (id tempColumnDefinition in sharedColumns){
            [sharedColumnsResult addObject:tempColumnDefinition];
        }
    }

    _sharedColumns = sharedColumnsResult;
        
    }
    return _sharedColumns;
}

- (void) setSharedColumns: (NSArray*) val
{
    _sharedColumns = val;
    self.dictionary[@"sharedColumns"] = val;
}

- (NSArray*) welcomePageColumns
{
    if(!_welcomePageColumns){
        
    NSMutableArray *welcomePageColumnsResult = [NSMutableArray array];
    NSArray *welcomePageColumns = self.dictionary[@"welcomePageColumns"];

    if ([welcomePageColumns isKindOfClass:[NSArray class]]){
        for (id tempColumnDefinition in welcomePageColumns){
            [welcomePageColumnsResult addObject:tempColumnDefinition];
        }
    }

    _welcomePageColumns = welcomePageColumnsResult;
        
    }
    return _welcomePageColumns;
}

- (void) setWelcomePageColumns: (NSArray*) val
{
    _welcomePageColumns = val;
    self.dictionary[@"welcomePageColumns"] = val;
}

@end
