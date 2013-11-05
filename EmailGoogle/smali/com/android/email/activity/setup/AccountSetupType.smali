.class public Lcom/android/email/activity/setup/AccountSetupType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;
    }
.end annotation


# instance fields
.field private mButtonPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 156
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupType;->mButtonPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupType;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupType;->onProceedNext()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/android/email/activity/setup/ForwardingIntent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/activity/setup/AccountSetupType;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    #v0=(Reference);
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/setup/ForwardingIntent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method private onProceedNext()V
    .locals 5

    .prologue
    .line 125
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 126
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 127
    .local v2, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v2=(Reference);
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    .line 128
    .local v1, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v1=(Reference);
    iget-boolean v3, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v3=(Reference);
    const/4 v4, 0x4

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 134
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 135
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->setDefaultsForProtocol(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 136
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupType;->finish()V

    .line 139
    return-void

    .line 131
    :cond_0
    #v3=(Boolean);v4=(Uninit);
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v4=(Reference);
    iget-boolean v3, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_1
    #v3=(PosByte);
    or-int/lit8 v3, v3, 0x1

    #v3=(Integer);
    invoke-virtual {v4, v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    goto :goto_0

    :cond_1
    #v3=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1
.end method

.method private onSelect(Ljava/lang/String;)V
    .locals 6
    .parameter "protocol"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 116
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 117
    .local v2, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v2=(Reference);
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    #v4=(Integer);
    iget v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v5=(Integer);
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 118
    invoke-static {p0, p1}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    .line 120
    .local v1, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v1=(Reference);
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;

    #v3=(UninitRef);
    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v4=(Reference);
    iget-object v5, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    #v5=(Reference);
    invoke-direct {v3, p0, v4, v5}, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountSetupType;Ljava/lang/String;Ljava/lang/String;)V

    #v3=(Reference);
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Void;

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 148
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupType;->mButtonPressed:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupType;->mButtonPressed:Z

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupType;->onSelect(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 145
    :pswitch_0
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupType;->finish()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x7f080038
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    .line 58
    #v12=(One);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 61
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v11=(Reference);
    invoke-virtual {v11}, Lcom/android/email/activity/setup/SetupData;->getFlowAccountType()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, accountType:Ljava/lang/String;
    #v0=(Reference);
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-virtual {v11}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v11

    #v11=(Integer);
    if-ne v11, v12, :cond_3

    .line 64
    const/4 v6, 0x0

    .line 65
    .local v6, matches:I
    #v6=(Null);
    const/4 v10, 0x0

    .line 66
    .local v10, protocol:Ljava/lang/String;
    #v10=(Null);
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v11

    #v11=(Reference);
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v3=(Reference);v4=(Conflicted);v6=(Integer);v10=(Reference);v11=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 67
    .local v4, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v11, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    #v11=(Reference);
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_0

    .line 68
    iget-object v10, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    .end local v4           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_1
    #v4=(Conflicted);
    if-ne v6, v12, :cond_3

    .line 74
    invoke-direct {p0, v10}, Lcom/android/email/activity/setup/AccountSetupType;->onSelect(Ljava/lang/String;)V

    .line 108
    .end local v6           #matches:I
    .end local v10           #protocol:Ljava/lang/String;
    :cond_2
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Integer);v12=(Integer);
    return-void

    .line 80
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Conflicted);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v12=(One);
    const v11, 0x7f040005

    invoke-virtual {p0, v11}, Lcom/android/email/activity/setup/AccountSetupType;->setContentView(I)V

    .line 81
    const v11, 0x7f08002e

    invoke-static {p0, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Landroid/view/ViewGroup;

    .line 82
    .local v8, parent:Landroid/view/ViewGroup;
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 83
    .local v5, lastView:Landroid/view/View;
    #v5=(Reference);
    const/4 v2, 0x1

    .line 84
    .local v2, i:I
    #v2=(One);
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v11

    #v11=(Reference);
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    #v1=(Conflicted);v2=(Integer);v3=(Reference);v7=(Conflicted);v11=(Conflicted);v12=(Integer);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 85
    .restart local v4       #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v11, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    #v11=(Reference);
    invoke-static {p0, v11}, Lcom/android/email/service/EmailServiceUtils;->isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_4

    .line 88
    iget-boolean v11, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->hide:Z

    if-nez v11, :cond_4

    if-eqz v0, :cond_5

    iget-object v11, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    #v11=(Reference);
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_4

    .line 91
    :cond_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    #v11=(Reference);
    const v12, 0x7f040011

    invoke-virtual {v11, v12, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/Button;

    .line 93
    .local v1, button:Landroid/widget/Button;
    instance-of v11, v8, Landroid/widget/RelativeLayout;

    #v11=(Boolean);
    if-eqz v11, :cond_6

    .line 94
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v7, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x3

    #v11=(PosByte);
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    .end local v7           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    #v7=(Conflicted);
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 98
    iget-object v11, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    #v11=(Reference);
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v11, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    move-object v5, v1

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    .end local v1           #button:Landroid/widget/Button;
    .end local v4           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_7
    #v1=(Conflicted);v4=(Conflicted);v11=(Boolean);
    const v11, 0x7f080038

    #v11=(Integer);
    invoke-virtual {p0, v11}, Lcom/android/email/activity/setup/AccountSetupType;->findViewById(I)Landroid/view/View;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/widget/Button;

    .line 107
    .local v9, previousButton:Landroid/widget/Button;
    if-eqz v9, :cond_2

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method
