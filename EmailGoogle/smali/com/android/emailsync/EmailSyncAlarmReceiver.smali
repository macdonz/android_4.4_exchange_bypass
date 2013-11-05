.class public Lcom/android/emailsync/EmailSyncAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailSyncAlarmReceiver.java"


# instance fields
.field final MAILBOX_DATA_PROJECTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "mailboxKey"

    #v2=(Reference);
    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailsync/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/emailsync/EmailSyncAlarmReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/emailsync/EmailSyncAlarmReceiver;->handleReceive(Landroid/content/Context;)V

    return-void
.end method

.method private handleReceive(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 65
    #v12=(Null);
    new-instance v11, Ljava/util/ArrayList;

    #v11=(UninitRef);
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v11, mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    #v11=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->getAccountSelector()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, selector:Ljava/lang/String;
    :try_start_0
    #v3=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/emailsync/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-nez v6, :cond_1

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v1=(Reference);
    throw v1
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v7

    .line 109
    .local v7, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    #v7=(Reference);
    const-string v1, "EmailSyncAlarmReceiver"

    #v1=(Reference);
    const-string v2, "EmailProvider unavailable; aborting alarm receiver"

    #v2=(Reference);
    new-array v4, v12, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    .end local v7           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);
    return-void

    .line 78
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    :try_start_1
    #v2=(Reference);v4=(Null);v5=(Null);v6=(Reference);v7=(Uninit);v8=(Uninit);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 79
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 80
    .local v9, mailboxId:J
    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 81
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v9           #mailboxId:J
    :catchall_0
    #v1=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    :try_start_2
    #v1=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    #v1=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/emailsync/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    if-nez v6, :cond_3

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v1=(Reference);
    throw v1
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :cond_3
    :goto_1
    :try_start_3
    #v1=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 95
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 96
    .restart local v9       #mailboxId:J
    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    .line 97
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 101
    .end local v9           #mailboxId:J
    :catchall_1
    #v1=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    :try_start_4
    #v1=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    #v1=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);v8=(Reference);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Ljava/lang/Long;

    .line 106
    .local v9, mailboxId:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/emailsync/SyncManager;->serviceRequest(JI)V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/emailsync/EmailSyncAlarmReceiver$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/android/emailsync/EmailSyncAlarmReceiver$1;-><init>(Lcom/android/emailsync/EmailSyncAlarmReceiver;Landroid/content/Context;)V

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method
