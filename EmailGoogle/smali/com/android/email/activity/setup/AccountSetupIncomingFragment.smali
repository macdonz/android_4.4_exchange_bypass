.class public Lcom/android/email/activity/setup/AccountSetupIncomingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupIncomingFragment.java"

# interfaces
.implements Lcom/android/email/view/CertificateSelector$HostCallback;


# instance fields
.field private mCacheLoginCredential:Ljava/lang/String;

.field private mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

.field private mDeletePolicyLabelView:Landroid/widget/TextView;

.field private mDeletePolicyView:Landroid/widget/Spinner;

.field private mDeviceIdSectionView:Landroid/view/View;

.field private mImapPathPrefixSectionView:Landroid/view/View;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mLoaded:Z

.field private mLoadedDeletePolicy:I

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerLabelView:Landroid/widget/TextView;

.field private mServerView:Landroid/widget/EditText;

.field private mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;

.field private mValidationTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    return-void
.end method

.method private configureEditor()V
    .locals 8

    .prologue
    const v6, 0x7f0a0196

    #v6=(Integer);
    const/16 v5, 0x8

    #v5=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 357
    #v4=(Null);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 358
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_4

    .line 359
    :cond_0
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "null account or host auth. account null: %b host auth null: %b"

    #v6=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v7, v2, [Ljava/lang/Object;

    #v7=(Reference);
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v7, v4

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    #v4=(Boolean);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 379
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    :cond_3
    #v1=(Uninit);v2=(PosByte);v3=(One);v4=(Null);v5=(Reference);v6=(Reference);v7=(Reference);
    move v2, v4

    .line 359
    #v2=(Null);
    goto :goto_0

    .line 364
    :cond_4
    #v2=(Reference);v5=(PosByte);v6=(Integer);v7=(Uninit);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 365
    .local v1, lastView:Landroid/widget/TextView;
    #v1=(Reference);
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v2, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    #v2=(Boolean);
    if-nez v2, :cond_5

    .line 370
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 373
    :cond_5
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    #v2=(Reference);
    iget-boolean v2, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    #v2=(Boolean);
    if-nez v2, :cond_6

    .line 374
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    #v2=(Reference);
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const/4 v3, 0x5

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 378
    :cond_6
    #v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_1
.end method

.method private getPortFromSecurityType(Z)I
    .locals 3
    .parameter "useSsl"

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 465
    .local v0, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v0=(Reference);
    if-eqz p1, :cond_0

    iget v1, v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->portSsl:I

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference);
    iget v1, v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->port:I

    #v1=(Integer);
    goto :goto_0
.end method

.method private getSslSelected()Z
    .locals 2

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 471
    .local v0, securityType:I
    #v0=(Integer);
    and-int/lit8 v1, v0, 0x1

    #v1=(Integer);
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private loadSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 385
    #v10=(One);
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 444
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 387
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Uninit);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v8=(Reference);
    invoke-virtual {v8}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 388
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 390
    .local v6, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v6=(Reference);
    iget-object v7, v6, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 391
    .local v7, username:Ljava/lang/String;
    #v7=(Reference);
    if-eqz v7, :cond_1

    .line 398
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :cond_1
    iget-object v3, v6, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 401
    .local v3, password:Ljava/lang/String;
    #v3=(Reference);
    if-eqz v3, :cond_2

    .line 402
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    #v8=(Boolean);
    if-eqz v8, :cond_2

    .line 405
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 409
    :cond_2
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    #v8=(Reference);
    iget-boolean v8, v8, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    #v8=(Boolean);
    if-eqz v8, :cond_3

    .line 410
    iget-object v5, v6, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 411
    .local v5, prefix:Ljava/lang/String;
    #v5=(Reference);
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    if-lez v8, :cond_3

    .line 412
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    #v8=(Reference);
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .end local v5           #prefix:Ljava/lang/String;
    :cond_3
    #v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v8

    #v8=(Integer);
    iput v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    .line 420
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    #v8=(Reference);
    iget v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    #v9=(Integer);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    invoke-static {v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 422
    iget v1, v6, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 423
    .local v1, flags:I
    #v1=(Integer);
    and-int/lit8 v1, v1, -0x5

    .line 424
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v8, v8, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSsl:Z

    #v8=(Boolean);
    if-eqz v8, :cond_4

    .line 425
    or-int/lit8 v1, v1, 0x1

    .line 427
    :cond_4
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v8=(Reference);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 429
    iget-object v2, v6, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 430
    .local v2, hostname:Ljava/lang/String;
    #v2=(Reference);
    if-eqz v2, :cond_5

    .line 431
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_5
    iget v4, v6, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 435
    .local v4, port:I
    #v4=(Integer);
    const/4 v8, -0x1

    #v8=(Byte);
    if-eq v4, v8, :cond_6

    .line 436
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    #v8=(Reference);
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :goto_1
    #v8=(Conflicted);
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 442
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 443
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    goto/16 :goto_0

    .line 438
    :cond_6
    #v8=(Byte);
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    goto :goto_1
.end method

.method private updatePortFromSecurityType()V
    .locals 4

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSslSelected()Z

    move-result v1

    .line 493
    .local v1, sslSelected:Z
    #v1=(Boolean);
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType(Z)I

    move-result v0

    .line 494
    .local v0, port:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    #v2=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onUseSslChanged(Z)V

    .line 496
    return-void
.end method

.method private validateFields()V
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 460
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 451
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->enableNextButton(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 451
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method


# virtual methods
.method public haveSettingsChanged()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 578
    #v4=(Null);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    #v2=(Reference);
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_3

    .line 579
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 581
    .local v1, newDeletePolicy:I
    #v1=(Integer);
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    #v2=(Integer);
    if-eq v2, v1, :cond_2

    move v0, v3

    .line 586
    .end local v1           #newDeletePolicy:I
    .local v0, deletePolicyChanged:Z
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    :cond_0
    #v2=(Conflicted);
    move v4, v3

    :cond_1
    #v4=(Boolean);
    return v4

    .end local v0           #deletePolicyChanged:Z
    .restart local v1       #newDeletePolicy:I
    :cond_2
    #v0=(Uninit);v1=(Integer);v2=(Integer);v4=(Null);
    move v0, v4

    .line 581
    #v0=(Null);
    goto :goto_0

    .line 583
    .end local v1           #newDeletePolicy:I
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Conflicted);
    const/4 v0, 0x0

    .restart local v0       #deletePolicyChanged:Z
    #v0=(Null);
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 183
    sget-boolean v7, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v7=(Boolean);
    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 184
    sget-object v7, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "AccountSetupIncomingFragment onActivityCreated"

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    new-array v9, v9, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    :cond_0
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    #v7=(Reference);
    invoke-virtual {v7, p0}, Lcom/android/email/view/CertificateSelector;->setHostActivity(Lcom/android/email/view/CertificateSelector$HostCallback;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    #v1=(Reference);
    move-object v0, v1

    .line 190
    #v0=(Reference);
    check-cast v0, Lcom/android/email/activity/setup/SetupData$SetupDataContainer;

    .line 191
    .local v0, container:Lcom/android/email/activity/setup/SetupData$SetupDataContainer;
    invoke-interface {v0}, Lcom/android/email/activity/setup/SetupData$SetupDataContainer;->getSetupData()Lcom/android/email/activity/setup/SetupData;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    .line 193
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-virtual {v7}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    iget-object v4, v7, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 194
    .local v4, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v4=(Reference);
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    iget-object v8, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    #v8=(Reference);
    invoke-static {v7, v8}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 196
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v7, v7, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 197
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v2, v7, [Lcom/android/email/activity/setup/SpinnerOption;

    #v2=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-instance v8, Lcom/android/email/activity/setup/SpinnerOption;

    #v8=(UninitRef);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    const v10, 0x7f0a019f

    #v10=(Integer);
    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-direct {v8, v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v8=(Reference);
    aput-object v8, v2, v7

    const/4 v7, 0x1

    #v7=(One);
    new-instance v8, Lcom/android/email/activity/setup/SpinnerOption;

    #v8=(UninitRef);
    const/4 v9, 0x2

    #v9=(PosByte);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    const v10, 0x7f0a01a0

    #v10=(Integer);
    invoke-virtual {v1, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-direct {v8, v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v8=(Reference);
    aput-object v8, v2, v7

    .line 205
    .local v2, deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    #v3=(UninitRef);
    const v7, 0x1090008

    #v7=(Integer);
    invoke-direct {v3, v1, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 208
    .local v3, deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    #v3=(Reference);
    const v7, 0x1090009

    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 210
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    #v7=(Reference);
    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 214
    .end local v2           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v3           #deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    new-instance v5, Ljava/util/ArrayList;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, securityTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/setup/SpinnerOption;>;"
    #v5=(Reference);
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f0a0199

    #v9=(Integer);
    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    const/4 v8, 0x1

    #v8=(One);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f0a019b

    #v9=(Integer);
    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    const/16 v8, 0x9

    #v8=(PosByte);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f0a019a

    #v9=(Integer);
    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v7, v7, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerTls:Z

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 225
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    const/4 v8, 0x2

    #v8=(PosByte);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f0a019d

    #v9=(Integer);
    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    const/16 v8, 0xa

    #v8=(PosByte);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f0a019c

    #v9=(Integer);
    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_2
    #v7=(Conflicted);
    new-instance v6, Landroid/widget/ArrayAdapter;

    #v6=(UninitRef);
    const v7, 0x1090008

    #v7=(Integer);
    invoke-direct {v6, v1, v7, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 234
    .local v6, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    #v6=(Reference);
    const v7, 0x1090009

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 235
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v7=(Reference);
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 236
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 608
    if-nez p1, :cond_0

    const/4 v1, -0x1

    #v1=(Byte);
    if-ne p2, v1, :cond_0

    .line 609
    const-string v1, "CertificateRequestor.alias"

    #v1=(Reference);
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, certAlias:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 614
    .end local v0           #certAlias:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/email/activity/setup/SetupData;)V
    .locals 1
    .parameter "result"
    .parameter "setupData"

    .prologue
    .line 594
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    .line 595
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    .line 596
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupIncoming;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onAutoDiscoverComplete(ILcom/android/email/activity/setup/SetupData;)V

    .line 597
    return-void
.end method

.method public onCertificateRequested()V
    .locals 2

    .prologue
    .line 601
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "com.android.emailcommon.REQUEST_CERT"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v1, "eas://com.android.emailcommon/certrequest"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 603
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 604
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 102
    #v3=(Null);
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onCreate"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    if-eqz p1, :cond_1

    .line 108
    const-string v0, "AccountSetupIncomingFragment.credential"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 109
    const-string v0, "AccountSetupIncomingFragment.loaded"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 111
    :cond_1
    #v0=(Conflicted);
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 116
    #v5=(Null);
    sget-boolean v2, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "AccountSetupIncomingFragment onCreateView"

    #v3=(Reference);
    new-array v4, v5, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    const v0, 0x7f040003

    .line 123
    .local v0, layoutId:I
    :goto_0
    #v0=(Integer);
    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, view:Landroid/view/View;
    #v1=(Reference);
    const v2, 0x7f08003a

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 126
    const v2, 0x7f080036

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 127
    const v2, 0x7f08003b

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f08003c

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    .line 129
    const v2, 0x7f08003d

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 130
    const v2, 0x7f08003e

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 131
    const v2, 0x7f080040

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f080041

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 133
    const v2, 0x7f080042

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 134
    const v2, 0x7f080044

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeviceIdSectionView:Landroid/view/View;

    .line 135
    const v2, 0x7f080043

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 136
    const v2, 0x7f08003f

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/email/view/CertificateSelector;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    .line 140
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 151
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    .line 163
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    #v2=(Reference);
    const v3, 0x7f0a01dc

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 167
    :cond_1
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v3, "0123456789"

    invoke-static {v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 178
    return-object v1

    .line 119
    .end local v0           #layoutId:I
    .end local v1           #view:Landroid/view/View;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Conflicted);
    const v0, 0x7f04000a

    #v0=(Integer);
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 324
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onDestroy"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 327
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 328
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    #v2=(Null);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 291
    :cond_0
    #v1=(Conflicted);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    :cond_1
    #v1=(Conflicted);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 296
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    :cond_2
    #v1=(Conflicted);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    .line 301
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 304
    :cond_3
    #v1=(Conflicted);
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 305
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 308
    :cond_4
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 309
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    .line 310
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 311
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 312
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeviceIdSectionView:Landroid/view/View;

    .line 313
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 314
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    .line 316
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroyView()V

    .line 317
    return-void
.end method

.method public onNext()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 536
    #v10=(Null);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v9=(Reference);
    invoke-virtual {v9}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 540
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getVisibility()I

    move-result v9

    #v9=(Integer);
    if-nez v9, :cond_0

    .line 541
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v9, v9, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    #v9=(Integer);
    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 545
    :cond_0
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    #v9=(Reference);
    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 546
    .local v3, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v3=(Reference);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, userName:Ljava/lang/String;
    #v7=(Reference);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, userPassword:Ljava/lang/String;
    #v8=(Reference);
    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, serverAddress:Ljava/lang/String;
    :try_start_0
    #v5=(Reference);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 558
    .local v6, serverPort:I
    :goto_0
    #v1=(Conflicted);v6=(Integer);v11=(Conflicted);v12=(Conflicted);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v9, v9, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 560
    .local v4, securityType:I
    #v4=(Integer);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v9, v5, v6, v4}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 561
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v9, v9, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    #v9=(Boolean);
    if-eqz v9, :cond_2

    .line 562
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, prefix:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_1

    move-object v9, v10

    :goto_1
    #v9=(Reference);v10=(Reference);
    iput-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 567
    .end local v2           #prefix:Ljava/lang/String;
    :goto_2
    #v2=(Conflicted);v9=(Conflicted);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    #v9=(Reference);
    invoke-virtual {v9}, Lcom/android/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 569
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v10, 0x1

    #v10=(One);
    invoke-interface {v9, v10, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->clearButtonBounce()V

    .line 571
    return-void

    .line 554
    .end local v4           #securityType:I
    .end local v6           #serverPort:I
    :catch_0
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v6=(Uninit);v10=(Null);v11=(Uninit);v12=(Uninit);
    move-exception v1

    .line 555
    .local v1, e:Ljava/lang/NumberFormatException;
    #v1=(Reference);
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSslSelected()Z

    move-result v9

    #v9=(Boolean);
    invoke-direct {p0, v9}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType(Z)I

    move-result v6

    .line 556
    .restart local v6       #serverPort:I
    #v6=(Integer);
    sget-object v9, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v9=(Reference);
    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef);
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #v11=(Reference);
    const-string v12, "Non-integer server port; using \'"

    #v12=(Reference);
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    #v12=(Null);
    new-array v12, v12, [Ljava/lang/Object;

    #v12=(Reference);
    invoke-static {v9, v11, v12}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 563
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #prefix:Ljava/lang/String;
    .restart local v4       #securityType:I
    :cond_1
    #v1=(Conflicted);v2=(Reference);v4=(Integer);v9=(Boolean);v11=(Conflicted);v12=(Conflicted);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "/"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 565
    .end local v2           #prefix:Ljava/lang/String;
    :cond_2
    #v2=(Uninit);v9=(Boolean);v10=(Null);
    iput-object v10, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 266
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onPause"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 269
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 270
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 257
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onResume"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 261
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    .line 262
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 332
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onSaveInstanceState"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 335
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 337
    const-string v0, "AccountSetupIncomingFragment.credential"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 243
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onStart"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 247
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 248
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 249
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 250
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    #v3=(Null);
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupIncomingFragment onStop"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 280
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 281
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 282
    return-void
.end method

.method public onUseSslChanged(Z)V
    .locals 4
    .parameter "useSsl"

    .prologue
    .line 475
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    #v2=(Reference);
    iget-boolean v2, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerCerts:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 476
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 477
    .local v1, mode:I
    :goto_0
    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/email/view/CertificateSelector;->setVisibility(I)V

    .line 478
    const-string v0, ""

    .line 480
    .local v0, deviceId:Ljava/lang/String;
    :try_start_0
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080045

    #v3=(Integer);
    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeviceIdSectionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v1           #mode:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 476
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    const/16 v1, 0x8

    #v1=(PosByte);
    goto :goto_0

    .line 481
    .restart local v0       #deviceId:Ljava/lang/String;
    .restart local v1       #mode:I
    :catch_0
    #v0=(Reference);v2=(Reference);
    move-exception v2

    goto :goto_1
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 507
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 508
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 510
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 511
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 8

    .prologue
    .line 518
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 519
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 520
    .local v2, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 525
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v3=(Reference);
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    iget-object v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "smtp"

    #v7=(Reference);
    invoke-static {v4, v5, v6, v7}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, hostName:Ljava/lang/String;
    #v1=(Reference);
    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v4, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget v5, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    #v5=(Integer);
    iget v6, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v6=(Integer);
    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 529
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 347
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 349
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 351
    :cond_0
    return-void
.end method
