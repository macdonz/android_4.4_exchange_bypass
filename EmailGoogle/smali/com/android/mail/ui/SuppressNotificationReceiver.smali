.class public Lcom/android/mail/ui/SuppressNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuppressNotificationReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/mail/ui/AbstractActivityController;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/SuppressNotificationReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public activate(Landroid/content/Context;Lcom/android/mail/ui/AbstractActivityController;)Z
    .locals 9
    .parameter "context"
    .parameter "controller"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 52
    #v7=(Null);
    invoke-virtual {p2}, Lcom/android/mail/ui/AbstractActivityController;->getCurrentAccount()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 54
    .local v0, account:Lcom/android/mail/providers/Account;
    #v0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mController:Lcom/android/mail/ui/AbstractActivityController;

    .line 57
    new-instance v2, Landroid/content/IntentFilter;

    #v2=(UninitRef);
    const-string v3, "com.android.mail.action.update_notification"

    #v3=(Reference);
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, filter:Landroid/content/IntentFilter;
    #v2=(Reference);
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v3, v0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mMimeType:Ljava/lang/String;

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return v8

    .line 66
    :catch_0
    #v1=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    move-exception v1

    .line 67
    .local v1, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    #v1=(Reference);
    sget-object v3, Lcom/android/mail/ui/SuppressNotificationReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Malformed mimetype: %s"

    #v4=(Reference);
    new-array v5, v8, [Ljava/lang/Object;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mMimeType:Ljava/lang/String;

    #v6=(Reference);
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 72
    .end local v1           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_0
    #v1=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    sget-object v3, Lcom/android/mail/ui/SuppressNotificationReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Registering receiver with no mime type"

    #v4=(Reference);
    new-array v5, v7, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public activated()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    #v0=(Reference);
    return-void

    .line 96
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public notificationsDisabledForAccount(Lcom/android/mail/providers/Account;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mMimeType:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v11, 0x1

    #v11=(One);
    const/4 v10, 0x0

    .line 110
    #v10=(Null);
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    const-string v7, "com.android.mail.action.update_notification"

    #v7=(Reference);
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 164
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 115
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Boolean);v8=(Uninit);v9=(PosByte);
    iget-object v7, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mController:Lcom/android/mail/ui/AbstractActivityController;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/mail/ui/AbstractActivityController;->isConversationListVisible()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 120
    iget-object v7, p0, Lcom/android/mail/ui/SuppressNotificationReceiver;->mController:Lcom/android/mail/ui/AbstractActivityController;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/mail/ui/AbstractActivityController;->getCurrentListContext()Lcom/android/mail/ConversationListContext;

    move-result-object v4

    .line 121
    .local v4, listContext:Lcom/android/mail/ConversationListContext;
    #v4=(Reference);
    if-nez v4, :cond_2

    .line 123
    sget-object v7, Lcom/android/mail/ui/SuppressNotificationReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "unexpected null context"

    #v8=(Reference);
    new-array v9, v10, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 127
    :cond_2
    #v8=(Uninit);v9=(PosByte);
    invoke-static {v4}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    .line 132
    iget-object v5, v4, Lcom/android/mail/ConversationListContext;->account:Lcom/android/mail/providers/Account;

    .line 133
    .local v5, listContextAccount:Lcom/android/mail/providers/Account;
    #v5=(Reference);
    iget-object v6, v4, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    .line 135
    .local v6, listContextFolder:Lcom/android/mail/providers/Folder;
    #v6=(Reference);
    if-eqz v5, :cond_3

    if-nez v6, :cond_4

    .line 136
    :cond_3
    sget-object v7, Lcom/android/mail/ui/SuppressNotificationReceiver;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "SuppressNotificationReceiver.onReceive: account=%s, folder=%s"

    #v8=(Reference);
    new-array v9, v9, [Ljava/lang/Object;

    #v9=(Reference);
    aput-object v5, v9, v10

    aput-object v6, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 141
    :cond_4
    #v7=(Boolean);v8=(Uninit);v9=(PosByte);
    const-string v7, "notification_extra_account"

    #v7=(Reference);
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/net/Uri;

    .line 143
    .local v2, intentAccountUri:Landroid/net/Uri;
    iget-object v7, v5, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 146
    const-string v7, "notification_extra_folder"

    #v7=(Reference);
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/net/Uri;

    .line 149
    .local v3, intentFolderUri:Landroid/net/Uri;
    iget-object v7, v6, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v7, v3}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 152
    const-string v7, "notification_updated_unread_count"

    #v7=(Reference);
    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, count:I
    #v1=(Integer);
    if-eqz v1, :cond_0

    .line 161
    sget-object v7, Lcom/android/mail/ui/SuppressNotificationReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Aborting broadcast of intent %s, folder uri is %s"

    #v8=(Reference);
    new-array v9, v9, [Ljava/lang/Object;

    #v9=(Reference);
    aput-object p2, v9, v10

    aput-object v3, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    invoke-virtual {p0}, Lcom/android/mail/ui/SuppressNotificationReceiver;->abortBroadcast()V

    goto :goto_0
.end method
