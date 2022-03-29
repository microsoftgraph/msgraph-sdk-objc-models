// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSubjectSet; 


#import "MSObject.h"

@interface MSGraphAccessPackageAssignmentRequestorSettings : MSObject

@property (nonatomic, setter=setAllowCustomAssignmentSchedule:, getter=allowCustomAssignmentSchedule) BOOL allowCustomAssignmentSchedule;
@property (nonatomic, setter=setEnableOnBehalfRequestorsToAddAccess:, getter=enableOnBehalfRequestorsToAddAccess) BOOL enableOnBehalfRequestorsToAddAccess;
@property (nonatomic, setter=setEnableOnBehalfRequestorsToRemoveAccess:, getter=enableOnBehalfRequestorsToRemoveAccess) BOOL enableOnBehalfRequestorsToRemoveAccess;
@property (nonatomic, setter=setEnableOnBehalfRequestorsToUpdateAccess:, getter=enableOnBehalfRequestorsToUpdateAccess) BOOL enableOnBehalfRequestorsToUpdateAccess;
@property (nonatomic, setter=setEnableTargetsToSelfAddAccess:, getter=enableTargetsToSelfAddAccess) BOOL enableTargetsToSelfAddAccess;
@property (nonatomic, setter=setEnableTargetsToSelfRemoveAccess:, getter=enableTargetsToSelfRemoveAccess) BOOL enableTargetsToSelfRemoveAccess;
@property (nonatomic, setter=setEnableTargetsToSelfUpdateAccess:, getter=enableTargetsToSelfUpdateAccess) BOOL enableTargetsToSelfUpdateAccess;
@property (nullable, nonatomic, setter=setOnBehalfRequestors:, getter=onBehalfRequestors) NSArray* onBehalfRequestors;

@end
