.class public Lcom/android/mail/NotificationActionIntentService;
.super Landroid/app/IntentService;
.source "NotificationActionIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "NotificationActionIntentService"

    #v0=(Reference);
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 68
    #p0=(Reference);
    return-void
.end method

.method private static logNotificationAction(Ljava/lang/String;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 6
    .parameter "intentAction"
    .parameter "action"

    .prologue
    .line 74
    const-string v0, "com.android.mail.action.notification.ARCHIVE"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 75
    const-string v2, "archive_remove_label"

    .line 76
    .local v2, eventAction:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->getTypeDescription()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, eventLabel:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v3=(Reference);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notification_action"

    #v1=(Reference);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 86
    return-void

    .line 77
    .end local v2           #eventAction:Ljava/lang/String;
    .end local v3           #eventLabel:Ljava/lang/String;
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const-string v0, "com.android.mail.action.notification.DELETE"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 78
    const-string v2, "delete"

    .line 79
    .restart local v2       #eventAction:Ljava/lang/String;
    #v2=(Reference);
    const/4 v3, 0x0

    .restart local v3       #eventLabel:Ljava/lang/String;
    #v3=(Null);
    goto :goto_0

    .line 81
    .end local v2           #eventAction:Ljava/lang/String;
    .end local v3           #eventLabel:Ljava/lang/String;
    :cond_1
    #v2=(Uninit);v3=(Uninit);
    move-object v2, p0

    .line 82
    .restart local v2       #eventAction:Ljava/lang/String;
    #v2=(Reference);
    const/4 v3, 0x0

    .restart local v3       #eventLabel:Ljava/lang/String;
    #v3=(Null);
    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 90
    .line 91
    #v7=(Null);
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 100
    #v1=(Reference);
    const-string v0, "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 103
    #v2=(Reference);
    array-length v3, v0

    #v3=(Integer);
    invoke-virtual {v2, v0, v7, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 104
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    const-class v3, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    .line 112
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getMessage()Lcom/android/mail/providers/Message;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/android/mail/NotificationActionIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 116
    const-string v4, "NotifActionIS"

    #v4=(Reference);
    const-string v5, "Handling %s"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    invoke-static {v1, v0}, Lcom/android/mail/NotificationActionIntentService;->logNotificationAction(Ljava/lang/String;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 120
    const-string v4, "com.android.mail.action.notification.UNDO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 121
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->cancelUndoTimeout(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 122
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->cancelUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 145
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 108
    :cond_0
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    const-string v0, "NotifActionIS"

    const-string v1, "data was null trying to unparcel the NotificationAction"

    new-array v2, v7, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 123
    :cond_1
    #v3=(Reference);v4=(Boolean);v5=(Reference);v6=(Reference);
    const-string v4, "com.android.mail.action.notification.ARCHIVE"

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    const-string v4, "com.android.mail.action.notification.DELETE"

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 125
    :cond_2
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->createUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 127
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->registerUndoTimeout(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v4, "com.android.mail.action.notification.UNDO_TIMEOUT"

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_4

    const-string v4, "com.android.mail.action.notification.DESTRUCT"

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 131
    :cond_4
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->cancelUndoTimeout(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 132
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationActionUtils;->processUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 142
    :cond_5
    :goto_1
    #v1=(Conflicted);v4=(Conflicted);
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/mail/utils/NotificationActionUtils;->resendNotifications(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    goto :goto_0

    .line 133
    :cond_6
    #v4=(Boolean);
    const-string v4, "com.android.mail.action.notification.MARK_READ"

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 134
    iget-object v1, v2, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 136
    #v1=(Reference);
    new-instance v2, Landroid/content/ContentValues;

    #v2=(UninitRef);
    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 137
    #v2=(Reference);
    const-string v4, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    invoke-virtual {v3, v1, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method
