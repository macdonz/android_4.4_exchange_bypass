.class public Lcom/android/exchange/ExchangeService;
.super Lcom/android/emailsync/SyncManager;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ExchangeService$CalendarObserver;
    }
.end annotation


# static fields
.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private final mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mEasAccountSelector:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;-><init>()V

    .line 110
    #p0=(Reference);
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "com.google.android.email.EXCHANGE_INTENT"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mIntent:Landroid/content/Intent;

    .line 118
    new-instance v0, Lcom/android/exchange/ExchangeService$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$1;-><init>(Lcom/android/exchange/ExchangeService;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 391
    return-void
.end method

.method static synthetic access$000()Lcom/android/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$200()Lcom/android/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300()Lcom/android/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400()Lcom/android/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500()Lcom/android/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->eventsAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 536
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 537
    const-string v0, "Exchange"

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    invoke-static {v0, p0, v1}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 541
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 539
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static checkExchangeServiceServiceRunning()V
    .locals 3

    .prologue
    .line 646
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 647
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 648
    :cond_1
    #v1=(Uninit);v2=(Uninit);
    sget-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 649
    const-string v1, "!!! checkExchangeServiceServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 650
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-class v2, Lcom/android/exchange/ExchangeService;

    #v2=(Reference);
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static eventsAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "caller_is_syncadapter"

    #v1=(Reference);
    const-string v2, "true"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 551
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Received deviceId from Email app: "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 555
    :cond_0
    #v1=(Conflicted);
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 523
    const-string v0, "Exchange"

    #v0=(Reference);
    invoke-static {v0, p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 527
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    invoke-static {p0, p1, v0}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 530
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_0
    return-void
.end method

.method public static onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 363
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private static onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 367
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v0=(Integer);
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 18
    .parameter "context"
    .parameter "accountId"
    .parameter "force"

    .prologue
    .line 568
    sget-object v9, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 569
    .local v9, exchangeService:Lcom/android/emailsync/SyncManager;
    #v9=(Reference);
    if-nez v9, :cond_0

    .line 623
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    return-void

    .line 570
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "accountKey=? AND type=?"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    #v16=(Reference);
    aput-object v16, v4, v5

    const/4 v5, 0x1

    #v5=(One);
    const-wide/16 v16, 0x44

    #v16=(LongLo);v17=(LongHi);
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    #v16=(Reference);
    aput-object v16, v4, v5

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 576
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    #v7=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 577
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 578
    :try_start_1
    new-instance v12, Lcom/android/emailcommon/provider/Mailbox;

    #v12=(UninitRef);
    invoke-direct {v12}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 579
    .local v12, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v12=(Reference);
    invoke-virtual {v12, v7}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 580
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 581
    .local v6, acct:Lcom/android/emailcommon/provider/Account;
    #v6=(Reference);
    if-nez v6, :cond_2

    .line 582
    invoke-static/range {p1 .. p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 583
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    .end local v6           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    :goto_1
    #v0=(Conflicted);v6=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 585
    .restart local v6       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    :try_start_2
    #v0=(Boolean);v6=(Reference);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Reference);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    iget-object v14, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 587
    .local v14, syncKey:Ljava/lang/String;
    #v14=(Reference);
    if-nez p3, :cond_4

    if-eqz v14, :cond_3

    const-string v0, "0"

    #v0=(Reference);
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 588
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 589
    monitor-exit v1

    goto :goto_1

    .line 618
    .end local v6           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #syncKey:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 621
    :catchall_1
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 593
    .restart local v6       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #syncKey:Ljava/lang/String;
    :cond_4
    :try_start_4
    #v0=(Boolean);v2=(Reference);v4=(Reference);v6=(Reference);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Reference);v13=(Uninit);v14=(Reference);v15=(Uninit);
    new-instance v8, Landroid/content/ContentValues;

    #v8=(UninitRef);
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v8, cv:Landroid/content/ContentValues;
    #v8=(Reference);
    const-string v0, "syncInterval"

    #v0=(Reference);
    const/4 v2, -0x4

    #v2=(Byte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 598
    const-string v0, "Set push/ping boxes to push/hold"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 600
    iget-wide v10, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 601
    .local v10, id:J
    #v10=(LongLo);v11=(LongHi);
    iget-object v0, v9, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/emailsync/AbstractSyncService;

    .line 603
    .local v13, svc:Lcom/android/emailsync/AbstractSyncService;
    if-eqz v13, :cond_6

    .line 604
    invoke-virtual {v13}, Lcom/android/emailsync/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 605
    :try_start_5
    invoke-virtual {v13}, Lcom/android/emailsync/AbstractSyncService;->stop()V

    .line 607
    iget-object v15, v13, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 608
    .local v15, thread:Ljava/lang/Thread;
    #v15=(Reference);
    if-eqz v15, :cond_5

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (Stopped)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 612
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 614
    :try_start_6
    invoke-virtual {v9, v10, v11}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    .line 616
    const-string v0, "reload folder list"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 618
    .end local v15           #thread:Ljava/lang/Thread;
    :cond_6
    #v15=(Conflicted);
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 612
    :catchall_2
    #v0=(Conflicted);
    move-exception v0

    :try_start_7
    #v0=(Reference);
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static reloadFolderListFailed(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 565
    return-void
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 633
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 634
    .local v0, exchangeService:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 635
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 636
    const-string v1, "reload folder list"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 638
    :cond_0
    #v1=(Conflicted);
    return-void
.end method


# virtual methods
.method public collectAccounts(Landroid/content/Context;Lcom/android/emailsync/SyncManager$AccountList;)Lcom/android/emailsync/SyncManager$AccountList;
    .locals 13
    .parameter "context"
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    .line 325
    #v3=(Null);
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 329
    .local v7, c:Landroid/database/Cursor;
    #v7=(Reference);
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 331
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    #v8=(UninitRef);
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v8, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v8=(Reference);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 333
    const/4 v1, 0x6

    #v1=(PosByte);
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 334
    .local v10, hostAuthId:J
    #v10=(LongLo);v11=(LongHi);
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v10, v1

    #v1=(Byte);
    if-lez v1, :cond_1

    .line 335
    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 336
    .local v9, ha:Lcom/android/emailcommon/provider/HostAuth;
    #v9=(Reference);
    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "gEas"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 337
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 338
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    #v6=(Reference);
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 340
    iput-object v9, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 341
    invoke-virtual {p2, v6}, Lcom/android/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 343
    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 345
    .local v12, inbox:Lcom/android/emailcommon/provider/Mailbox;
    #v12=(Reference);
    if-eqz v12, :cond_1

    iget v1, v12, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 347
    const-string v1, "flags"

    #v1=(Reference);
    iget v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    #v2=(Integer);
    or-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #ha:Lcom/android/emailcommon/provider/HostAuth;
    .end local v10           #hostAuthId:J
    .end local v12           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_2
    #v1=(Boolean);v3=(Null);v8=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 359
    return-object p2
.end method

.method public getAccountManagerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    const-string v0, "com.google.android.exchange"

    #v0=(Reference);
    return-object v0
.end method

.method public getAccountObserver(Landroid/os/Handler;)Lcom/android/emailsync/SyncManager$AccountObserver;
    .locals 1
    .parameter "handler"

    .prologue
    .line 657
    new-instance v0, Lcom/android/exchange/ExchangeService$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService$2;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    #v0=(Reference);
    return-object v0
.end method

.method public getAccountsSelector()Ljava/lang/String;
    .locals 8

    .prologue
    .line 701
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mEasAccountSelector:Ljava/lang/String;

    #v4=(Reference);
    if-nez v4, :cond_2

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .local v3, sb:Ljava/lang/StringBuilder;
    #v3=(Reference);
    const/4 v1, 0x1

    .line 704
    .local v1, first:Z
    #v1=(One);
    iget-object v5, p0, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v5=(Reference);
    monitor-enter v5

    .line 705
    :try_start_0
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v4}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 706
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 707
    const/16 v4, 0x2c

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    :goto_1
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 713
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 709
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v2=(Reference);v4=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 713
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    :try_start_1
    #v0=(Conflicted);v1=(Boolean);
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    const/16 v4, 0x29

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/exchange/ExchangeService;->mEasAccountSelector:Ljava/lang/String;

    .line 717
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailsync/AbstractSyncService;
    .locals 1
    .parameter "context"
    .parameter "m"

    .prologue
    .line 689
    iget v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 695
    new-instance v0, Lcom/android/exchange/EasSyncService;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    .line 691
    :sswitch_0
    #v0=(Integer);
    new-instance v0, Lcom/android/exchange/EasAccountService;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Lcom/android/exchange/EasAccountService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    #v0=(Reference);
    goto :goto_0

    .line 693
    :sswitch_1
    #v0=(Integer);
    new-instance v0, Lcom/android/exchange/EasOutboxService;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    #v0=(Reference);
    goto :goto_0

    .line 689
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mIntent:Landroid/content/Intent;

    #v0=(Reference);
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    #v0=(Reference);
    return-object v0
.end method

.method public onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .parameter "mailbox"

    .prologue
    .line 743
    iget v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    #v3=(Integer);
    const/4 v4, -0x3

    #v4=(Byte);
    if-eq v3, v4, :cond_1

    .line 757
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 744
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);v4=(Byte);v5=(Uninit);
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v3=(LongLo);v4=(LongHi);
    const/16 v5, 0x44

    #v5=(PosByte);
    invoke-static {p0, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 747
    .local v0, accountMailboxId:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v2

    .line 748
    .local v2, svc:Lcom/android/emailsync/AbstractSyncService;
    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Stopping ping due to sync of mailbox: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 751
    new-instance v3, Ljava/lang/Thread;

    #v3=(UninitRef);
    new-instance v4, Lcom/android/exchange/ExchangeService$3;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v2}, Lcom/android/exchange/ExchangeService$3;-><init>(Lcom/android/exchange/ExchangeService;Lcom/android/emailsync/AbstractSyncService;)V

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onStartup()V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getAccountsSelector()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public runAccountReconcilerSync(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 517
    const-string v0, "Reconciling accounts..."

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    const-string v1, "gEas"

    #v1=(Reference);
    const-string v2, "com.google.android.exchange"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method
