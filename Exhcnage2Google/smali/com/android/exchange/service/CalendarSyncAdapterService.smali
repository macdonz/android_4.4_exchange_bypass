.class public Lcom/android/exchange/service/CalendarSyncAdapterService;
.super Lcom/android/exchange/service/AbstractSyncAdapterService;
.source "CalendarSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/service/CalendarSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/service/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/exchange/service/AbstractSyncAdapterService;-><init>()V

    .line 48
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/exchange/service/CalendarSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "extras"

    .prologue
    const/4 v11, 0x1

    #v11=(One);
    const/4 v10, 0x0

    .line 86
    #v10=(Null);
    const-string v1, "__noop__"

    #v1=(Reference);
    invoke-virtual {p2, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 87
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "No-op sync requested, done"

    #v2=(Reference);
    new-array v3, v10, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 91
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 93
    .local v7, logging:Z
    #v7=(Boolean);
    const-string v1, "upload"

    #v1=(Reference);
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 94
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    new-array v2, v11, [Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "_id"

    #v3=(Reference);
    aput-object v3, v2, v10

    const-string v3, "dirty=1 AND account_name=?"

    new-array v4, v11, [Ljava/lang/String;

    #v4=(Reference);
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #v5=(Reference);
    aput-object v5, v4, v10

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-nez v6, :cond_1

    .line 97
    const-string v1, "Exchange"

    const-string v2, "Null changes cursor in CalendarSyncAdapterService"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 101
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    .line 102
    if-eqz v7, :cond_2

    .line 103
    const-string v1, "Exchange"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "No changes for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    #v1=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    #v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    #v1=(Boolean);v2=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-static {p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsFromBundle(Landroid/os/Bundle;)[J

    move-result-object v9

    .line 115
    .local v9, mailboxIds:[J
    #v9=(Reference);
    if-nez v9, :cond_6

    .line 117
    new-instance v8, Landroid/os/Bundle;

    #v8=(UninitRef);
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v8, mailExtras:Landroid/os/Bundle;
    #v8=(Reference);
    const-string v1, "__mailboxType__"

    #v1=(Reference);
    const/16 v2, 0x41

    #v2=(PosByte);
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    const-string v1, "force"

    #v1=(Reference);
    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-string v1, "do_not_retry"

    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    const-string v1, "expedited"

    invoke-virtual {p2, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 126
    const-string v1, "expedited"

    #v1=(Reference);
    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    :cond_5
    #v1=(Conflicted);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {p1, v1, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    const-string v1, "Exchange"

    const-string v2, "requestSync CalendarSyncAdapter %s"

    #v2=(Reference);
    new-array v3, v11, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 121
    .end local v8           #mailExtras:Landroid/os/Bundle;
    :cond_6
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v8=(Uninit);
    invoke-static {v9}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle([J)Landroid/os/Bundle;

    move-result-object v8

    .restart local v8       #mailExtras:Landroid/os/Bundle;
    #v8=(Reference);
    goto :goto_1
.end method


# virtual methods
.method protected getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/android/exchange/service/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/exchange/service/CalendarSyncAdapterService$SyncAdapterImpl;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/service/CalendarSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
