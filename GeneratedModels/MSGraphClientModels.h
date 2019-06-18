// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSDate.h"
#import "MSTimeOfDay.h"
#import "MSDuration.h"
#import "MSGraphDayOfWeek.h"
#import "MSGraphAutomaticRepliesStatus.h"
#import "MSGraphExternalAudienceScope.h"
#import "MSGraphAttendeeType.h"
#import "MSGraphFreeBusyStatus.h"
#import "MSGraphLocationType.h"
#import "MSGraphLocationUniqueIdType.h"
#import "MSGraphMailTipsType.h"
#import "MSGraphRecipientScopeType.h"
#import "MSGraphTimeZoneStandard.h"
#import "MSGraphBodyType.h"
#import "MSGraphImportance.h"
#import "MSGraphInferenceClassificationType.h"
#import "MSGraphFollowupFlagStatus.h"
#import "MSGraphCalendarColor.h"
#import "MSGraphResponseType.h"
#import "MSGraphSensitivity.h"
#import "MSGraphRecurrencePatternType.h"
#import "MSGraphWeekIndex.h"
#import "MSGraphRecurrenceRangeType.h"
#import "MSGraphEventType.h"
#import "MSGraphMeetingMessageType.h"
#import "MSGraphMessageActionFlag.h"
#import "MSGraphCategoryColor.h"
#import "MSGraphSelectionLikelihoodInfo.h"
#import "MSGraphPhoneType.h"
#import "MSGraphWebsiteType.h"
#import "MSGraphActivityDomain.h"
#import "MSGraphPhysicalAddressType.h"
#import "MSGraphPlannerPreviewType.h"
#import "MSGraphOperationStatus.h"
#import "MSGraphOnenotePatchInsertPosition.h"
#import "MSGraphOnenotePatchActionType.h"
#import "MSGraphOnenoteSourceService.h"
#import "MSGraphOnenoteUserRole.h"
#import "MSGraphEducationUserRole.h"
#import "MSGraphEducationExternalSource.h"
#import "MSGraphEducationGender.h"
#import "MSGraphInstallIntent.h"
#import "MSGraphMobileAppPublishingState.h"
#import "MSGraphWindowsArchitecture.h"
#import "MSGraphManagedAppAvailability.h"
#import "MSGraphMobileAppContentFileUploadState.h"
#import "MSGraphWindowsDeviceType.h"
#import "MSGraphMicrosoftStoreForBusinessLicenseType.h"
#import "MSGraphVppTokenAccountType.h"
#import "MSGraphComplianceStatus.h"
#import "MSGraphMdmAppConfigKeyType.h"
#import "MSGraphActionState.h"
#import "MSGraphManagedDeviceOwnerType.h"
#import "MSGraphComplianceState.h"
#import "MSGraphManagementAgentType.h"
#import "MSGraphDeviceEnrollmentType.h"
#import "MSGraphDeviceRegistrationState.h"
#import "MSGraphDeviceManagementExchangeAccessState.h"
#import "MSGraphDeviceManagementExchangeAccessStateReason.h"
#import "MSGraphManagedDevicePartnerReportedHealthState.h"
#import "MSGraphDeviceManagementSubscriptionState.h"
#import "MSGraphWindows10EditionType.h"
#import "MSGraphAppListType.h"
#import "MSGraphAndroidRequiredPasswordType.h"
#import "MSGraphWebBrowserCookieSettings.h"
#import "MSGraphAndroidWorkProfileRequiredPasswordType.h"
#import "MSGraphAndroidWorkProfileCrossProfileDataSharingType.h"
#import "MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType.h"
#import "MSGraphRatingAustraliaMoviesType.h"
#import "MSGraphRatingAustraliaTelevisionType.h"
#import "MSGraphRatingCanadaMoviesType.h"
#import "MSGraphRatingCanadaTelevisionType.h"
#import "MSGraphRatingFranceMoviesType.h"
#import "MSGraphRatingFranceTelevisionType.h"
#import "MSGraphRatingGermanyMoviesType.h"
#import "MSGraphRatingGermanyTelevisionType.h"
#import "MSGraphRatingIrelandMoviesType.h"
#import "MSGraphRatingIrelandTelevisionType.h"
#import "MSGraphRatingJapanMoviesType.h"
#import "MSGraphRatingJapanTelevisionType.h"
#import "MSGraphRatingNewZealandMoviesType.h"
#import "MSGraphRatingNewZealandTelevisionType.h"
#import "MSGraphRatingUnitedKingdomMoviesType.h"
#import "MSGraphRatingUnitedKingdomTelevisionType.h"
#import "MSGraphRatingUnitedStatesMoviesType.h"
#import "MSGraphRatingUnitedStatesTelevisionType.h"
#import "MSGraphRatingAppsType.h"
#import "MSGraphRequiredPasswordType.h"
#import "MSGraphIosNotificationAlertType.h"
#import "MSGraphStateManagementSetting.h"
#import "MSGraphFirewallPreSharedKeyEncodingMethodType.h"
#import "MSGraphFirewallCertificateRevocationListCheckMethodType.h"
#import "MSGraphFirewallPacketQueueingMethodType.h"
#import "MSGraphAppLockerApplicationControlType.h"
#import "MSGraphApplicationGuardBlockFileTransferType.h"
#import "MSGraphApplicationGuardBlockClipboardSharingType.h"
#import "MSGraphBitLockerEncryptionMethod.h"
#import "MSGraphDiagnosticDataSubmissionMode.h"
#import "MSGraphEdgeCookiePolicy.h"
#import "MSGraphVisibilitySetting.h"
#import "MSGraphDefenderThreatAction.h"
#import "MSGraphWeeklySchedule.h"
#import "MSGraphDefenderMonitorFileActivity.h"
#import "MSGraphDefenderPromptForSampleSubmission.h"
#import "MSGraphDefenderScanType.h"
#import "MSGraphDefenderCloudBlockLevelType.h"
#import "MSGraphWindowsStartMenuAppListVisibilityType.h"
#import "MSGraphWindowsStartMenuModeType.h"
#import "MSGraphWindowsSpotlightEnablementSettings.h"
#import "MSGraphAutomaticUpdateMode.h"
#import "MSGraphSafeSearchFilterType.h"
#import "MSGraphEdgeSearchEngineType.h"
#import "MSGraphPrereleaseFeatures.h"
#import "MSGraphEditionUpgradeLicenseType.h"
#import "MSGraphWindowsDeliveryOptimizationMode.h"
#import "MSGraphSharedPCAccountDeletionPolicyType.h"
#import "MSGraphSharedPCAllowedAccountType.h"
#import "MSGraphWindowsUpdateType.h"
#import "MSGraphInternetSiteSecurityLevel.h"
#import "MSGraphSiteSecurityLevel.h"
#import "MSGraphWindowsUserAccountControlSettings.h"
#import "MSGraphMiracastChannel.h"
#import "MSGraphWelcomeScreenMeetingInformation.h"
#import "MSGraphDeviceComplianceActionType.h"
#import "MSGraphDeviceThreatProtectionLevel.h"
#import "MSGraphPolicyPlatformType.h"
#import "MSGraphIosUpdatesInstallStatus.h"
#import "MSGraphDeviceManagementExchangeConnectorSyncType.h"
#import "MSGraphMdmAuthority.h"
#import "MSGraphWindowsHelloForBusinessPinUsage.h"
#import "MSGraphEnablement.h"
#import "MSGraphVppTokenState.h"
#import "MSGraphVppTokenSyncStatus.h"
#import "MSGraphDeviceManagementExchangeConnectorStatus.h"
#import "MSGraphDeviceManagementExchangeConnectorType.h"
#import "MSGraphMobileThreatPartnerTenantState.h"
#import "MSGraphDeviceManagementPartnerTenantState.h"
#import "MSGraphDeviceManagementPartnerAppType.h"
#import "MSGraphManagedAppDataStorageLocation.h"
#import "MSGraphManagedAppDataTransferLevel.h"
#import "MSGraphManagedAppClipboardSharingLevel.h"
#import "MSGraphManagedAppPinCharacterSet.h"
#import "MSGraphManagedAppDataEncryptionType.h"
#import "MSGraphWindowsInformationProtectionEnforcementLevel.h"
#import "MSGraphWindowsInformationProtectionPinCharacterRequirements.h"
#import "MSGraphManagedAppFlaggedReason.h"
#import "MSGraphNotificationTemplateBrandingOptions.h"
#import "MSGraphInstallState.h"
#import "MSGraphRemoteAssistanceOnboardingStatus.h"
#import "MSGraphApplicationType.h"
#import "MSGraphDeviceEnrollmentFailureReason.h"
#import "MSGraphStatus.h"
#import "MSGraphAlertFeedback.h"
#import "MSGraphAlertSeverity.h"
#import "MSGraphAlertStatus.h"
#import "MSGraphConnectionDirection.h"
#import "MSGraphConnectionStatus.h"
#import "MSGraphEmailRole.h"
#import "MSGraphFileHashType.h"
#import "MSGraphLogonType.h"
#import "MSGraphProcessIntegrityLevel.h"
#import "MSGraphRegistryHive.h"
#import "MSGraphRegistryOperation.h"
#import "MSGraphRegistryValueType.h"
#import "MSGraphSecurityNetworkProtocol.h"
#import "MSGraphUserAccountSecurityType.h"
#import "MSGraphTeamVisibilityType.h"
#import "MSGraphClonableTeamParts.h"
#import "MSGraphGiphyRatingType.h"
#import "MSGraphTeamsAsyncOperationType.h"
#import "MSGraphTeamsAsyncOperationStatus.h"
#import "MSGraphTeamsAppDistributionMethod.h"
#import "MSGraphDataPolicyOperationStatus.h"
#import "MSGraphRiskLevel.h"
#import "MSGraphAppliedConditionalAccessPolicyResult.h"
#import "MSGraphConditionalAccessStatus.h"
#import "MSGraphGroupType.h"
#import "MSGraphOperationResult.h"
#import "MSGraphRiskState.h"
#import "MSGraphRiskDetail.h"
#import "MSGraphRiskEventType.h"
#import "MSGraphAlternativeSecurityId.h"
#import "MSGraphDomainState.h"
#import "MSGraphServicePlanInfo.h"
#import "MSGraphAssignedLicense.h"
#import "MSGraphLicenseProcessingState.h"
#import "MSGraphOnPremisesProvisioningError.h"
#import "MSGraphLicenseUnitsDetail.h"
#import "MSGraphAssignedPlan.h"
#import "MSGraphPrivacyProfile.h"
#import "MSGraphProvisionedPlan.h"
#import "MSGraphVerifiedDomain.h"
#import "MSGraphLicenseAssignmentState.h"
#import "MSGraphOnPremisesExtensionAttributes.h"
#import "MSGraphPasswordProfile.h"
#import "MSGraphMailboxSettings.h"
#import "MSGraphAutomaticRepliesSetting.h"
#import "MSGraphDateTimeTimeZone.h"
#import "MSGraphLocaleInfo.h"
#import "MSGraphWorkingHours.h"
#import "MSGraphTimeZoneBase.h"
#import "MSGraphSettingValue.h"
#import "MSGraphSettingTemplateValue.h"
#import "MSGraphComplexExtensionValue.h"
#import "MSGraphExtensionSchemaProperty.h"
#import "MSGraphCustomTimeZone.h"
#import "MSGraphStandardTimeZoneOffset.h"
#import "MSGraphDaylightTimeZoneOffset.h"
#import "MSGraphRecipient.h"
#import "MSGraphEmailAddress.h"
#import "MSGraphAttendeeBase.h"
#import "MSGraphLocation.h"
#import "MSGraphPhysicalAddress.h"
#import "MSGraphOutlookGeoCoordinates.h"
#import "MSGraphReminder.h"
#import "MSGraphMailTips.h"
#import "MSGraphAutomaticRepliesMailTips.h"
#import "MSGraphMailTipsError.h"
#import "MSGraphTimeZoneInformation.h"
#import "MSGraphInternetMessageHeader.h"
#import "MSGraphItemBody.h"
#import "MSGraphFollowupFlag.h"
#import "MSGraphScheduleInformation.h"
#import "MSGraphScheduleItem.h"
#import "MSGraphFreeBusyError.h"
#import "MSGraphResponseStatus.h"
#import "MSGraphPatternedRecurrence.h"
#import "MSGraphRecurrencePattern.h"
#import "MSGraphRecurrenceRange.h"
#import "MSGraphAttendee.h"
#import "MSGraphMessageRulePredicates.h"
#import "MSGraphSizeRange.h"
#import "MSGraphMessageRuleActions.h"
#import "MSGraphScoredEmailAddress.h"
#import "MSGraphPhone.h"
#import "MSGraphWebsite.h"
#import "MSGraphPersonType.h"
#import "MSGraphLocationConstraint.h"
#import "MSGraphLocationConstraintItem.h"
#import "MSGraphMeetingTimeSuggestionsResult.h"
#import "MSGraphMeetingTimeSuggestion.h"
#import "MSGraphAttendeeAvailability.h"
#import "MSGraphTimeSlot.h"
#import "MSGraphTimeConstraint.h"
#import "MSGraphIdentitySet.h"
#import "MSGraphIdentity.h"
#import "MSGraphItemReference.h"
#import "MSGraphSharepointIds.h"
#import "MSGraphPublicationFacet.h"
#import "MSGraphBooleanColumn.h"
#import "MSGraphCalculatedColumn.h"
#import "MSGraphChoiceColumn.h"
#import "MSGraphCurrencyColumn.h"
#import "MSGraphDateTimeColumn.h"
#import "MSGraphDefaultColumnValue.h"
#import "MSGraphLookupColumn.h"
#import "MSGraphNumberColumn.h"
#import "MSGraphPersonOrGroupColumn.h"
#import "MSGraphTextColumn.h"
#import "MSGraphContentTypeOrder.h"
#import "MSGraphQuota.h"
#import "MSGraphSystemFacet.h"
#import "MSGraphAudio.h"
#import "MSGraphDeleted.h"
#import "MSGraphFile.h"
#import "MSGraphHashes.h"
#import "MSGraphFileSystemInfo.h"
#import "MSGraphFolder.h"
#import "MSGraphFolderView.h"
#import "MSGraphImage.h"
#import "MSGraphGeoCoordinates.h"
#import "MSGraphPackage.h"
#import "MSGraphPhoto.h"
#import "MSGraphRemoteItem.h"
#import "MSGraphShared.h"
#import "MSGraphSpecialFolder.h"
#import "MSGraphRoot.h"
#import "MSGraphSearchResult.h"
#import "MSGraphVideo.h"
#import "MSGraphAccessAction.h"
#import "MSGraphItemActionStat.h"
#import "MSGraphIncompleteData.h"
#import "MSGraphListInfo.h"
#import "MSGraphContentTypeInfo.h"
#import "MSGraphSharingInvitation.h"
#import "MSGraphSharingLink.h"
#import "MSGraphSiteCollection.h"
#import "MSGraphThumbnail.h"
#import "MSGraphDriveItemUploadableProperties.h"
#import "MSGraphDriveRecipient.h"
#import "MSGraphItemPreviewInfo.h"
#import "MSGraphUploadSession.h"
#import "MSGraphWorkbookSessionInfo.h"
#import "MSGraphWorkbookFilterCriteria.h"
#import "MSGraphWorkbookIcon.h"
#import "MSGraphWorkbookSortField.h"
#import "MSGraphWorkbookWorksheetProtectionOptions.h"
#import "MSGraphWorkbookFilterDatetime.h"
#import "MSGraphWorkbookRangeReference.h"
#import "MSGraphInvitedUserMessageInfo.h"
#import "MSGraphPlannerAppliedCategories.h"
#import "MSGraphPlannerAssignments.h"
#import "MSGraphPlannerExternalReference.h"
#import "MSGraphPlannerChecklistItem.h"
#import "MSGraphPlannerAssignment.h"
#import "MSGraphPlannerExternalReferences.h"
#import "MSGraphPlannerChecklistItems.h"
#import "MSGraphPlannerOrderHintsByAssignee.h"
#import "MSGraphPlannerUserIds.h"
#import "MSGraphPlannerCategoryDescriptions.h"
#import "MSGraphNotebookLinks.h"
#import "MSGraphExternalLink.h"
#import "MSGraphSectionLinks.h"
#import "MSGraphPageLinks.h"
#import "MSGraphOnenoteOperationError.h"
#import "MSGraphDiagnostic.h"
#import "MSGraphOnenotePatchContentCommand.h"
#import "MSGraphOnenotePagePreview.h"
#import "MSGraphOnenotePagePreviewLinks.h"
#import "MSGraphRecentNotebook.h"
#import "MSGraphRecentNotebookLinks.h"
#import "MSGraphCopyNotebookModel.h"
#import "MSGraphReport.h"
#import "MSGraphEducationStudent.h"
#import "MSGraphEducationTeacher.h"
#import "MSGraphEducationTerm.h"
#import "MSGraphDeviceAndAppManagementAssignmentTarget.h"
#import "MSGraphMobileAppAssignmentSettings.h"
#import "MSGraphMimeContent.h"
#import "MSGraphFileEncryptionInfo.h"
#import "MSGraphAllLicensedUsersAssignmentTarget.h"
#import "MSGraphGroupAssignmentTarget.h"
#import "MSGraphExclusionGroupAssignmentTarget.h"
#import "MSGraphAllDevicesAssignmentTarget.h"
#import "MSGraphIosLobAppAssignmentSettings.h"
#import "MSGraphIosStoreAppAssignmentSettings.h"
#import "MSGraphIosVppAppAssignmentSettings.h"
#import "MSGraphMicrosoftStoreForBusinessAppAssignmentSettings.h"
#import "MSGraphAndroidMinimumOperatingSystem.h"
#import "MSGraphIosDeviceType.h"
#import "MSGraphIosMinimumOperatingSystem.h"
#import "MSGraphWindowsMinimumOperatingSystem.h"
#import "MSGraphVppLicensingType.h"
#import "MSGraphAppConfigurationSettingItem.h"
#import "MSGraphDeviceManagementSettings.h"
#import "MSGraphIntuneBrand.h"
#import "MSGraphRgbColor.h"
#import "MSGraphDeviceActionResult.h"
#import "MSGraphConfigurationManagerClientEnabledFeatures.h"
#import "MSGraphDeviceHealthAttestationState.h"
#import "MSGraphUpdateWindowsDeviceAccountActionParameter.h"
#import "MSGraphWindowsDeviceAccount.h"
#import "MSGraphWindowsDefenderScanActionResult.h"
#import "MSGraphDeleteUserFromSharedAppleDeviceActionResult.h"
#import "MSGraphDeviceGeoLocation.h"
#import "MSGraphLocateDeviceActionResult.h"
#import "MSGraphRemoteLockActionResult.h"
#import "MSGraphResetPasscodeActionResult.h"
#import "MSGraphDeviceOperatingSystemSummary.h"
#import "MSGraphDeviceExchangeAccessStateSummary.h"
#import "MSGraphWindowsDeviceADAccount.h"
#import "MSGraphWindowsDeviceAzureADAccount.h"
#import "MSGraphAppListItem.h"
#import "MSGraphOmaSetting.h"
#import "MSGraphOmaSettingInteger.h"
#import "MSGraphOmaSettingFloatingPoint.h"
#import "MSGraphOmaSettingString.h"
#import "MSGraphOmaSettingDateTime.h"
#import "MSGraphOmaSettingStringXml.h"
#import "MSGraphOmaSettingBoolean.h"
#import "MSGraphOmaSettingBase64.h"
#import "MSGraphMediaContentRatingAustralia.h"
#import "MSGraphMediaContentRatingCanada.h"
#import "MSGraphMediaContentRatingFrance.h"
#import "MSGraphMediaContentRatingGermany.h"
#import "MSGraphMediaContentRatingIreland.h"
#import "MSGraphMediaContentRatingJapan.h"
#import "MSGraphMediaContentRatingNewZealand.h"
#import "MSGraphMediaContentRatingUnitedKingdom.h"
#import "MSGraphMediaContentRatingUnitedStates.h"
#import "MSGraphIosNetworkUsageRule.h"
#import "MSGraphIosHomeScreenItem.h"
#import "MSGraphIosHomeScreenPage.h"
#import "MSGraphIosNotificationSettings.h"
#import "MSGraphIosHomeScreenFolder.h"
#import "MSGraphIosHomeScreenFolderPage.h"
#import "MSGraphIosHomeScreenApp.h"
#import "MSGraphWindowsFirewallNetworkProfile.h"
#import "MSGraphBitLockerRemovableDrivePolicy.h"
#import "MSGraphDefenderDetectedMalwareActions.h"
#import "MSGraphWindows10NetworkProxyServer.h"
#import "MSGraphEdgeSearchEngineBase.h"
#import "MSGraphEdgeSearchEngineCustom.h"
#import "MSGraphEdgeSearchEngine.h"
#import "MSGraphSharedPCAccountManagerPolicy.h"
#import "MSGraphWindowsUpdateInstallScheduleType.h"
#import "MSGraphWindowsUpdateScheduledInstall.h"
#import "MSGraphWindowsUpdateActiveHoursInstall.h"
#import "MSGraphDeviceConfigurationSettingState.h"
#import "MSGraphSettingSource.h"
#import "MSGraphDeviceCompliancePolicySettingState.h"
#import "MSGraphDeviceEnrollmentPlatformRestriction.h"
#import "MSGraphMobileAppIdentifier.h"
#import "MSGraphManagedAppDiagnosticStatus.h"
#import "MSGraphKeyValuePair.h"
#import "MSGraphWindowsInformationProtectionResourceCollection.h"
#import "MSGraphWindowsInformationProtectionDataRecoveryCertificate.h"
#import "MSGraphWindowsInformationProtectionApp.h"
#import "MSGraphWindowsInformationProtectionProxiedDomainCollection.h"
#import "MSGraphProxiedDomain.h"
#import "MSGraphWindowsInformationProtectionIPRangeCollection.h"
#import "MSGraphIpRange.h"
#import "MSGraphAndroidMobileAppIdentifier.h"
#import "MSGraphIosMobileAppIdentifier.h"
#import "MSGraphManagedAppPolicyDeploymentSummaryPerApp.h"
#import "MSGraphWindowsInformationProtectionStoreApp.h"
#import "MSGraphWindowsInformationProtectionDesktopApp.h"
#import "MSGraphIPv6Range.h"
#import "MSGraphIPv4Range.h"
#import "MSGraphRolePermission.h"
#import "MSGraphResourceAction.h"
#import "MSGraphImageInfo.h"
#import "MSGraphVisualInfo.h"
#import "MSGraphCloudAppSecurityState.h"
#import "MSGraphFileSecurityState.h"
#import "MSGraphFileHash.h"
#import "MSGraphAlertHistoryState.h"
#import "MSGraphHostSecurityState.h"
#import "MSGraphMalwareState.h"
#import "MSGraphNetworkConnection.h"
#import "MSGraphProcess.h"
#import "MSGraphRegistryKeyState.h"
#import "MSGraphAlertTrigger.h"
#import "MSGraphUserSecurityState.h"
#import "MSGraphSecurityVendorInformation.h"
#import "MSGraphVulnerabilityState.h"
#import "MSGraphAverageComparativeScore.h"
#import "MSGraphControlScore.h"
#import "MSGraphComplianceInformation.h"
#import "MSGraphCertificationControl.h"
#import "MSGraphSecureScoreControlStateUpdate.h"
#import "MSGraphResourceVisualization.h"
#import "MSGraphResourceReference.h"
#import "MSGraphSharingDetail.h"
#import "MSGraphInsightIdentity.h"
#import "MSGraphUsageDetails.h"
#import "MSGraphTeamMemberSettings.h"
#import "MSGraphTeamGuestSettings.h"
#import "MSGraphTeamMessagingSettings.h"
#import "MSGraphTeamFunSettings.h"
#import "MSGraphTeamClassSettings.h"
#import "MSGraphTeamsTabConfiguration.h"
#import "MSGraphOperationError.h"
#import "MSGraphAuditActivityInitiator.h"
#import "MSGraphUserIdentity.h"
#import "MSGraphAppIdentity.h"
#import "MSGraphTargetResource.h"
#import "MSGraphModifiedProperty.h"
#import "MSGraphKeyValue.h"
#import "MSGraphSignInStatus.h"
#import "MSGraphDeviceDetail.h"
#import "MSGraphSignInLocation.h"
#import "MSGraphAppliedConditionalAccessPolicy.h"
#import "MSGraphEntity.h"
#import "MSGraphDirectory.h"
#import "MSGraphDirectoryObject.h"
#import "MSGraphDevice.h"
#import "MSGraphExtension.h"
#import "MSGraphDirectoryObjectPartnerReference.h"
#import "MSGraphDirectoryRole.h"
#import "MSGraphDirectoryRoleTemplate.h"
#import "MSGraphDomain.h"
#import "MSGraphDomainDnsRecord.h"
#import "MSGraphDomainDnsCnameRecord.h"
#import "MSGraphDomainDnsMxRecord.h"
#import "MSGraphDomainDnsSrvRecord.h"
#import "MSGraphDomainDnsTxtRecord.h"
#import "MSGraphDomainDnsUnavailableRecord.h"
#import "MSGraphLicenseDetails.h"
#import "MSGraphGroup.h"
#import "MSGraphGroupSetting.h"
#import "MSGraphConversationThread.h"
#import "MSGraphCalendar.h"
#import "MSGraphOutlookItem.h"
#import "MSGraphEvent.h"
#import "MSGraphConversation.h"
#import "MSGraphProfilePhoto.h"
#import "MSGraphBaseItem.h"
#import "MSGraphDrive.h"
#import "MSGraphSite.h"
#import "MSGraphPlannerGroup.h"
#import "MSGraphOnenote.h"
#import "MSGraphGroupLifecyclePolicy.h"
#import "MSGraphTeam.h"
#import "MSGraphContract.h"
#import "MSGraphSubscribedSku.h"
#import "MSGraphOrganization.h"
#import "MSGraphUser.h"
#import "MSGraphOutlookUser.h"
#import "MSGraphMessage.h"
#import "MSGraphMailFolder.h"
#import "MSGraphCalendarGroup.h"
#import "MSGraphPerson.h"
#import "MSGraphContact.h"
#import "MSGraphContactFolder.h"
#import "MSGraphInferenceClassification.h"
#import "MSGraphPlannerUser.h"
#import "MSGraphManagedDevice.h"
#import "MSGraphManagedAppRegistration.h"
#import "MSGraphDeviceManagementTroubleshootingEvent.h"
#import "MSGraphUserActivity.h"
#import "MSGraphOfficeGraphInsights.h"
#import "MSGraphUserSettings.h"
#import "MSGraphGroupSettingTemplate.h"
#import "MSGraphSchemaExtension.h"
#import "MSGraphAttachment.h"
#import "MSGraphOutlookCategory.h"
#import "MSGraphMessageRule.h"
#import "MSGraphSingleValueLegacyExtendedProperty.h"
#import "MSGraphMultiValueLegacyExtendedProperty.h"
#import "MSGraphMailSearchFolder.h"
#import "MSGraphFileAttachment.h"
#import "MSGraphItemAttachment.h"
#import "MSGraphEventMessage.h"
#import "MSGraphReferenceAttachment.h"
#import "MSGraphOpenTypeExtension.h"
#import "MSGraphPost.h"
#import "MSGraphInferenceClassificationOverride.h"
#import "MSGraphBaseItemVersion.h"
#import "MSGraphColumnDefinition.h"
#import "MSGraphColumnLink.h"
#import "MSGraphContentType.h"
#import "MSGraphDriveItem.h"
#import "MSGraphList.h"
#import "MSGraphItemAnalytics.h"
#import "MSGraphListItem.h"
#import "MSGraphPermission.h"
#import "MSGraphSubscription.h"
#import "MSGraphThumbnailSet.h"
#import "MSGraphDriveItemVersion.h"
#import "MSGraphWorkbook.h"
#import "MSGraphFieldValueSet.h"
#import "MSGraphItemActivity.h"
#import "MSGraphItemActivityStat.h"
#import "MSGraphListItemVersion.h"
#import "MSGraphSharedDriveItem.h"
#import "MSGraphWorkbookApplication.h"
#import "MSGraphWorkbookNamedItem.h"
#import "MSGraphWorkbookTable.h"
#import "MSGraphWorkbookWorksheet.h"
#import "MSGraphWorkbookComment.h"
#import "MSGraphWorkbookFunctions.h"
#import "MSGraphWorkbookChart.h"
#import "MSGraphWorkbookChartAxes.h"
#import "MSGraphWorkbookChartDataLabels.h"
#import "MSGraphWorkbookChartAreaFormat.h"
#import "MSGraphWorkbookChartLegend.h"
#import "MSGraphWorkbookChartSeries.h"
#import "MSGraphWorkbookChartTitle.h"
#import "MSGraphWorkbookChartFill.h"
#import "MSGraphWorkbookChartFont.h"
#import "MSGraphWorkbookChartAxis.h"
#import "MSGraphWorkbookChartAxisFormat.h"
#import "MSGraphWorkbookChartGridlines.h"
#import "MSGraphWorkbookChartAxisTitle.h"
#import "MSGraphWorkbookChartLineFormat.h"
#import "MSGraphWorkbookChartAxisTitleFormat.h"
#import "MSGraphWorkbookChartDataLabelFormat.h"
#import "MSGraphWorkbookChartGridlinesFormat.h"
#import "MSGraphWorkbookChartLegendFormat.h"
#import "MSGraphWorkbookChartPoint.h"
#import "MSGraphWorkbookChartPointFormat.h"
#import "MSGraphWorkbookChartSeriesFormat.h"
#import "MSGraphWorkbookChartTitleFormat.h"
#import "MSGraphWorkbookCommentReply.h"
#import "MSGraphWorkbookFilter.h"
#import "MSGraphWorkbookFormatProtection.h"
#import "MSGraphWorkbookFunctionResult.h"
#import "MSGraphWorkbookPivotTable.h"
#import "MSGraphWorkbookRange.h"
#import "MSGraphWorkbookRangeFormat.h"
#import "MSGraphWorkbookRangeSort.h"
#import "MSGraphWorkbookRangeBorder.h"
#import "MSGraphWorkbookRangeFill.h"
#import "MSGraphWorkbookRangeFont.h"
#import "MSGraphWorkbookRangeView.h"
#import "MSGraphWorkbookTableColumn.h"
#import "MSGraphWorkbookTableRow.h"
#import "MSGraphWorkbookTableSort.h"
#import "MSGraphWorkbookWorksheetProtection.h"
#import "MSGraphInvitation.h"
#import "MSGraphPlannerTask.h"
#import "MSGraphPlannerPlan.h"
#import "MSGraphPlanner.h"
#import "MSGraphPlannerBucket.h"
#import "MSGraphPlannerTaskDetails.h"
#import "MSGraphPlannerAssignedToTaskBoardTaskFormat.h"
#import "MSGraphPlannerProgressTaskBoardTaskFormat.h"
#import "MSGraphPlannerBucketTaskBoardTaskFormat.h"
#import "MSGraphPlannerPlanDetails.h"
#import "MSGraphOnenoteEntityBaseModel.h"
#import "MSGraphOnenoteEntitySchemaObjectModel.h"
#import "MSGraphOnenoteEntityHierarchyModel.h"
#import "MSGraphNotebook.h"
#import "MSGraphOnenoteSection.h"
#import "MSGraphSectionGroup.h"
#import "MSGraphOnenotePage.h"
#import "MSGraphOnenoteResource.h"
#import "MSGraphOperation.h"
#import "MSGraphOnenoteOperation.h"
#import "MSGraphReportRoot.h"
#import "MSGraphAdministrativeUnit.h"
#import "MSGraphEducationRoot.h"
#import "MSGraphEducationClass.h"
#import "MSGraphEducationOrganization.h"
#import "MSGraphEducationSchool.h"
#import "MSGraphEducationUser.h"
#import "MSGraphDeviceAppManagement.h"
#import "MSGraphMobileApp.h"
#import "MSGraphMobileAppCategory.h"
#import "MSGraphManagedDeviceMobileAppConfiguration.h"
#import "MSGraphVppToken.h"
#import "MSGraphManagedAppPolicy.h"
#import "MSGraphManagedAppProtection.h"
#import "MSGraphTargetedManagedAppProtection.h"
#import "MSGraphIosManagedAppProtection.h"
#import "MSGraphAndroidManagedAppProtection.h"
#import "MSGraphDefaultManagedAppProtection.h"
#import "MSGraphManagedAppConfiguration.h"
#import "MSGraphTargetedManagedAppConfiguration.h"
#import "MSGraphWindowsInformationProtection.h"
#import "MSGraphMdmWindowsInformationProtectionPolicy.h"
#import "MSGraphWindowsInformationProtectionPolicy.h"
#import "MSGraphManagedAppStatus.h"
#import "MSGraphManagedEBook.h"
#import "MSGraphMobileAppAssignment.h"
#import "MSGraphMobileAppContentFile.h"
#import "MSGraphManagedDeviceMobileAppConfigurationAssignment.h"
#import "MSGraphManagedDeviceMobileAppConfigurationDeviceStatus.h"
#import "MSGraphManagedDeviceMobileAppConfigurationUserStatus.h"
#import "MSGraphManagedDeviceMobileAppConfigurationDeviceSummary.h"
#import "MSGraphManagedDeviceMobileAppConfigurationUserSummary.h"
#import "MSGraphMacOSOfficeSuiteApp.h"
#import "MSGraphManagedApp.h"
#import "MSGraphManagedAndroidStoreApp.h"
#import "MSGraphManagedIOSStoreApp.h"
#import "MSGraphManagedMobileLobApp.h"
#import "MSGraphMobileAppContent.h"
#import "MSGraphManagedAndroidLobApp.h"
#import "MSGraphManagedIOSLobApp.h"
#import "MSGraphMobileLobApp.h"
#import "MSGraphWindowsMobileMSI.h"
#import "MSGraphWindowsUniversalAppX.h"
#import "MSGraphAndroidLobApp.h"
#import "MSGraphIosLobApp.h"
#import "MSGraphMicrosoftStoreForBusinessApp.h"
#import "MSGraphWebApp.h"
#import "MSGraphAndroidStoreApp.h"
#import "MSGraphIosVppApp.h"
#import "MSGraphIosStoreApp.h"
#import "MSGraphIosMobileAppConfiguration.h"
#import "MSGraphDeviceManagement.h"
#import "MSGraphTermsAndConditions.h"
#import "MSGraphApplePushNotificationCertificate.h"
#import "MSGraphManagedDeviceOverview.h"
#import "MSGraphDetectedApp.h"
#import "MSGraphDeviceConfiguration.h"
#import "MSGraphDeviceCompliancePolicy.h"
#import "MSGraphSoftwareUpdateStatusSummary.h"
#import "MSGraphDeviceCompliancePolicyDeviceStateSummary.h"
#import "MSGraphDeviceCompliancePolicySettingStateSummary.h"
#import "MSGraphDeviceConfigurationDeviceStateSummary.h"
#import "MSGraphIosUpdateDeviceStatus.h"
#import "MSGraphDeviceCategory.h"
#import "MSGraphDeviceManagementExchangeConnector.h"
#import "MSGraphDeviceEnrollmentConfiguration.h"
#import "MSGraphOnPremisesConditionalAccessSettings.h"
#import "MSGraphMobileThreatDefenseConnector.h"
#import "MSGraphDeviceManagementPartner.h"
#import "MSGraphNotificationMessageTemplate.h"
#import "MSGraphRoleDefinition.h"
#import "MSGraphRoleAssignment.h"
#import "MSGraphDeviceAndAppManagementRoleAssignment.h"
#import "MSGraphResourceOperation.h"
#import "MSGraphTelecomExpenseManagementPartner.h"
#import "MSGraphRemoteAssistancePartner.h"
#import "MSGraphWindowsInformationProtectionAppLearningSummary.h"
#import "MSGraphWindowsInformationProtectionNetworkLearningSummary.h"
#import "MSGraphTermsAndConditionsAssignment.h"
#import "MSGraphTermsAndConditionsAcceptanceStatus.h"
#import "MSGraphDeviceConfigurationState.h"
#import "MSGraphDeviceCompliancePolicyState.h"
#import "MSGraphDeviceConfigurationAssignment.h"
#import "MSGraphDeviceConfigurationDeviceStatus.h"
#import "MSGraphDeviceConfigurationUserStatus.h"
#import "MSGraphDeviceConfigurationDeviceOverview.h"
#import "MSGraphDeviceConfigurationUserOverview.h"
#import "MSGraphSettingStateDeviceSummary.h"
#import "MSGraphDeviceCompliancePolicyAssignment.h"
#import "MSGraphDeviceComplianceScheduledActionForRule.h"
#import "MSGraphDeviceComplianceDeviceStatus.h"
#import "MSGraphDeviceComplianceUserStatus.h"
#import "MSGraphDeviceComplianceDeviceOverview.h"
#import "MSGraphDeviceComplianceUserOverview.h"
#import "MSGraphDeviceComplianceActionItem.h"
#import "MSGraphAndroidCustomConfiguration.h"
#import "MSGraphAndroidGeneralDeviceConfiguration.h"
#import "MSGraphAndroidWorkProfileCustomConfiguration.h"
#import "MSGraphAndroidWorkProfileGeneralDeviceConfiguration.h"
#import "MSGraphIosCertificateProfile.h"
#import "MSGraphIosCustomConfiguration.h"
#import "MSGraphIosGeneralDeviceConfiguration.h"
#import "MSGraphIosUpdateConfiguration.h"
#import "MSGraphMacOSCustomConfiguration.h"
#import "MSGraphMacOSGeneralDeviceConfiguration.h"
#import "MSGraphAppleDeviceFeaturesConfigurationBase.h"
#import "MSGraphIosDeviceFeaturesConfiguration.h"
#import "MSGraphMacOSDeviceFeaturesConfiguration.h"
#import "MSGraphWindows10EndpointProtectionConfiguration.h"
#import "MSGraphWindows10GeneralConfiguration.h"
#import "MSGraphWindowsDefenderAdvancedThreatProtectionConfiguration.h"
#import "MSGraphEditionUpgradeConfiguration.h"
#import "MSGraphWindows10CustomConfiguration.h"
#import "MSGraphWindows10EnterpriseModernAppManagementConfiguration.h"
#import "MSGraphSharedPCConfiguration.h"
#import "MSGraphWindows10SecureAssessmentConfiguration.h"
#import "MSGraphWindowsPhone81CustomConfiguration.h"
#import "MSGraphWindowsUpdateForBusinessConfiguration.h"
#import "MSGraphWindows81GeneralConfiguration.h"
#import "MSGraphWindowsPhone81GeneralConfiguration.h"
#import "MSGraphWindows10TeamGeneralConfiguration.h"
#import "MSGraphAndroidCompliancePolicy.h"
#import "MSGraphAndroidWorkProfileCompliancePolicy.h"
#import "MSGraphIosCompliancePolicy.h"
#import "MSGraphMacOSCompliancePolicy.h"
#import "MSGraphWindows10CompliancePolicy.h"
#import "MSGraphWindows10MobileCompliancePolicy.h"
#import "MSGraphWindows81CompliancePolicy.h"
#import "MSGraphWindowsPhone81CompliancePolicy.h"
#import "MSGraphDeviceComplianceSettingState.h"
#import "MSGraphEnrollmentConfigurationAssignment.h"
#import "MSGraphDeviceEnrollmentLimitConfiguration.h"
#import "MSGraphDeviceEnrollmentPlatformRestrictionsConfiguration.h"
#import "MSGraphDeviceEnrollmentWindowsHelloForBusinessConfiguration.h"
#import "MSGraphManagedMobileApp.h"
#import "MSGraphTargetedManagedAppPolicyAssignment.h"
#import "MSGraphManagedAppOperation.h"
#import "MSGraphManagedAppPolicyDeploymentSummary.h"
#import "MSGraphWindowsInformationProtectionAppLockerFile.h"
#import "MSGraphIosManagedAppRegistration.h"
#import "MSGraphAndroidManagedAppRegistration.h"
#import "MSGraphManagedAppStatusRaw.h"
#import "MSGraphLocalizedNotificationMessage.h"
#import "MSGraphDeviceAndAppManagementRoleDefinition.h"
#import "MSGraphManagedEBookAssignment.h"
#import "MSGraphEBookInstallSummary.h"
#import "MSGraphDeviceInstallState.h"
#import "MSGraphUserInstallStateSummary.h"
#import "MSGraphIosVppEBookAssignment.h"
#import "MSGraphIosVppEBook.h"
#import "MSGraphEnrollmentTroubleshootingEvent.h"
#import "MSGraphActivityHistoryItem.h"
#import "MSGraphSecurity.h"
#import "MSGraphAlert.h"
#import "MSGraphSecureScoreControlProfile.h"
#import "MSGraphSecureScore.h"
#import "MSGraphTrending.h"
#import "MSGraphSharedInsight.h"
#import "MSGraphUsedInsight.h"
#import "MSGraphAppCatalogs.h"
#import "MSGraphTeamsApp.h"
#import "MSGraphChannel.h"
#import "MSGraphTeamsAppInstallation.h"
#import "MSGraphTeamsAsyncOperation.h"
#import "MSGraphTeamsAppDefinition.h"
#import "MSGraphTeamsTab.h"
#import "MSGraphDataPolicyOperation.h"
#import "MSGraphIdentityProvider.h"
#import "MSGraphDirectoryAudit.h"
#import "MSGraphSignIn.h"
#import "MSGraphRestrictedSignIn.h"
#import "MSGraphAuditLogRoot.h"
