.class public Lcom/android/email/activity/setup/DebugFragment;
.super Landroid/app/Fragment;
.source "DebugFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebugLoggingView:Landroid/widget/CheckBox;

.field private mEnableFileLoggingView:Landroid/widget/CheckBox;

.field private mEnableStrictModeView:Landroid/widget/CheckBox;

.field private mEnableVerboseLoggingView:Landroid/widget/CheckBox;

.field private mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

.field private mPreferences:Lcom/android/email/Preferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private clearWebViewCache()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Landroid/webkit/WebView;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, webview:Landroid/webkit/WebView;
    #v0=(Reference);
    const/4 v1, 0x1

    :try_start_0
    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 140
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Cleard WebView cache."

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 144
    return-void

    .line 142
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    throw v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    #v0=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email2/ui/MailActivityEmail;->updateLoggingFlags(Landroid/content/Context;)V

    .line 125
    return-void

    .line 102
    :pswitch_1
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    .line 103
    sput-boolean p2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    .line 104
    sput-boolean p2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG_EXCHANGE:Z

    goto :goto_0

    .line 107
    :pswitch_2
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    .line 108
    sput-boolean p2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG_VERBOSE:Z

    goto :goto_0

    .line 111
    :pswitch_3
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 112
    sput-boolean p2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG_FILE:Z

    goto :goto_0

    .line 115
    :pswitch_4
    #v0=(Integer);
    sput-boolean p2, Lcom/android/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setInhibitGraphicsAcceleration(Z)V

    goto :goto_0

    .line 119
    :pswitch_5
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableStrictMode(Z)V

    .line 120
    invoke-static {p2}, Lcom/android/email2/ui/MailActivityEmail;->enableStrictMode(Z)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x7f0800fc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/DebugFragment;->clearWebViewCache()V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x7f0800ff
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x8

    #v6=(PosByte);
    const/4 v5, 0x0

    .line 54
    #v5=(Null);
    sget-boolean v2, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "AccountSetupBasicsFragment onCreateView"

    #v3=(Reference);
    new-array v4, v5, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const v2, 0x7f040045

    #v2=(Integer);
    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, view:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    .line 62
    const v2, 0x7f0800fc

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 63
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v3, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v3=(Boolean);
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    const v2, 0x7f0800fd

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    .line 66
    const v2, 0x7f0800fe

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFileLoggingView:Landroid/widget/CheckBox;

    .line 70
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->areRemoteServicesInstalled(Landroid/content/Context;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    #v2=(Reference);
    sget-boolean v3, Lcom/android/email2/ui/MailActivityEmail;->DEBUG_VERBOSE:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v3, Lcom/android/email2/ui/MailActivityEmail;->DEBUG_FILE:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    :goto_0
    const v2, 0x7f0800ff

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f080100

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    .line 86
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    sget-boolean v3, Lcom/android/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    const v2, 0x7f080102

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    .line 92
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v3

    #v3=(Boolean);
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    return-object v1

    .line 78
    :cond_1
    #v2=(Boolean);
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableVerboseLoggingView:Landroid/widget/CheckBox;

    #v2=(Reference);
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 79
    iget-object v2, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
