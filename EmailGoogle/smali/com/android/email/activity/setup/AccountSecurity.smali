.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    #v0=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    #p0=(Reference);
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v1, Lcom/android/email/activity/setup/ForwardingIntent;

    #v1=(UninitRef);
    const-class v0, Lcom/android/email/activity/setup/AccountSecurity;

    #v0=(Reference);
    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    #v1=(Reference);
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    if-eqz p3, :cond_0

    const-string v0, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    return-object v1

    .line 98
    :cond_0
    #v2=(Uninit);
    const-string v0, "EXPIRING"

    goto :goto_0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    #v0=(Reference);
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method private static repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    .locals 1
    .parameter "account"
    .parameter "security"

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 303
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 297
    :cond_0
    #v0=(Uninit);
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$1;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p0}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    .line 185
    #v8=(Null);
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    .line 187
    .local v3, security:Lcom/android/email/SecurityPolicy;
    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_5

    .line 188
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v4, :cond_1

    .line 189
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_0

    .line 190
    :cond_0
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Not active admin: repost notification"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    invoke-static {p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 289
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v7=(Conflicted);
    return-void

    .line 195
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Boolean);v5=(Null);v6=(Uninit);v7=(Uninit);
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 197
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 198
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v0=(Reference);
    if-nez v0, :cond_3

    .line 199
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 200
    :cond_2
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "No HostAuth: repost notification"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    invoke-static {p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 205
    :cond_3
    #v4=(LongLo);v5=(LongHi);v6=(Uninit);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-nez v4, :cond_4

    .line 206
    :cond_4
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Not active admin: post initial notification"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference);
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    const-string v4, "android.app.extra.ADD_EXPLANATION"

    const v5, 0x7f0a01e7

    #v5=(Integer);
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    #v7=(Reference);
    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v2, v9}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 223
    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    #v0=(Uninit);v2=(Uninit);v4=(Boolean);v5=(Null);v6=(Uninit);v7=(Uninit);
    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 224
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_6

    .line 225
    :cond_6
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Security active; clear holds"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v3, p1}, Lcom/android/email/SecurityPolicy;->syncAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 229
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->clearNotification()V

    .line 230
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 235
    :cond_7
    #v4=(Boolean);v5=(Null);v6=(Uninit);
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 239
    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v1

    .line 242
    .local v1, inactiveReasons:I
    #v1=(Integer);
    and-int/lit8 v4, v1, 0x4

    #v4=(Integer);
    if-eqz v4, :cond_b

    .line 243
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    #v4=(Boolean);
    if-eqz v4, :cond_9

    .line 244
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_8

    .line 245
    :cond_8
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Password needed; repost notification"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    invoke-static {p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 250
    :cond_9
    #v4=(Boolean);v5=(Null);v6=(Uninit);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_a

    .line 251
    :cond_a
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Password needed; request it via DPM"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 255
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v2       #intent:Landroid/content/Intent;
    #v2=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 262
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    #v2=(Uninit);v4=(Integer);v5=(Null);v6=(Uninit);
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_f

    .line 263
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    #v4=(Boolean);
    if-eqz v4, :cond_d

    .line 264
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_c

    .line 265
    :cond_c
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Encryption needed; repost notification"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 267
    invoke-static {p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 270
    :cond_d
    #v4=(Boolean);v5=(Null);v6=(Uninit);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-nez v4, :cond_e

    .line 271
    :cond_e
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Encryption needed; request it via DPM"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 275
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v2       #intent:Landroid/content/Intent;
    #v2=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 282
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f
    #v2=(Uninit);v4=(Integer);v5=(Null);v6=(Uninit);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-nez v4, :cond_10

    .line 283
    :cond_10
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Policies enforced; clear holds"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 286
    invoke-virtual {v3, p1}, Lcom/android/email/SecurityPolicy;->syncAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 287
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->clearNotification()V

    .line 288
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v10, -0x1

    #v10=(LongLo);v11=(LongHi);
    const/4 v13, 0x0

    .line 104
    #v13=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 108
    .local v4, i:Landroid/content/Intent;
    #v4=(Reference);
    const-string v9, "ACCOUNT_ID"

    #v9=(Reference);
    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 109
    .local v0, accountId:J
    #v0=(LongLo);v1=(LongHi);
    const-string v9, "SHOW_DIALOG"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 110
    .local v8, showDialog:Z
    #v8=(Boolean);
    const-string v9, "EXPIRING"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 111
    .local v6, passwordExpiring:Z
    #v6=(Boolean);
    const-string v9, "EXPIRED"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 112
    .local v5, passwordExpired:Z
    #v5=(Boolean);
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v7

    .line 113
    .local v7, security:Lcom/android/email/SecurityPolicy;
    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/email/SecurityPolicy;->clearNotification()V

    .line 114
    cmp-long v9, v0, v10

    #v9=(Byte);
    if-nez v9, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 160
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 119
    :cond_1
    #v2=(Uninit);v3=(Uninit);v9=(Byte);v10=(LongLo);v11=(LongHi);v12=(Uninit);
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 120
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v9, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 126
    :cond_2
    if-nez v6, :cond_3

    if-eqz v5, :cond_5

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 128
    .local v3, fm:Landroid/app/FragmentManager;
    #v3=(Reference);
    const-string v9, "password_expiration"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    .line 129
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v2

    .line 132
    .local v2, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    #v2=(Reference);
    sget-boolean v9, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v9=(Boolean);
    if-nez v9, :cond_4

    .line 133
    :cond_4
    const-string v9, "Email/AccountSecurity"

    #v9=(Reference);
    const-string v10, "Showing password expiration dialog"

    #v10=(Reference);
    new-array v11, v13, [Ljava/lang/Object;

    #v11=(Reference);
    invoke-static {v9, v10, v11}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    const-string v9, "password_expiration"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v2           #dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_5
    #v2=(Uninit);v3=(Uninit);v10=(LongLo);v11=(LongHi);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v9=(LongLo);v10=(LongHi);
    const-wide/16 v11, 0x0

    #v11=(LongLo);v12=(LongHi);
    cmp-long v9, v9, v11

    #v9=(Byte);
    if-eqz v9, :cond_8

    .line 142
    if-eqz v8, :cond_7

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 145
    .restart local v3       #fm:Landroid/app/FragmentManager;
    #v3=(Reference);
    const-string v9, "security_needed"

    #v9=(Reference);
    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    .line 146
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    move-result-object v2

    .line 148
    .local v2, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    #v2=(Reference);
    sget-boolean v9, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v9=(Boolean);
    if-nez v9, :cond_6

    .line 149
    :cond_6
    const-string v9, "Email/AccountSecurity"

    #v9=(Reference);
    const-string v10, "Showing security needed dialog"

    #v10=(Reference);
    new-array v11, v13, [Ljava/lang/Object;

    #v11=(Reference);
    invoke-static {v9, v10, v11}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    const-string v9, "security_needed"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v2           #dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_7
    #v2=(Uninit);v3=(Uninit);v9=(Byte);v10=(LongHi);v11=(LongLo);
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v9=(Reference);
    invoke-direct {p0, v9}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 159
    :cond_8
    #v9=(Byte);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method
