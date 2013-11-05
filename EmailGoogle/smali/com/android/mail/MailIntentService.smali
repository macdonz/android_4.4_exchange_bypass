.class public Lcom/android/mail/MailIntentService;
.super Landroid/app/IntentService;
.source "MailIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/MailIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "MailIntentService"

    #v0=(Reference);
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    #p0=(Reference);
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    #p0=(Reference);
    return-void
.end method

.method public static broadcastBackupDataChanged(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "com.android.mail.action.BACKUP_DATA_CHANGED"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 63
    #v3=(Null);
    sget-object v0, Lcom/android/mail/MailIntentService;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Handling intent %s"

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/Object;

    #v2=(Reference);
    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, action:Ljava/lang/String;
    #v8=(Reference);
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 68
    invoke-static {p0}, Lcom/android/mail/utils/NotificationUtils;->cancelAndResendNotifications(Landroid/content/Context;)V

    .line 92
    :cond_0
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 69
    :cond_1
    #v0=(Boolean);v4=(One);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v0, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    #v0=(Reference);
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 70
    const-string v0, "account"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/providers/Account;

    .line 71
    .local v6, account:Lcom/android/mail/providers/Account;
    const-string v0, "folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Lcom/android/mail/providers/Folder;

    .line 73
    .local v9, folder:Lcom/android/mail/providers/Folder;
    invoke-static {p0, v6, v9, v4}, Lcom/android/mail/utils/NotificationUtils;->clearFolderNotification(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V

    .line 75
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "notification_dismiss"

    invoke-virtual {v9}, Lcom/android/mail/providers/Folder;->getTypeDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 78
    .end local v6           #account:Lcom/android/mail/providers/Account;
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    :cond_2
    #v0=(Boolean);v4=(One);v5=(Uninit);v6=(Uninit);v9=(Uninit);
    const-string v0, "com.android.mail.action.RESEND_NOTIFICATIONS"

    #v0=(Reference);
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 79
    const-string v0, "accountUri"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/net/Uri;

    .line 80
    .local v7, accountUri:Landroid/net/Uri;
    const-string v0, "folderUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Landroid/net/Uri;

    .line 82
    .local v10, folderUri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mail/utils/FolderUri;

    #v0=(UninitRef);
    invoke-direct {v0, v10}, Lcom/android/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    #v0=(Reference);
    invoke-static {p0, v3, v7, v0}, Lcom/android/mail/utils/NotificationUtils;->resendNotifications(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/FolderUri;)V

    goto :goto_0

    .line 84
    .end local v7           #accountUri:Landroid/net/Uri;
    .end local v10           #folderUri:Landroid/net/Uri;
    :cond_3
    #v0=(Boolean);v7=(Uninit);v10=(Uninit);
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    #v0=(Reference);
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 88
    invoke-static {v4}, Lcom/android/mail/utils/StorageLowState;->setIsStorageLow(Z)V

    goto :goto_0

    .line 89
    :cond_4
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    #v0=(Reference);
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 90
    invoke-static {v3}, Lcom/android/mail/utils/StorageLowState;->setIsStorageLow(Z)V

    goto :goto_0
.end method
