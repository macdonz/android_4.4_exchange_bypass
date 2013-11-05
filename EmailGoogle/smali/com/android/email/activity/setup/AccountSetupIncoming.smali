.class public Lcom/android/email/activity/setup/AccountSetupIncoming;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z

.field private mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

.field private mStartedAutoDiscovery:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    #v0=(Reference);
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method private startAutoDiscover()V
    .locals 5

    .prologue
    .line 133
    const/4 v3, 0x1

    #v3=(One);
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mStartedAutoDiscovery:Z

    .line 135
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 139
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 141
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 142
    .local v2, username:Ljava/lang/String;
    #v2=(Reference);
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 143
    .local v1, password:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 144
    const/4 v3, 0x4

    #v3=(PosByte);
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v4=(Reference);
    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/email/activity/setup/SetupData;)V
    .locals 1
    .parameter "result"
    .parameter "setupData"

    .prologue
    .line 150
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    .line 151
    const/4 v0, 0x2

    #v0=(PosByte);
    if-ne p1, v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    .line 161
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 157
    :cond_1
    #v0=(PosByte);
    if-nez p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0
.end method

.method public onCheckSettingsComplete(ILcom/android/email/activity/setup/SetupData;)V
    .locals 1
    .parameter "result"
    .parameter "setupData"

    .prologue
    .line 194
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    .line 195
    if-nez p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V

    .line 203
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 199
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 113
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 107
    :sswitch_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0

    .line 110
    :sswitch_1
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onBackPressed()V

    goto :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x7f080034 -> :sswitch_0
        0x7f080038 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 68
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 69
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v0=(Reference);
    iget-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 71
    const v2, 0x7f040009

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupIncoming;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    #v2=(Reference);
    const v3, 0x7f080039

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 76
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v2, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 78
    const v2, 0x7f080034

    #v2=(Integer);
    invoke-static {p0, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    .line 79
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x7f080038

    #v2=(Integer);
    invoke-static {p0, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v2, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mStartedAutoDiscovery:Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v2, "AccountSetupExchange.StartedAutoDiscovery"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mStartedAutoDiscovery:Z

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mStartedAutoDiscovery:Z

    if-nez v2, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->startAutoDiscover()V

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServiceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    #v2=(Reference);
    iget-object v1, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->inferPrefix:Ljava/lang/String;

    .line 95
    .local v1, prefix:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 98
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButtonEnabled:Z

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 170
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 172
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 173
    .local v1, transaction:Landroid/app/FragmentTransaction;
    #v1=(Reference);
    const-string v2, "AccountCheckStgFrag"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 174
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 175
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 176
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mStartedAutoDiscovery:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    return-void
.end method
