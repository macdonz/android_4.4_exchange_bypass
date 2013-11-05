.class public abstract Lcom/android/emailsync/SyncManager;
.super Landroid/app/Service;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailsync/SyncManager$ConnectivityReceiver;,
        Lcom/android/emailsync/SyncManager$SyncError;,
        Lcom/android/emailsync/SyncManager$SyncStatus;,
        Lcom/android/emailsync/SyncManager$SyncedMessageObserver;,
        Lcom/android/emailsync/SyncManager$MailboxObserver;,
        Lcom/android/emailsync/SyncManager$CalendarObserver;,
        Lcom/android/emailsync/SyncManager$AccountObserver;,
        Lcom/android/emailsync/SyncManager$AccountList;
    }
.end annotation


# static fields
.field protected static INSTANCE:Lcom/android/emailsync/SyncManager;

.field private static TAG:Ljava/lang/String;

.field private static volatile sClientConnectionManagerShutdownCount:I

.field private static sClientConnectionManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailcommon/utility/EmailClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field protected static sDeviceId:Ljava/lang/String;

.field protected static sFileLog:Z

.field protected static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;

.field protected static sUserLog:Z


# instance fields
.field public final mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

.field private final mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailsync/SyncManager$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mKicked:Z

.field private final mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public mResolver:Landroid/content/ContentResolver;

.field public final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailsync/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStartTime:J

.field public mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailsync/SyncManager$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLocksHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 91
    #v1=(Null);
    const-string v0, "SyncManager"

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    .line 172
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    .line 207
    sput-object v2, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 209
    sput-object v2, Lcom/android/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    .line 214
    sput v1, Lcom/android/emailsync/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 216
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sStartingUp:Z

    .line 217
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sStop:Z

    .line 230
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    .line 231
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sFileLog:Z

    .line 887
    new-instance v0, Lcom/android/emailsync/SyncManager$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailsync/SyncManager$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    #v1=(Null);
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 175
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    .line 187
    iput-object v1, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    new-instance v0, Lcom/android/emailsync/SyncManager$AccountList;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailsync/SyncManager$AccountList;-><init>(Lcom/android/emailsync/SyncManager;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    .line 194
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    .line 225
    iput-object v1, p0, Lcom/android/emailsync/SyncManager;->mConnectivityReceiver:Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

    .line 1182
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/emailsync/SyncManager;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/android/emailsync/SyncManager;->shutdownConnectionManager()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sStartingUp:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/emailsync/SyncManager;->sStartingUp:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sStop:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/emailsync/SyncManager;->sStop:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/emailsync/SyncManager;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/emailsync/SyncManager;->setAlarm(JJ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/emailsync/SyncManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/emailsync/SyncManager;->mServiceStartTime:J

    return-wide p1
.end method

.method private acquireWakeLock(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 992
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    #v3=(Reference);
    monitor-enter v3

    .line 993
    :try_start_0
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    .line 994
    .local v0, lock:Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 995
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 996
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/os/PowerManager;

    .line 997
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    #v2=(One);
    const-string v4, "MAIL_SERVICE"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 998
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1000
    const-string v2, "+WAKE LOCK ACQUIRED"

    invoke-static {v2}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1002
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    #v1=(Conflicted);
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    :cond_1
    #v5=(Conflicted);v6=(Conflicted);
    monitor-exit v3

    .line 1005
    return-void

    .line 1004
    .end local v0           #lock:Ljava/lang/Long;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1125
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1126
    #v1=(Reference);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->checkSyncManagerRunning()V

    .line 1127
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, p1, v2

    #v0=(Byte);
    if-gez v0, :cond_1

    .line 1128
    const-string v0, "SyncServiceManager alert"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1129
    const-string v0, "ping SyncServiceManager"

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 1180
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1130
    :cond_1
    #v0=(Byte);v2=(LongLo);v3=(LongHi);v4=(Uninit);
    if-nez v1, :cond_2

    .line 1131
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/emailsync/SyncManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1133
    :cond_2
    #v0=(Byte);
    invoke-virtual {v1, p1, p2}, Lcom/android/emailsync/SyncManager;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v2

    .line 1134
    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 1137
    const-string v0, "SyncServiceManager Alert: "

    .line 1138
    #v0=(Reference);
    iget-object v3, v2, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v3=(Reference);
    if-eqz v3, :cond_3

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    :cond_3
    new-instance v3, Ljava/lang/Thread;

    #v3=(UninitRef);
    new-instance v4, Lcom/android/emailsync/SyncManager$2;

    #v4=(UninitRef);
    invoke-direct {v4, v1, p1, p2, v2}, Lcom/android/emailsync/SyncManager$2;-><init>(Lcom/android/emailsync/SyncManager;JLcom/android/emailsync/AbstractSyncService;)V

    #v4=(Reference);
    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 865
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 866
    sget-object v0, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    invoke-static {v0, p0, v1}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 870
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 868
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-static {p0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 574
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

.method static checkSyncManagerRunning()V
    .locals 3

    .prologue
    .line 1488
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1489
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 1494
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1490
    :cond_1
    #v1=(Uninit);v2=(Uninit);
    sget-object v1, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 1491
    const-string v1, "!!! checkSyncServiceManagerServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1492
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-class v2, Lcom/android/emailsync/SyncManager;

    #v2=(Reference);
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private clearAlarm(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 1048
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    #v3=(Reference);
    monitor-enter v3

    .line 1049
    :try_start_0
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/app/PendingIntent;

    .line 1050
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1051
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/AlarmManager;

    .line 1052
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1054
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    #v0=(Conflicted);
    monitor-exit v3

    .line 1057
    return-void

    .line 1056
    .end local v1           #pi:Landroid/app/PendingIntent;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 355
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-nez v0, :cond_0

    const-string v1, ""

    .line 356
    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Uninit);
    invoke-virtual {v0}, Lcom/android/emailsync/SyncManager;->getAccountsSelector()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2247
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 880
    sget-object v0, Lcom/android/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Received deviceId from Email app: "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 884
    :cond_0
    #v1=(Conflicted);
    sget-object v0, Lcom/android/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 1951
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v1, 0x100

    #v1=(PosShort);
    if-ge v0, v1, :cond_0

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

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2099
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2100
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 2101
    monitor-enter v0

    .line 2103
    const/4 v1, 0x1

    :try_start_0
    #v1=(One);
    iput-boolean v1, v0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    .line 2104
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    :cond_0
    #v1=(Conflicted);
    sget-object v1, Lcom/android/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 2108
    sget-object v2, Lcom/android/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    #v2=(Reference);
    monitor-enter v2

    .line 2109
    :try_start_1
    sget-object v1, Lcom/android/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2110
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2112
    :cond_1
    #v2=(Conflicted);
    return-void

    .line 2105
    :catchall_0
    #v1=(Conflicted);v2=(Uninit);
    move-exception v1

    :try_start_2
    #v1=(Reference);
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2110
    :catchall_1
    #v2=(Reference);
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 852
    sget-object v0, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0, p0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 856
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    invoke-static {p0, p1, v0}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 858
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sFileLog:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 859
    invoke-static {p0, p1}, Lcom/android/emailsync/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    return-void
.end method

.method private static onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 350
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

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 10
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, holdWasReleased:Z
    #v1=(Null);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 834
    .local v4, mailboxId:J
    #v4=(LongLo);v5=(LongHi);
    if-eqz p3, :cond_1

    .line 835
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 836
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    #v3=(Reference);
    if-nez v3, :cond_2

    .line 837
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    #v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    #v6=(Reference);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailsync/SyncManager$SyncError;

    .line 843
    .local v0, error:Lcom/android/emailsync/SyncManager$SyncError;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/emailsync/SyncManager$SyncError;->reason:I

    #v6=(Integer);
    if-ne v6, p2, :cond_0

    .line 844
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    #v6=(Reference);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 838
    .end local v0           #error:Lcom/android/emailsync/SyncManager$SyncError;
    .restart local v3       #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    #v0=(Conflicted);v1=(Boolean);v3=(Reference);v7=(Conflicted);
    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v6=(LongLo);v7=(LongHi);
    iget-wide v8, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    cmp-long v6, v6, v8

    #v6=(Byte);
    if-eqz v6, :cond_1

    goto :goto_0

    .line 848
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return v1
.end method

.method private releaseWakeLock(J)V
    .locals 12
    .parameter "id"

    .prologue
    .line 1008
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    #v4=(Reference);
    monitor-enter v4

    .line 1009
    :try_start_0
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    #v3=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    .line 1010
    .local v1, lock:Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 1011
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/Long;

    .line 1012
    .local v2, startTime:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    .line 1013
    .local v0, historicalTime:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 1014
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1016
    :cond_0
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    #v10=(LongLo);v11=(LongHi);
    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    .line 1019
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v3=(Reference);
    if-eqz v3, :cond_1

    .line 1020
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1022
    :cond_1
    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1024
    const-string v3, "+WAKE LOCK RELEASED"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1029
    .end local v0           #historicalTime:Ljava/lang/Long;
    .end local v2           #startTime:Ljava/lang/Long;
    :cond_2
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    monitor-exit v4

    .line 1030
    return-void

    .line 1026
    .restart local v0       #historicalTime:Ljava/lang/Long;
    .restart local v2       #startTime:Ljava/lang/Long;
    :cond_3
    #v0=(Reference);v2=(Reference);v3=(Boolean);v6=(Reference);v7=(LongHi);v8=(LongLo);v9=(LongHi);v10=(LongLo);v11=(LongHi);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v5, "Release request for lock not held: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    .end local v0           #historicalTime:Ljava/lang/Long;
    .end local v1           #lock:Ljava/lang/Long;
    .end local v2           #startTime:Ljava/lang/Long;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/emailsync/Request;)V
    .locals 7
    .parameter "m"
    .parameter "reason"
    .parameter "req"

    .prologue
    .line 1228
    const/4 v2, 0x4

    .line 1230
    .local v2, syncStatus:I
    #v2=(PosByte);
    sget-boolean v3, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v3, Lcom/android/emailsync/SyncManager;->sStop:Z

    if-eqz v3, :cond_1

    .line 1253
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 1233
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    sget-object v4, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v4=(Reference);
    monitor-enter v4

    .line 1234
    :try_start_0
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1235
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-eqz v0, :cond_5

    .line 1237
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v3=(Reference);
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailsync/AbstractSyncService;

    .line 1238
    .local v1, service:Lcom/android/emailsync/AbstractSyncService;
    if-nez v1, :cond_5

    .line 1239
    invoke-virtual {p0, p0, p1}, Lcom/android/emailsync/SyncManager;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v1

    .line 1240
    iget-boolean v3, v1, Lcom/android/emailsync/AbstractSyncService;->mIsValid:Z

    #v3=(Boolean);
    if-nez v3, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 1252
    .end local v0           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v1           #service:Lcom/android/emailsync/AbstractSyncService;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1241
    .restart local v0       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v1       #service:Lcom/android/emailsync/AbstractSyncService;
    :cond_2
    :try_start_1
    #v0=(Reference);v1=(Reference);v3=(Boolean);v5=(Reference);v6=(LongHi);
    iput p2, v1, Lcom/android/emailsync/AbstractSyncService;->mSyncReason:I

    .line 1242
    if-eqz p3, :cond_3

    .line 1243
    invoke-virtual {v1, p3}, Lcom/android/emailsync/AbstractSyncService;->addRequest(Lcom/android/emailsync/Request;)V

    .line 1245
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/emailsync/SyncManager;->startServiceThread(Lcom/android/emailsync/AbstractSyncService;)V

    .line 1246
    const/4 v3, 0x6

    #v3=(PosByte);
    if-lt p2, v3, :cond_4

    .line 1247
    const/4 v2, 0x1

    .line 1249
    :cond_4
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);
    invoke-virtual {p0, v5, v6, v2}, Lcom/android/emailsync/SyncManager;->setMailboxSyncStatus(JI)V

    .line 1252
    .end local v1           #service:Lcom/android/emailsync/AbstractSyncService;
    :cond_5
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1095
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1096
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1097
    invoke-direct {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->acquireWakeLock(J)V

    .line 1098
    invoke-direct {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->clearAlarm(J)V

    .line 1100
    :cond_0
    return-void
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 1942
    const-wide/16 v0, 0x1388

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/emailsync/SyncManager;->serviceRequest(JJI)V

    .line 1943
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1958
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1959
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 1973
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1960
    :cond_1
    #v1=(Uninit);v2=(Uninit);
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1961
    #v1=(Reference);
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1963
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v0

    .line 1964
    if-eqz v0, :cond_2

    .line 1965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/android/emailsync/AbstractSyncService;->mRequestTime:J

    .line 1966
    const-string v0, "service request"

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1970
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 1971
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1968
    :cond_2
    #v1=(Boolean);v2=(Uninit);
    const/4 v0, 0x0

    :try_start_1
    #v0=(Null);
    invoke-static {p0, p1, p4, v0}, Lcom/android/emailsync/SyncManager;->startManualSync(JILcom/android/emailsync/Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    #v1=(Reference);
    monitor-enter v1

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1062
    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v2, Lcom/android/emailsync/MailboxAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    #v0=(Reference);
    const-string v2, "mailbox"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Box"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1066
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1067
    #v2=(Reference);
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1070
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v4, p3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1073
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit v1

    .line 1074
    return-void

    .line 1073
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static declared-synchronized shutdownConnectionManager()V
    .locals 4

    .prologue
    .line 923
    const-class v3, Lcom/android/emailsync/SyncManager;

    #v3=(Reference);
    monitor-enter v3

    :try_start_0
    const-string v2, "Shutting down ClientConnectionManagers"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 924
    sget-object v2, Lcom/android/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 925
    .local v1, mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    invoke-virtual {v1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 923
    .end local v1           #mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3

    throw v2

    .line 927
    :cond_0
    :try_start_1
    #v0=(Reference);v2=(Boolean);
    sget-object v2, Lcom/android/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    monitor-exit v3

    return-void
.end method

.method public static startManualSync(JILcom/android/emailsync/Request;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2056
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2057
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 2078
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 2058
    :cond_0
    #v0=(Uninit);v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    sget-object v2, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v2=(Reference);
    monitor-enter v2

    .line 2059
    :try_start_0
    iget-object v0, v1, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailsync/AbstractSyncService;

    .line 2060
    if-nez v0, :cond_4

    .line 2061
    iget-object v0, v1, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 2062
    monitor-exit v2

    goto :goto_0

    .line 2077
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2063
    :cond_1
    #v0=(Boolean);v1=(Reference);v3=(Reference);v4=(Uninit);
    if-eqz p2, :cond_2

    .line 2064
    :try_start_1
    iget-object v0, v1, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(Reference);
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    :cond_2
    #v0=(Conflicted);
    invoke-static {v1, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 2067
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 2068
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Starting sync for "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 2069
    invoke-direct {v1, v0, p2, p3}, Lcom/android/emailsync/SyncManager;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/emailsync/Request;)V

    .line 2077
    :cond_3
    :goto_1
    #v1=(Conflicted);v4=(Conflicted);
    monitor-exit v2

    goto :goto_0

    .line 2073
    :cond_4
    #v1=(Reference);v4=(Uninit);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-lt p2, v1, :cond_3

    .line 2074
    iput p2, v0, Lcom/android/emailsync/AbstractSyncService;->mSyncReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private startServiceThread(Lcom/android/emailsync/AbstractSyncService;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 1214
    iget-object v1, p1, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1215
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v1=(Reference);
    sget-object v5, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v5=(Reference);
    monitor-enter v5

    .line 1216
    :try_start_0
    iget-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1217
    .local v2, mailboxName:Ljava/lang/String;
    #v2=(Reference);
    iget-object v4, p1, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-object v0, v4, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 1218
    .local v0, accountName:Ljava/lang/String;
    #v0=(Reference);
    new-instance v3, Ljava/lang/Thread;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    #v6=(Reference);
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1219
    .local v3, thread:Ljava/lang/Thread;
    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v6, "Starting thread for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in account "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1221
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);
    invoke-static {v6, v7}, Lcom/android/emailsync/SyncManager;->runAwake(J)V

    .line 1223
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-virtual {p0, v1}, Lcom/android/emailsync/SyncManager;->onStartService(Lcom/android/emailcommon/provider/Mailbox;)V

    .line 1225
    return-void

    .line 1223
    .end local v0           #accountName:Ljava/lang/String;
    .end local v2           #mailboxName:Ljava/lang/String;
    .end local v3           #thread:Ljava/lang/Thread;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v4

    :try_start_1
    #v4=(Reference);
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static stopManualSync(J)V
    .locals 5
    .parameter

    .prologue
    .line 2082
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2083
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 2093
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 2084
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    sget-object v2, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v2=(Reference);
    monitor-enter v2

    .line 2085
    :try_start_0
    iget-object v0, v1, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailsync/AbstractSyncService;

    .line 2086
    if-eqz v0, :cond_1

    .line 2087
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Stopping sync for "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailsync/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v0}, Lcom/android/emailsync/AbstractSyncService;->stop()V

    .line 2089
    iget-object v0, v0, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2090
    invoke-direct {v1, p0, p1}, Lcom/android/emailsync/SyncManager;->releaseWakeLock(J)V

    .line 2092
    :cond_1
    #v4=(Conflicted);
    monitor-exit v2

    goto :goto_0

    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract collectAccounts(Landroid/content/Context;Lcom/android/emailsync/SyncManager$AccountList;)Lcom/android/emailsync/SyncManager$AccountList;
.end method

.method public abstract getAccountManagerType()Ljava/lang/String;
.end method

.method public abstract getAccountsSelector()Ljava/lang/String;
.end method

.method public getRunningService(J)Lcom/android/emailsync/AbstractSyncService;
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 1649
    sget-object v1, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 1650
    :try_start_0
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailsync/AbstractSyncService;

    monitor-exit v1

    return-object v0

    .line 1651
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailsync/AbstractSyncService;
.end method

.method public abstract getServiceIntent()Landroid/content/Intent;
.end method

.method maybeStartSyncServiceManagerThread()V
    .locals 2

    .prologue
    .line 1465
    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    #v0=(Reference);
    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 1466
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Lcom/android/emailsync/SyncManager$AccountList;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailsync/SyncManager$AccountList;-><init>(Lcom/android/emailsync/SyncManager;)V

    .line 1468
    :try_start_0
    #v0=(Reference);
    invoke-virtual {p0, p0, v0}, Lcom/android/emailsync/SyncManager;->collectAccounts(Landroid/content/Context;Lcom/android/emailsync/SyncManager$AccountList;)Lcom/android/emailsync/SyncManager$AccountList;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    invoke-virtual {v0}, Lcom/android/emailsync/SyncManager$AccountList;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 1474
    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    #v0=(Reference);
    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1475
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    sget-object v1, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1476
    sput-object p0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1477
    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1480
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1474
    :cond_2
    #v0=(Reference);v1=(Uninit);
    const-string v0, "Restarting thread..."

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public abstract onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
.end method

.method public releaseMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-direct {p0, p1, p2}, Lcom/android/emailsync/SyncManager;->releaseWakeLock(J)V

    .line 1640
    return-void
.end method

.method public releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 826
    invoke-direct {p0, p1, p2, p3}, Lcom/android/emailsync/SyncManager;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v0

    .line 827
    .local v0, holdWasReleased:Z
    #v0=(Boolean);
    const-string v1, "security release"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 828
    return v0
.end method

.method protected abstract runAccountReconcilerSync(Landroid/content/Context;)V
.end method

.method public setMailboxSyncStatus(JI)V
    .locals 4
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    .line 1256
    #v3=(Null);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1257
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "uiSyncStatus"

    #v1=(Reference);
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1259
    return-void
.end method

.method public stopAccountSyncs(JZ)V
    .locals 10
    .parameter "acctId"
    .parameter "includeAccountMailbox"

    .prologue
    .line 938
    sget-object v7, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v7=(Reference);
    monitor-enter v7

    .line 939
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v1, deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    #v1=(Reference);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/Long;

    .line 941
    .local v3, mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 942
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 943
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    #v6=(Byte);
    if-nez v6, :cond_0

    .line 944
    if-nez p3, :cond_1

    iget v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v6=(Integer);
    const/16 v8, 0x44

    #v8=(PosByte);
    if-ne v6, v8, :cond_1

    .line 946
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v6=(Reference);
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/emailsync/AbstractSyncService;

    .line 947
    .local v4, svc:Lcom/android/emailsync/AbstractSyncService;
    if-eqz v4, :cond_0

    .line 948
    invoke-virtual {v4}, Lcom/android/emailsync/AbstractSyncService;->stop()V

    goto :goto_0

    .line 967
    .end local v0           #box:Lcom/android/emailcommon/provider/Mailbox;
    .end local v1           #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/emailsync/AbstractSyncService;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v6

    #v6=(Reference);
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 952
    .restart local v0       #box:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v1       #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mid:Ljava/lang/Long;
    :cond_1
    :try_start_1
    #v0=(Reference);v1=(Reference);v2=(Reference);v3=(Reference);v6=(Integer);v9=(LongHi);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v6=(Reference);
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/emailsync/AbstractSyncService;

    .line 953
    .restart local v4       #svc:Lcom/android/emailsync/AbstractSyncService;
    if-eqz v4, :cond_2

    .line 954
    invoke-virtual {v4}, Lcom/android/emailsync/AbstractSyncService;->stop()V

    .line 955
    iget-object v5, v4, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 956
    .local v5, t:Ljava/lang/Thread;
    #v5=(Reference);
    if-eqz v5, :cond_2

    .line 957
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 960
    .end local v5           #t:Ljava/lang/Thread;
    :cond_2
    #v5=(Conflicted);
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 964
    .end local v0           #box:Lcom/android/emailcommon/provider/Mailbox;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/emailsync/AbstractSyncService;
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Boolean);v9=(Conflicted);
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/Long;

    .line 965
    .restart local v3       #mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {p0, v8, v9}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 967
    .end local v3           #mid:Ljava/lang/Long;
    :cond_4
    #v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    return-void
.end method
