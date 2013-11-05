.class public Lcom/android/exchange/service/ContactsSyncAdapterService;
.super Lcom/android/exchange/service/AbstractSyncAdapterService;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/service/ContactsSyncAdapterService$SyncAdapterImpl;
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
    sput-object v0, Lcom/android/exchange/service/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/exchange/service/ContactsSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

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
    .line 38
    invoke-static {p0, p1, p2}, Lcom/android/exchange/service/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method private static hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "dirtyColumn"

    .prologue
    const/4 v4, 0x0

    .line 80
    #v4=(Null);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    #v6=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    #v0=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 84
    :catchall_0
    #v0=(Reference);
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "extras"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x0

    .line 95
    #v9=(Null);
    const-string v5, "__noop__"

    #v5=(Reference);
    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 96
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "No-op sync requested, done"

    #v6=(Reference);
    new-array v7, v9, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v8=(Conflicted);
    return-void

    .line 99
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(One);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    .local v1, cr:Landroid/content/ContentResolver;
    #v1=(Reference);
    const-string v5, "upload"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 102
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "account_name"

    #v6=(Reference);
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "account_type"

    const-string v7, "com.google.android.exchange"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 107
    .local v4, uri:Landroid/net/Uri;
    #v4=(Reference);
    const-string v5, "dirty"

    invoke-static {v1, v4, v5}, Lcom/android/exchange/service/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 108
    .local v0, changed:Z
    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 109
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "account_name"

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "account_type"

    const-string v7, "com.google.android.exchange"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 114
    const-string v5, "dirty"

    invoke-static {v1, v4, v5}, Lcom/android/exchange/service/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 116
    :cond_1
    if-nez v0, :cond_2

    .line 117
    const-string v5, "Exchange"

    const-string v6, "Upload sync; no changes"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 123
    .end local v0           #changed:Z
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-static {p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsFromBundle(Landroid/os/Bundle;)[J

    move-result-object v3

    .line 125
    .local v3, mailboxIds:[J
    #v3=(Reference);
    if-nez v3, :cond_4

    .line 127
    new-instance v2, Landroid/os/Bundle;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v2, mailExtras:Landroid/os/Bundle;
    #v2=(Reference);
    const-string v5, "__mailboxType__"

    #v5=(Reference);
    const/16 v6, 0x41

    #v6=(PosByte);
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    :goto_1
    #v5=(Conflicted);v6=(Conflicted);
    const-string v5, "force"

    #v5=(Reference);
    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string v5, "do_not_retry"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v5, "expedited"

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 136
    const-string v5, "expedited"

    #v5=(Reference);
    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    :cond_3
    #v5=(Conflicted);
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v5=(Reference);
    invoke-static {p1, v5, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    const-string v5, "Exchange"

    const-string v6, "requestSync ContactsSyncAdapter %s"

    #v6=(Reference);
    new-array v7, v8, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 131
    .end local v2           #mailExtras:Landroid/os/Bundle;
    :cond_4
    #v2=(Uninit);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(One);
    invoke-static {v3}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle([J)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2       #mailExtras:Landroid/os/Bundle;
    #v2=(Reference);
    goto :goto_1
.end method


# virtual methods
.method protected getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/android/exchange/service/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/exchange/service/ContactsSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/exchange/service/ContactsSyncAdapterService$SyncAdapterImpl;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/service/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/service/ContactsSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/exchange/service/ContactsSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

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
