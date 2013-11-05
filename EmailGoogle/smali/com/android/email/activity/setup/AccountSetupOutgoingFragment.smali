.class public Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void
.end method

.method private getPortFromSecurityType()I
    .locals 2

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    .local v0, securityType:I
    #v0=(Integer);
    and-int/lit8 v1, v0, 0x1

    #v1=(Integer);
    if-eqz v1, :cond_0

    const/16 v1, 0x1d1

    :goto_0
    #v1=(PosShort);
    return v1

    :cond_0
    #v1=(Integer);
    const/16 v1, 0x24b

    #v1=(PosShort);
    goto :goto_0
.end method

.method private loadSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 267
    #v8=(One);
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 301
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 269
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 270
    .local v4, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v4=(Reference);
    iget v6, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v6=(Integer);
    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 271
    iget-object v5, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 272
    .local v5, username:Ljava/lang/String;
    #v5=(Reference);
    if-eqz v5, :cond_1

    .line 273
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    #v6=(Reference);
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    :cond_1
    #v6=(Conflicted);
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 278
    .local v2, password:Ljava/lang/String;
    #v2=(Reference);
    if-eqz v2, :cond_2

    .line 279
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    #v6=(Reference);
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v2           #password:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    :cond_2
    #v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget v6, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v6=(Integer);
    and-int/lit8 v0, v6, -0x5

    .line 284
    .local v0, flags:I
    #v0=(Integer);
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v6=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 286
    iget-object v1, v4, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 287
    .local v1, hostname:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v1, :cond_3

    .line 288
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_3
    iget v3, v4, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 292
    .local v3, port:I
    #v3=(Integer);
    const/4 v6, -0x1

    #v6=(Byte);
    if-eq v3, v6, :cond_4

    .line 293
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    #v6=(Reference);
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_1
    #v6=(Conflicted);
    iput-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 299
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 300
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    goto :goto_0

    .line 295
    :cond_4
    #v6=(Byte);
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    goto :goto_1
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 339
    .local v0, port:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    #v1=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 307
    #v2=(Null);
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 318
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);
    return-void

    .line 308
    :cond_0
    #v0=(Uninit);v1=(One);v2=(Null);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    move v0, v1

    .line 311
    .local v0, enabled:Z
    :goto_1
    #v0=(Boolean);
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    move v0, v1

    .line 315
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->enableNextButton(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_2
    #v0=(Uninit);v1=(One);v2=(Null);
    move v0, v2

    .line 308
    #v0=(Null);
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_3
    #v0=(Boolean);
    move v0, v2

    .line 312
    #v0=(Null);
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 180
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onActivityCreated"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 325
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 326
    .local v0, visibility:I
    :goto_0
    #v0=(PosByte);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getView()Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f08005a

    #v2=(Integer);
    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 327
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08005b

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 328
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 329
    return-void

    .line 325
    .end local v0           #visibility:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 81
    #v3=(Null);
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onCreate"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_1

    .line 87
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    #v0=(Reference);
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 89
    :cond_1
    #v0=(Conflicted);
    const-string v0, "smtp"

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    #v11=(PosByte);
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    .line 95
    #v9=(Null);
    sget-boolean v6, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v6=(Boolean);
    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 96
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "AccountSetupOutgoingFragment onCreateView"

    #v7=(Reference);
    new-array v8, v9, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    :cond_0
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    #v6=(Boolean);
    if-eqz v6, :cond_1

    const v1, 0x7f040004

    .line 102
    .local v1, layoutId:I
    :goto_0
    #v1=(Integer);
    invoke-virtual {p1, v1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 103
    .local v5, view:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    const v6, 0x7f08003a

    #v6=(Integer);
    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 106
    const v6, 0x7f080036

    #v6=(Integer);
    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 107
    const v6, 0x7f08003c

    #v6=(Integer);
    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    .line 108
    const v6, 0x7f08003d

    #v6=(Integer);
    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    .line 109
    const v6, 0x7f080059

    #v6=(Integer);
    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 110
    const v6, 0x7f08003e

    #v6=(Integer);
    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 111
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const/4 v6, 0x5

    #v6=(PosByte);
    new-array v2, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    #v2=(Reference);
    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    #v6=(UninitRef);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    const v8, 0x7f0a0199

    #v8=(Integer);
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v6=(Reference);
    aput-object v6, v2, v9

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    #v6=(UninitRef);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0a019b

    #v8=(Integer);
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v6=(Reference);
    aput-object v6, v2, v10

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    #v6=(UninitRef);
    const/16 v7, 0x9

    #v7=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    const v8, 0x7f0a019a

    #v8=(Integer);
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v6=(Reference);
    aput-object v6, v2, v11

    const/4 v6, 0x3

    #v6=(PosByte);
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0a019d

    #v9=(Integer);
    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    aput-object v7, v2, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    #v7=(UninitRef);
    const/16 v8, 0xa

    #v8=(PosByte);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f0a019c

    #v9=(Integer);
    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #v7=(Reference);
    aput-object v7, v2, v6

    .line 127
    .local v2, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    #v3=(UninitRef);
    const v6, 0x1090008

    #v6=(Integer);
    invoke-direct {v3, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 130
    .local v3, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    #v3=(Reference);
    const v6, 0x1090009

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 131
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    #v6=(Reference);
    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 135
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;

    #v7=(UninitRef);
    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 153
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    .line 164
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    #v4=(Reference);
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v7, "0123456789"

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 173
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 175
    return-object v5

    .line 98
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #layoutId:I
    .end local v2           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v3           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v4           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Conflicted);v8=(Conflicted);v9=(Null);
    const v1, 0x7f040010

    #v1=(Integer);
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onDestroy"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 240
    return-void
.end method

.method public onNext()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 366
    #v11=(Null);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v8=(Reference);
    invoke-virtual {v8}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 367
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 369
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v3=(Reference);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 370
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, userName:Ljava/lang/String;
    #v6=(Reference);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, userPassword:Ljava/lang/String;
    #v7=(Reference);
    invoke-virtual {v3, v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v6           #userName:Ljava/lang/String;
    .end local v7           #userPassword:Ljava/lang/String;
    :goto_0
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, serverAddress:Ljava/lang/String;
    :try_start_0
    #v4=(Reference);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 385
    .local v5, serverPort:I
    :goto_1
    #v1=(Conflicted);v5=(Integer);v9=(Conflicted);v10=(Conflicted);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 387
    .local v2, securityType:I
    #v2=(Integer);
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v8, v4, v5, v2}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 388
    iput-object v11, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 390
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v9, 0x2

    #v9=(PosByte);
    invoke-interface {v8, v9, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->clearButtonBounce()V

    .line 392
    return-void

    .line 374
    .end local v2           #securityType:I
    .end local v4           #serverAddress:Ljava/lang/String;
    .end local v5           #serverPort:I
    :cond_0
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Uninit);v10=(Uninit);
    invoke-virtual {v3, v11, v11}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .restart local v4       #serverAddress:Ljava/lang/String;
    :catch_0
    #v4=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Reference);
    move-exception v1

    .line 382
    .local v1, e:Ljava/lang/NumberFormatException;
    #v1=(Reference);
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v5

    .line 383
    .restart local v5       #serverPort:I
    #v5=(Integer);
    sget-object v8, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "Non-integer server port; using \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    #v10=(Null);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onPause"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 217
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 204
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onResume"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 209
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 244
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onSaveInstanceState"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onStart"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 195
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 196
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    #v3=(Null);
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "AccountSetupOutgoingFragment onStop"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 228
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 229
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 349
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 351
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 258
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 261
    :cond_0
    return-void
.end method
