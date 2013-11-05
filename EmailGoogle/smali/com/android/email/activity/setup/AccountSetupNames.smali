.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# static fields
.field private static final PROFILE_URI:Landroid/net/Uri;


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mIsCompleting:Z

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;

.field private mRequiresName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    sput-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 59
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mRequiresName:Z

    .line 60
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mIsCompleting:Z

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/android/email/activity/setup/ForwardingIntent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    #v0=(Reference);
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/setup/ForwardingIntent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method private finishActivity()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x8

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    .line 193
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedWithResult(Landroid/app/Activity;)V

    .line 202
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 203
    return-void

    .line 194
    :cond_1
    #v0=(Uninit);v1=(Integer);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_2

    .line 195
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 198
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 199
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0
.end method

.method private onNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    #v4=(Null);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    #v2=(Reference);
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mIsCompleting:Z

    .line 214
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 215
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, description:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 224
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/Account;)V

    #v2=(Reference);
    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v3=(Reference);
    new-array v4, v4, [Ljava/lang/Void;

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    return-void
.end method

.method private prefillNameFromProfile()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 147
    #v0=(Null);
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupNames$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$3;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    #v1=(Reference);
    check-cast v0, [Ljava/lang/Void;

    #v0=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSetupNames$3;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 161
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 169
    .local v0, enableNextButton:Z
    #v0=(One);
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mRequiresName:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, userName:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 173
    #v0=(Null);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    #v2=(Reference);
    const v3, 0x7f0a018e

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 178
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    return-void

    .line 175
    .restart local v1       #userName:Ljava/lang/String;
    :cond_1
    #v0=(One);v1=(Reference);v2=(Boolean);v3=(Uninit);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 287
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    return-void

    .line 289
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_0

    .line 287
    #p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mIsCompleting:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    .line 189
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x8

    #v11=(PosByte);
    const/4 v10, 0x3

    #v10=(PosByte);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x4

    .line 70
    #v8=(PosByte);
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 72
    const v6, 0x7f04000b

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 73
    const v6, 0x7f080046

    invoke-static {p0, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 74
    const v6, 0x7f080048

    #v6=(Integer);
    invoke-static {p0, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 75
    const v6, 0x7f080047

    #v6=(Integer);
    invoke-static {p0, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, accountNameLabel:Landroid/view/View;
    #v2=(Reference);
    const v6, 0x7f080034

    invoke-static {p0, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 77
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupNames$1;

    #v7=(UninitRef);
    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v5, Lcom/android/email/activity/setup/AccountSetupNames$2;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSetupNames$2;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 98
    .local v5, validationTextWatcher:Landroid/text/TextWatcher;
    #v5=(Reference);
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    sget-object v7, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v9, v7}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 101
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 102
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 103
    new-instance v6, Ljava/lang/IllegalStateException;

    #v6=(UninitRef);
    const-string v7, "unexpected null account"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 105
    :cond_0
    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v6, :cond_1

    .line 106
    new-instance v6, Ljava/lang/IllegalStateException;

    #v6=(UninitRef);
    const-string v7, "unexpected null hostauth"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    .line 111
    .local v3, flowMode:I
    #v3=(Integer);
    if-eq v3, v8, :cond_2

    if-eq v3, v10, :cond_2

    .line 113
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 114
    .local v1, accountEmail:Ljava/lang/String;
    #v1=(Reference);
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    .end local v1           #accountEmail:Ljava/lang/String;
    :cond_2
    #v1=(Conflicted);v7=(Conflicted);
    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v4

    .line 123
    .local v4, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v4=(Reference);
    iget-boolean v6, v4, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    #v6=(Boolean);
    if-nez v6, :cond_5

    .line 124
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mRequiresName:Z

    .line 125
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    #v6=(Reference);
    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 126
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 141
    if-ne v3, v8, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 144
    :cond_4
    return-void

    .line 128
    :cond_5
    #v6=(Boolean);
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    if-eqz v6, :cond_6

    .line 129
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_6
    #v7=(Conflicted);
    if-eq v3, v8, :cond_3

    if-eq v3, v10, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->prefillNameFromProfile()V

    goto :goto_0
.end method
