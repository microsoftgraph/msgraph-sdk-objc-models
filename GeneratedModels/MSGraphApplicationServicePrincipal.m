// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApplicationServicePrincipal()
{
    MSGraphApplication* _application;
    MSGraphServicePrincipal* _servicePrincipal;
}
@end

@implementation MSGraphApplicationServicePrincipal

- (MSGraphApplication*) application
{
    if(!_application){
        _application = [[MSGraphApplication alloc] initWithDictionary: self.dictionary[@"application"]];
    }
    return _application;
}

- (void) setApplication: (MSGraphApplication*) val
{
    _application = val;
    self.dictionary[@"application"] = val;
}

- (MSGraphServicePrincipal*) servicePrincipal
{
    if(!_servicePrincipal){
        _servicePrincipal = [[MSGraphServicePrincipal alloc] initWithDictionary: self.dictionary[@"servicePrincipal"]];
    }
    return _servicePrincipal;
}

- (void) setServicePrincipal: (MSGraphServicePrincipal*) val
{
    _servicePrincipal = val;
    self.dictionary[@"servicePrincipal"] = val;
}

@end
