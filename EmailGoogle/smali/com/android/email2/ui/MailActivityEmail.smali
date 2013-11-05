.class public Lcom/android/email2/ui/MailActivityEmail;
.super Lcom/android/mail/ui/MailActivity;
.source "MailActivityEmail.java"


# static fields
.field public static DEBUG:Z

.field public static DEBUG_EXCHANGE:Z

.field public static DEBUG_FILE:Z

.field public static DEBUG_VERBOSE:Z

.field public static final LOG_TAG:Ljava/lang/String;

.field private static sAccountsChangedNotification:Z

.field public static sDebugInhibitGraphicsAcceleration:Z

.field private static sMessageDecodeErrorString:Ljava/lang/String;

.field private static sUiThread:Ljava/lang/Thread;

.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 65
    #v1=(Null);
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    .line 75
    sput-boolean v1, Lcom/android/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    .line 81
    sput-boolean v1, Lcom/android/email2/ui/MailActivityEmail;->sAccountsChangedNotification:Z

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    #v0=(UninitRef);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email2/ui/MailActivityEmail;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 93
    sget-object v0, Lcom/android/email2/ui/MailActivityEmail;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "ui.email.android.com"

    #v1=(Reference);
    const-string v2, "view/mailbox"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mail/ui/MailActivity;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static enableStrictMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 269
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->enableStrictMode(Z)V

    .line 270
    return-void
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/email2/ui/MailActivityEmail;->sMessageDecodeErrorString:Ljava/lang/String;

    #v0=(Reference);
    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email2/ui/MailActivityEmail;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getViewIntent(JJ)Landroid/content/Intent;
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/email2/ui/MailActivityEmail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, contentResolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    const-string v1, "uiaccount"

    #v1=(Reference);
    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 280
    .local v7, accountCursor:Landroid/database/Cursor;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 281
    sget-object v1, Lcom/android/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Null account cursor for mAccountId %d"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 282
    const/4 v1, 0x0

    .line 318
    :goto_0
    #v4=(Boolean);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v1

    .line 285
    :cond_0
    #v3=(Null);v4=(Null);v5=(Null);v6=(Uninit);v8=(Uninit);v9=(Uninit);
    const/4 v6, 0x0

    .line 287
    .local v6, account:Lcom/android/mail/providers/Account;
    :try_start_0
    #v6=(Null);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 288
    new-instance v6, Lcom/android/mail/providers/Account;

    .end local v6           #account:Lcom/android/mail/providers/Account;
    #v6=(UninitRef);
    invoke-direct {v6, v7}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .restart local v6       #account:Lcom/android/mail/providers/Account;
    :cond_1
    #v6=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 295
    const-string v1, "uifolder"

    #v1=(Reference);
    invoke-static {v1, p3, p4}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 299
    .local v9, folderCursor:Landroid/database/Cursor;
    #v9=(Reference);
    if-nez v9, :cond_2

    .line 300
    sget-object v1, Lcom/android/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Null folder cursor for account %d, mailbox %d"

    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0

    .line 291
    .end local v6           #account:Lcom/android/mail/providers/Account;
    .end local v9           #folderCursor:Landroid/database/Cursor;
    :catchall_0
    #v1=(Conflicted);v3=(Null);v4=(Null);v5=(Null);v6=(Conflicted);v9=(Uninit);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 305
    .restart local v6       #account:Lcom/android/mail/providers/Account;
    .restart local v9       #folderCursor:Landroid/database/Cursor;
    :cond_2
    #v6=(Reference);v9=(Reference);
    const/4 v8, 0x0

    .line 307
    .local v8, folder:Lcom/android/mail/providers/Folder;
    :try_start_1
    #v8=(Null);
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 308
    new-instance v8, Lcom/android/mail/providers/Folder;

    .end local v8           #folder:Lcom/android/mail/providers/Folder;
    #v8=(UninitRef);
    invoke-direct {v8, v9}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 315
    .restart local v8       #folder:Lcom/android/mail/providers/Folder;
    #v8=(Reference);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 318
    iget-object v1, v8, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-static {p0, v1, v6}, Lcom/android/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 310
    :cond_3
    :try_start_2
    #v1=(Boolean);v8=(Null);
    sget-object v1, Lcom/android/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Empty folder cursor for account %d, mailbox %d"

    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    const/4 v1, 0x0

    .line 315
    #v1=(Null);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #folder:Lcom/android/mail/providers/Folder;
    :catchall_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Boolean);v8=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 143
    #v1=(One);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 144
    #v2=(Reference);
    new-instance v3, Landroid/content/ComponentName;

    #v3=(UninitRef);
    const-class v0, Lcom/android/email/service/AttachmentDownloadService;

    #v0=(Reference);
    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v3=(Reference);
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/service/AttachmentDownloadService;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    invoke-static {p1, p0, v0}, Lcom/android/email2/ui/MailActivityEmail;->startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V

    .line 152
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/NotificationController;->watchForMessages()V

    .line 153
    return-void

    .line 144
    :cond_0
    #v1=(One);
    const/4 v0, 0x2

    #v0=(PosByte);
    goto :goto_0
.end method

.method public static setServicesEnabledAsync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    new-instance v0, Lcom/android/email2/ui/MailActivityEmail$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email2/ui/MailActivityEmail$1;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 111
    return-void
.end method

.method public static setServicesEnabledSync(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    #v6=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    #v6=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 133
    .local v7, enable:Z
    :goto_0
    #v7=(Boolean);
    invoke-static {p0, v7}, Lcom/android/email2/ui/MailActivityEmail;->setServicesEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 132
    .end local v7           #enable:Z
    :cond_1
    #v7=(Uninit);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_0

    .line 136
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v6, :cond_2

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "enabled"
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 216
    #v6=(Null);
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    .line 217
    .local v4, prefs:Lcom/android/email/Preferences;
    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 218
    .local v1, debugLogging:I
    :goto_0
    #v1=(Boolean);
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    .line 220
    .local v5, verboseLogging:I
    :goto_1
    #v5=(PosByte);
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x4

    .line 222
    .local v3, fileLogging:I
    :goto_2
    #v3=(PosByte);
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x8

    .line 224
    .local v2, enableStrictMode:I
    :goto_3
    #v2=(PosByte);
    or-int v6, v1, v5

    #v6=(Integer);
    or-int/2addr v6, v3

    or-int v0, v6, v2

    .line 225
    .local v0, debugBits:I
    #v0=(Integer);
    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->setRemoteServicesLogging(Landroid/content/Context;I)V

    .line 226
    return-void

    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #enableStrictMode:I
    .end local v3           #fileLogging:I
    .end local v5           #verboseLogging:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Null);
    move v1, v6

    .line 217
    #v1=(Null);
    goto :goto_0

    .restart local v1       #debugLogging:I
    :cond_1
    #v1=(Boolean);
    move v5, v6

    .line 218
    #v5=(Null);
    goto :goto_1

    .restart local v5       #verboseLogging:I
    :cond_2
    #v5=(PosByte);
    move v3, v6

    .line 220
    #v3=(Null);
    goto :goto_2

    .restart local v3       #fileLogging:I
    :cond_3
    #v3=(PosByte);
    move v2, v6

    .line 222
    #v2=(Null);
    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/email2/ui/MailActivityEmail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 172
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 173
    .local v0, data:Landroid/net/Uri;
    :goto_0
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 174
    sget-object v8, Lcom/android/email2/ui/MailActivityEmail;->sUrlMatcher:Landroid/content/UriMatcher;

    #v8=(Reference);
    invoke-virtual {v8, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 175
    .local v5, match:I
    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 193
    .end local v5           #match:I
    :cond_0
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/mail/ui/MailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    #v8=(Reference);
    sput-object v8, Lcom/android/email2/ui/MailActivityEmail;->sUiThread:Ljava/lang/Thread;

    .line 195
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v6

    .line 196
    .local v6, prefs:Lcom/android/email/Preferences;
    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v8

    #v8=(Boolean);
    sput-boolean v8, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    .line 197
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getInhibitGraphicsAcceleration()Z

    move-result v8

    sput-boolean v8, Lcom/android/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    .line 198
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v8

    invoke-static {v8}, Lcom/android/email2/ui/MailActivityEmail;->enableStrictMode(Z)V

    .line 199
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 202
    invoke-static {p0}, Lcom/android/email2/ui/MailActivityEmail;->updateLoggingFlags(Landroid/content/Context;)V

    .line 205
    const v8, 0x7f0a0177

    #v8=(Integer);
    invoke-virtual {p0, v8}, Lcom/android/email2/ui/MailActivityEmail;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    sput-object v8, Lcom/android/email2/ui/MailActivityEmail;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 209
    invoke-static {p0}, Lcom/android/email2/ui/MailActivityEmail;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 210
    return-void

    .line 172
    .end local v0           #data:Landroid/net/Uri;
    .end local v6           #prefs:Lcom/android/email/Preferences;
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 177
    .restart local v0       #data:Landroid/net/Uri;
    .restart local v5       #match:I
    :pswitch_0
    #v0=(Reference);v5=(Integer);v8=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getMailboxIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v3

    .line 178
    .local v3, mailboxId:J
    #v3=(LongLo);v4=(LongHi);
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 179
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v2=(Reference);
    if-nez v2, :cond_2

    .line 180
    sget-object v8, Lcom/android/email2/ui/MailActivityEmail;->LOG_TAG:Ljava/lang/String;

    const-string v9, "unable to restore mailbox"

    #v9=(Reference);
    const/4 v10, 0x0

    #v10=(Null);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 184
    :cond_2
    #v9=(Uninit);v10=(Uninit);
    iget-wide v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v8=(LongLo);v9=(LongHi);
    invoke-direct {p0, v8, v9, v3, v4}, Lcom/android/email2/ui/MailActivityEmail;->getViewIntent(JJ)Landroid/content/Intent;

    move-result-object v7

    .line 185
    .local v7, viewIntent:Landroid/content/Intent;
    #v7=(Reference);
    if-eqz v7, :cond_0

    .line 186
    invoke-virtual {p0, v7}, Lcom/android/email2/ui/MailActivityEmail;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 175
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
