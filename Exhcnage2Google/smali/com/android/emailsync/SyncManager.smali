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

.field private mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

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

.field private mMailboxObserver:Lcom/android/emailsync/SyncManager$MailboxObserver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextWaitReason:Ljava/lang/String;

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

.field private mSyncedMessageObserver:Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

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

.method public static canAutoSync(Lcom/android/emailcommon/provider/Account;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, 0x0

    .line 1701
    #v0=(Null);
    sget-object v3, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1702
    #v3=(Reference);
    if-nez v3, :cond_1

    .line 1727
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v0

    .line 1705
    :cond_1
    #v0=(Null);v1=(One);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v4, v3, Lcom/android/emailsync/SyncManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1708
    #v4=(Reference);
    iget-wide v5, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 1710
    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v2, v5, v7

    #v2=(Byte);
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    #v2=(Integer);
    invoke-static {v2}, Lcom/android/emailsync/SyncManager;->isNetworkTypeMobile(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 1713
    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 1714
    #v2=(Reference);
    if-nez v2, :cond_2

    .line 1715
    sget-object v2, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 1716
    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 1717
    invoke-static {v3, v2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 1718
    invoke-static {v3, p0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1719
    const-string v1, "canAutoSync; policies not active, set hold flag"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1723
    :cond_2
    #v1=(One);v5=(Conflicted);
    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    #v2=(Boolean);
    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    #v2=(Conflicted);
    move v0, v1

    .line 1727
    #v0=(One);
    goto :goto_0
.end method

.method private static canSyncEmail(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 1736
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private checkMailboxes()J
    .locals 12

    .prologue
    .line 1797
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    #v1=(Reference);
    sget-object v2, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v2=(Reference);
    monitor-enter v2

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    #v3=(Reference);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1800
    #v4=(LongLo);v5=(LongHi);
    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1801
    if-nez v0, :cond_0

    .line 1802
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1822
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1806
    :cond_1
    :try_start_1
    #v0=(Boolean);v1=(Reference);v3=(Reference);v6=(Uninit);
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    .line 1807
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailsync/AbstractSyncService;

    .line 1808
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    #v4=(Reference);
    if-nez v4, :cond_3

    .line 1809
    :cond_2
    #v4=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 1812
    :cond_3
    #v0=(Reference);v1=(Reference);v4=(Reference);
    iget-object v4, v1, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    .line 1813
    #v4=(Boolean);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Deleted mailbox: "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/android/emailsync/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1814
    if-eqz v4, :cond_4

    .line 1815
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/android/emailsync/SyncManager;->stopManualSync(J)V

    goto :goto_1

    .line 1817
    :cond_4
    #v0=(Reference);v1=(Reference);
    const-string v1, "Removing from serviceMap"

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 1822
    :cond_5
    #v0=(Boolean);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    const-wide/32 v6, 0xdbba0

    .line 1825
    #v6=(LongLo);v7=(LongHi);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1829
    #v8=(LongLo);v9=(LongHi);
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    #v0=(Reference);
    if-nez v0, :cond_6

    .line 1830
    const-string v0, "mAccountObserver null; service died??"

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    move-wide v2, v6

    .line 1938
    :goto_2
    #v0=(Conflicted);v2=(LongLo);v3=(LongHi);v6=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-wide v2

    .line 1834
    :cond_6
    #v0=(Reference);v2=(Reference);v3=(Reference);v6=(LongLo);v10=(Uninit);v11=(Uninit);
    invoke-virtual {p0}, Lcom/android/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    invoke-virtual {v3}, Lcom/android/emailsync/SyncManager$AccountObserver;->getSyncableMailboxWhere()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1836
    #v4=(Reference);
    if-nez v4, :cond_17

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 1838
    :cond_7
    :goto_3
    :try_start_2
    #v0=(Conflicted);v1=(Conflicted);v2=(LongLo);v3=(LongHi);v5=(Conflicted);v6=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_16

    .line 1839
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1840
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/android/emailsync/SyncManager;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v5

    .line 1841
    #v5=(Reference);
    if-nez v5, :cond_10

    .line 1843
    const/4 v5, 0x4

    #v5=(PosByte);
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Lcom/android/emailsync/SyncManager;->getAccountById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    .line 1844
    #v5=(Reference);
    if-eqz v5, :cond_7

    .line 1847
    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1848
    #v6=(Integer);
    invoke-direct {p0, v5, v6}, Lcom/android/emailsync/SyncManager;->isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    .line 1853
    iget-object v5, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    #v5=(Reference);
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailsync/SyncManager$SyncError;

    .line 1854
    if-eqz v0, :cond_9

    .line 1856
    iget-boolean v1, v0, Lcom/android/emailsync/SyncManager$SyncError;->fatal:Z

    #v1=(Boolean);
    if-nez v1, :cond_7

    .line 1857
    iget-wide v10, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    #v10=(LongLo);v11=(LongHi);
    cmp-long v1, v8, v10

    #v1=(Byte);
    if-gez v1, :cond_8

    .line 1860
    iget-wide v5, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    #v5=(LongLo);v6=(LongHi);
    add-long v10, v8, v2

    cmp-long v1, v5, v10

    if-gez v1, :cond_7

    .line 1861
    iget-wide v0, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    #v0=(LongLo);v1=(LongHi);
    sub-long v2, v0, v8

    .line 1862
    const-string v0, "Release hold"

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1936
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1867
    :cond_8
    #v1=(Byte);v2=(LongLo);v3=(LongHi);v5=(Reference);v6=(Integer);v7=(LongHi);v10=(LongLo);v11=(LongHi);
    const-wide/16 v10, 0x0

    :try_start_3
    iput-wide v10, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    .line 1872
    :cond_9
    #v1=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    const/16 v0, 0x9

    #v0=(PosByte);
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    .line 1873
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v10, -0x2

    #v10=(LongLo);v11=(LongHi);
    cmp-long v5, v0, v10

    #v5=(Byte);
    if-nez v5, :cond_a

    .line 1874
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 1875
    const/4 v1, 0x2

    #v1=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {p0, v0, v1, v5}, Lcom/android/emailsync/SyncManager;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/emailsync/Request;)V

    move-wide v0, v2

    :goto_4
    #v0=(LongLo);v1=(LongHi);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-wide v2, v0

    .line 1900
    #v2=(LongLo);v3=(LongHi);
    goto :goto_3

    .line 1876
    :cond_a
    #v5=(Byte);v6=(Integer);
    const/4 v5, 0x4

    #v5=(PosByte);
    if-ne v6, v5, :cond_b

    .line 1877
    invoke-direct {p0, v4}, Lcom/android/emailsync/SyncManager;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_f

    .line 1878
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 1879
    invoke-virtual {p0, p0, v0}, Lcom/android/emailsync/SyncManager;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailsync/SyncManager;->startServiceThread(Lcom/android/emailsync/AbstractSyncService;)V

    move-wide v0, v2

    .line 1880
    #v0=(LongLo);
    goto :goto_4

    .line 1881
    :cond_b
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v0, v5

    #v5=(Byte);
    if-lez v5, :cond_f

    const-wide/16 v5, 0x5a0

    #v5=(LongLo);
    cmp-long v5, v0, v5

    #v5=(Byte);
    if-gtz v5, :cond_f

    .line 1883
    const/16 v5, 0xa

    #v5=(PosByte);
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1884
    #v5=(LongLo);
    sub-long v5, v8, v5

    .line 1885
    const-wide/32 v10, 0xea60

    mul-long/2addr v0, v10

    sub-long/2addr v0, v5

    .line 1886
    const/4 v5, 0x1

    #v5=(One);
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1887
    #v5=(Reference);
    const-wide/16 v6, 0x0

    #v6=(LongLo);
    cmp-long v6, v0, v6

    #v6=(Byte);
    if-gtz v6, :cond_c

    .line 1888
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 1889
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {p0, v0, v1, v5}, Lcom/android/emailsync/SyncManager;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/emailsync/Request;)V

    move-wide v0, v2

    .line 1890
    #v0=(LongLo);v1=(LongHi);
    goto :goto_4

    :cond_c
    #v5=(Reference);
    cmp-long v6, v0, v2

    if-gez v6, :cond_e

    .line 1892
    sget-boolean v2, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v2=(Boolean);
    if-eqz v2, :cond_d

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Next sync for "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v6, 0x3e8

    #v6=(LongLo);
    div-long v6, v0, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1895
    :cond_d
    #v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Scheduled sync, "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_4

    .line 1896
    :cond_e
    #v2=(LongLo);v3=(LongHi);v6=(Byte);
    sget-boolean v6, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v6=(Boolean);
    if-eqz v6, :cond_f

    .line 1897
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "Next sync for "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    #v6=(LongLo);v7=(LongHi);
    div-long/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "s"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    :cond_f
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-wide v0, v2

    #v0=(LongLo);v1=(LongHi);
    goto/16 :goto_4

    .line 1901
    :cond_10
    #v5=(Reference);v10=(Conflicted);v11=(Conflicted);
    iget-object v6, v5, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1903
    #v6=(Reference);
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_12

    .line 1904
    sget-boolean v5, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v5=(Boolean);
    if-eqz v5, :cond_11

    .line 1905
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Dead thread, mailbox released: "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    #v6=(One);
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1908
    :cond_11
    #v5=(Conflicted);v6=(Conflicted);
    sget-object v5, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v5=(Reference);
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1909
    :try_start_4
    invoke-virtual {p0, v0, v1}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    .line 1910
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1912
    const-wide/16 v0, 0xbb8

    cmp-long v0, v2, v0

    #v0=(Byte);
    if-lez v0, :cond_7

    .line 1913
    const-wide/16 v2, 0xbb8

    .line 1914
    :try_start_5
    const-string v0, "Clean up dead thread(s)"

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 1910
    :catchall_2
    #v0=(Conflicted);
    move-exception v0

    :try_start_6
    #v0=(Reference);
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 1917
    :cond_12
    #v0=(LongLo);
    iget-wide v6, v5, Lcom/android/emailsync/AbstractSyncService;->mRequestTime:J

    .line 1918
    #v6=(LongLo);
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    #v0=(Byte);
    if-lez v0, :cond_7

    .line 1919
    sub-long v0, v6, v8

    .line 1920
    #v0=(LongLo);
    const-wide/16 v10, 0x0

    #v10=(LongLo);v11=(LongHi);
    cmp-long v10, v0, v10

    #v10=(Byte);
    if-gtz v10, :cond_13

    .line 1921
    const-wide/16 v0, 0x0

    iput-wide v0, v5, Lcom/android/emailsync/AbstractSyncService;->mRequestTime:J

    .line 1922
    invoke-virtual {v5}, Lcom/android/emailsync/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 1923
    :cond_13
    const-wide/16 v10, 0x0

    #v10=(LongLo);
    cmp-long v5, v6, v10

    #v5=(Byte);
    if-lez v5, :cond_7

    cmp-long v5, v0, v2

    if-gez v5, :cond_7

    .line 1924
    const-wide/32 v5, 0xa1220

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v0, v5

    #v5=(Byte);
    if-gez v5, :cond_15

    .line 1925
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    #v2=(Byte);
    if-gez v2, :cond_14

    const-wide/16 v2, 0xfa

    .line 1926
    :goto_5
    #v2=(LongLo);
    const-string v0, "Sync data change"

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_14
    #v0=(LongLo);v2=(Byte);
    move-wide v2, v0

    .line 1925
    #v2=(LongLo);
    goto :goto_5

    .line 1928
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Illegal timeToRequest: "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 1936
    :cond_16
    #v0=(Boolean);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_17
    #v0=(Reference);v1=(Reference);v2=(Reference);v3=(Reference);v5=(Null);v6=(LongLo);v10=(Uninit);v11=(Uninit);
    move-wide v2, v6

    #v2=(LongLo);v3=(LongHi);
    goto/16 :goto_3
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

.method private clearAlarms()V
    .locals 5

    .prologue
    .line 1077
    const-string v3, "alarm"

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/AlarmManager;

    .line 1078
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    #v4=(Reference);
    monitor-enter v4

    .line 1079
    :try_start_0
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/app/PendingIntent;

    .line 1080
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1083
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1082
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    #v1=(Reference);v3=(Boolean);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1083
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1111
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1112
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1113
    invoke-direct {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->clearAlarm(J)V

    .line 1115
    :cond_0
    return-void
.end method

.method public static done(Lcom/android/emailsync/AbstractSyncService;)V
    .locals 15
    .parameter

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v1, 0x0

    .line 2139
    #v1=(Null);
    sget-object v4, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2140
    #v4=(Reference);
    if-nez v4, :cond_0

    .line 2216
    :goto_0
    #v0=(Conflicted);v1=(PosByte);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    return-void

    .line 2141
    :cond_0
    #v0=(Uninit);v1=(Null);v2=(One);v3=(PosByte);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);
    sget-object v5, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v5=(Reference);
    monitor-enter v5

    .line 2142
    :try_start_0
    iget-wide v6, p0, Lcom/android/emailsync/AbstractSyncService;->mMailboxId:J

    .line 2144
    #v6=(LongLo);v7=(LongHi);
    invoke-direct {v4, v6, v7}, Lcom/android/emailsync/SyncManager;->isRunningInServiceThread(J)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 2145
    monitor-exit v5

    goto :goto_0

    .line 2215
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2147
    :cond_1
    :try_start_1
    #v0=(Boolean);v1=(Null);v2=(One);v3=(PosByte);v6=(LongLo);v7=(LongHi);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);
    invoke-virtual {v4, v6, v7}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    .line 2148
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {v4, v6, v7, v0}, Lcom/android/emailsync/SyncManager;->setMailboxSyncStatus(JI)V

    .line 2150
    iget-object v8, v4, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2151
    #v8=(Reference);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailsync/SyncManager$SyncError;

    .line 2153
    iget v9, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    .line 2154
    #v9=(Integer);
    invoke-static {v4, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 2155
    #v10=(Reference);
    if-nez v10, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 2157
    :cond_2
    if-eq v9, v3, :cond_4

    .line 2158
    iget-wide v11, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 2159
    #v11=(LongLo);v12=(LongHi);
    invoke-static {v4, v11, v12}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v13

    .line 2160
    #v13=(Reference);
    if-nez v13, :cond_3

    monitor-exit v5

    goto :goto_0

    .line 2161
    :cond_3
    const/4 v14, 0x2

    #v14=(PosByte);
    invoke-virtual {v4, v4, v14, v13}, Lcom/android/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_4

    .line 2163
    new-instance v13, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v13=(UninitRef);
    invoke-direct {v13, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v13=(Reference);
    invoke-virtual {v13, v11, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginSucceeded(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    :cond_4
    #v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    const/4 v11, 0x0

    .line 2171
    #v11=(Null);
    packed-switch v9, :pswitch_data_0

    move v0, v2

    .line 2209
    :goto_1
    :try_start_2
    #v0=(Boolean);v1=(PosByte);v3=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    new-instance v3, Lcom/android/emailsync/SyncManager$SyncError;

    #v3=(UninitRef);
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v9, v0}, Lcom/android/emailsync/SyncManager$SyncError;-><init>(Lcom/android/emailsync/SyncManager;IZ)V

    #v3=(Reference);
    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2212
    :try_start_3
    invoke-virtual {v4, v6, v7, v1}, Lcom/android/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2213
    const-string v0, "sync completed"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 2215
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2173
    :pswitch_0
    :try_start_4
    #v1=(Null);v2=(One);v3=(PosByte);v10=(Reference);v11=(Null);
    invoke-virtual {p0}, Lcom/android/emailsync/AbstractSyncService;->hasPendingRequests()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 2176
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    const-class v2, Lcom/android/emailsync/SyncManager;

    #v2=(Reference);
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2179
    const/4 v0, 0x0

    :try_start_5
    #v0=(Null);
    sput v0, Lcom/android/emailsync/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 2180
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2212
    :try_start_6
    invoke-virtual {v4, v6, v7, v11}, Lcom/android/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2213
    const-string v0, "sync completed"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2180
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2212
    :catchall_2
    #v0=(Conflicted);v1=(PosByte);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v0

    :try_start_9
    #v0=(Reference);
    invoke-virtual {v4, v6, v7, v1}, Lcom/android/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2213
    const-string v1, "sync completed"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2185
    :pswitch_1
    #v1=(Null);v2=(One);v3=(PosByte);v8=(Reference);v9=(Integer);v10=(Reference);v11=(Null);
    if-eqz v0, :cond_6

    .line 2186
    :try_start_a
    invoke-virtual {v0}, Lcom/android/emailsync/SyncManager$SyncError;->escalate()V

    .line 2187
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    iget-object v3, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " held for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    #v8=(LongLo);v9=(LongHi);
    const-wide/16 v12, 0x3e8

    #v12=(LongLo);v13=(LongHi);
    div-long/2addr v8, v12

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2212
    :try_start_b
    invoke-virtual {v4, v6, v7, v11}, Lcom/android/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2213
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 2190
    :cond_6
    :try_start_c
    #v2=(One);v3=(PosByte);v8=(Reference);v9=(Integer);v12=(Conflicted);v13=(Conflicted);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iget-object v3, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    move v0, v1

    #v0=(Null);
    move v1, v2

    .line 2194
    #v1=(One);
    goto/16 :goto_1

    .line 2197
    :pswitch_2
    #v0=(Reference);v1=(Null);v3=(PosByte);
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(UninitRef);
    invoke-direct {v0, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iget-wide v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v10=(LongLo);v11=(LongHi);
    iget-object v12, p0, Lcom/android/emailsync/AbstractSyncService;->mExitReason:Ljava/lang/String;

    #v12=(Reference);
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(JLjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move v0, v2

    #v0=(One);
    move v1, v3

    .line 2199
    #v1=(PosByte);
    goto/16 :goto_1

    .line 2202
    :pswitch_3
    #v0=(Reference);v1=(Null);v10=(Reference);v11=(Null);v12=(Conflicted);
    const/4 v1, 0x3

    #v1=(PosByte);
    move v0, v2

    .line 2203
    #v0=(One);
    goto/16 :goto_1

    .line 2205
    :pswitch_4
    #v0=(Reference);v1=(Null);
    const/4 v1, 0x5

    #v1=(PosByte);
    move v0, v2

    #v0=(One);
    goto/16 :goto_1

    .line 2171
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getAccountById(J)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 734
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 735
    .local v1, ssm:Lcom/android/emailsync/SyncManager;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 736
    iget-object v0, v1, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    .line 737
    .local v0, accountList:Lcom/android/emailsync/SyncManager$AccountList;
    #v0=(Reference);
    monitor-enter v0

    .line 738
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/emailsync/SyncManager$AccountList;->getById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    #v2=(Reference);
    monitor-exit v0

    .line 741
    .end local v0           #accountList:Lcom/android/emailsync/SyncManager$AccountList;
    :goto_0
    #v0=(Conflicted);
    return-object v2

    .line 739
    .restart local v0       #accountList:Lcom/android/emailsync/SyncManager$AccountList;
    :catchall_0
    #v0=(Reference);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 741
    .end local v0           #accountList:Lcom/android/emailsync/SyncManager$AccountList;
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
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

.method public static declared-synchronized getClientConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 11
    .parameter "context"
    .parameter "hostAuth"

    .prologue
    .line 897
    const-class v6, Lcom/android/emailsync/SyncManager;

    #v6=(Reference);
    monitor-enter v6

    const/4 v1, 0x0

    .line 899
    .local v1, mgr:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :try_start_0
    #v1=(Null);
    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);v8=(LongHi);
    const-wide/16 v9, -0x1

    #v9=(LongLo);v10=(LongHi);
    cmp-long v5, v7, v9

    #v5=(Byte);
    if-eqz v5, :cond_0

    .line 900
    sget-object v5, Lcom/android/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    #v5=(Reference);
    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-object v1, v0

    .line 902
    :cond_0
    #v0=(Conflicted);v1=(Reference);v5=(Conflicted);v7=(Conflicted);
    if-nez v1, :cond_2

    .line 905
    sget v5, Lcom/android/emailsync/SyncManager;->sClientConnectionManagerShutdownCount:I

    #v5=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    if-le v5, v7, :cond_1

    .line 906
    const-string v5, "Shutting down process to unblock threads"

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 907
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 909
    :cond_1
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    #v2=(UninitRef);
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 910
    .local v2, params:Lorg/apache/http/params/HttpParams;
    #v2=(Reference);
    const-string v5, "http.conn-manager.max-total"

    #v5=(Reference);
    const/16 v7, 0x19

    #v7=(PosByte);
    invoke-interface {v2, v5, v7}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 911
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v7, Lcom/android/emailsync/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    #v7=(Reference);
    invoke-interface {v2, v5, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 912
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v4

    .line 913
    .local v4, ssl:Z
    #v4=(Boolean);
    iget v3, p1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 914
    .local v3, port:I
    #v3=(Integer);
    invoke-static {p0, v2, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->newInstance(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    .line 915
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v7, "Creating connection manager for port "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", ssl: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 916
    sget-object v5, Lcom/android/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #port:I
    .end local v4           #ssl:Z
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    monitor-exit v6

    return-object v1

    .line 897
    :catchall_0
    #v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v5

    #v5=(Reference);
    monitor-exit v6

    throw v5
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

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 2239
    const/4 v2, 0x5

    :try_start_0
    #v2=(PosByte);
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2240
    .local v1, s:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2242
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);
    return v2

    .line 2241
    :catch_0
    #v0=(Uninit);v2=(PosByte);
    move-exception v0

    .line 2242
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    const/4 v2, -0x1

    #v2=(Byte);
    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 1
    .parameter "status"

    .prologue
    .line 2224
    if-nez p0, :cond_0

    .line 2225
    const/4 v0, -0x1

    .line 2227
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    #v0=(Char);
    add-int/lit8 v0, v0, -0x30

    #v0=(Integer);
    goto :goto_0
.end method

.method private hasSendableMessages(Landroid/database/Cursor;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v7, 0x0

    .line 1660
    #v7=(Null);
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    #v3=(Reference);
    new-array v4, v6, [Ljava/lang/String;

    #v4=(Reference);
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v7

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1665
    :cond_0
    :try_start_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 1666
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1671
    if-eqz v1, :cond_1

    .line 1672
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 1675
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return v0

    .line 1671
    :cond_2
    if-eqz v1, :cond_3

    .line 1672
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 1675
    #v0=(Null);
    goto :goto_0

    .line 1671
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v1, :cond_4

    .line 1672
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private hasWakeLock(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 986
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    #v1=(Reference);
    monitor-enter v1

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    monitor-exit v1

    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 988
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v1, 0x1

    .line 587
    #v1=(One);
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    #v2=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailsync/SyncManager$CalendarObserver;

    .line 588
    .local v0, observer:Lcom/android/emailsync/SyncManager$CalendarObserver;
    if-eqz v0, :cond_0

    .line 589
    iget-wide v2, v0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x1

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 593
    :cond_0
    :goto_0
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1

    .line 589
    :cond_1
    #v1=(One);v2=(Byte);v3=(LongHi);v4=(LongLo);v5=(LongHi);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public static isHoldingWakeLock(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1087
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1088
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->hasWakeLock(J)Z

    move-result v1

    .line 1091
    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x42

    #v3=(PosByte);
    const/16 v6, 0x41

    #v6=(PosByte);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 1752
    #v2=(Null);
    const/4 v0, 0x4

    #v0=(PosByte);
    if-ne p2, v0, :cond_0

    move v0, v1

    .line 1792
    :goto_0
    #v0=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v0

    .line 1755
    :cond_0
    #v0=(PosByte);v3=(PosByte);v4=(Uninit);v5=(Uninit);
    const/16 v0, 0x44

    if-ne p2, v0, :cond_1

    .line 1757
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 1758
    :cond_1
    #v0=(PosByte);
    if-eq p2, v3, :cond_2

    if-ne p2, v6, :cond_7

    .line 1760
    :cond_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_3

    move v0, v2

    .line 1761
    #v0=(Null);
    goto :goto_0

    .line 1765
    :cond_3
    #v0=(Boolean);
    if-ne p2, v3, :cond_5

    .line 1766
    const-string v0, "com.android.contacts"

    .line 1776
    :cond_4
    :goto_1
    #v0=(Reference);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Lcom/android/emailsync/SyncManager$AccountList;->getAmAccount(Lcom/android/emailcommon/provider/Account;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_6

    move v0, v2

    .line 1778
    #v0=(Null);
    goto :goto_0

    .line 1768
    :cond_5
    #v0=(Boolean);v3=(PosByte);v4=(Uninit);v5=(Uninit);
    const-string v0, "com.android.calendar"

    .line 1769
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    #v3=(Reference);
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    .line 1772
    invoke-direct {p0, p1}, Lcom/android/emailsync/SyncManager;->registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_1

    .line 1780
    :cond_6
    #v0=(Boolean);v3=(Reference);v4=(Conflicted);v5=(Conflicted);
    if-ne p2, v6, :cond_a

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-direct {p0, v3, v4}, Lcom/android/emailsync/SyncManager;->isCalendarEnabled(J)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 1781
    #v0=(Null);
    goto :goto_0

    .line 1784
    :cond_7
    #v0=(PosByte);v3=(PosByte);v4=(Uninit);v5=(Uninit);
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    move v0, v2

    .line 1785
    #v0=(Null);
    goto :goto_0

    .line 1789
    :cond_8
    #v0=(PosByte);
    invoke-static {p1}, Lcom/android/emailsync/SyncManager;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailsync/SyncManager$AccountList;->getAmAccount(Lcom/android/emailcommon/provider/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->canSyncEmail(Landroid/accounts/Account;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_a

    :cond_9
    move v0, v2

    .line 1790
    #v0=(Null);
    goto :goto_0

    :cond_a
    #v0=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move v0, v1

    .line 1792
    #v0=(One);
    goto :goto_0
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1682
    packed-switch p0, :pswitch_data_0

    .line 1690
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    #v0=(Boolean);
    return v0

    .line 1688
    :pswitch_1
    #v0=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 1682
    #v0=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isRunningInServiceThread(J)Z
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 2126
    invoke-virtual {p0, p1, p2}, Lcom/android/emailsync/SyncManager;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v0

    .line 2127
    .local v0, syncService:Lcom/android/emailsync/AbstractSyncService;
    #v0=(Reference);
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2128
    .local v1, thisThread:Ljava/lang/Thread;
    #v1=(Reference);
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    #v2=(Reference);
    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    return v2

    :cond_0
    #v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
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

.method private logSyncHolds()V
    .locals 12

    .prologue
    .line 785
    sget-boolean v7, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 786
    const-string v7, "Sync holds:"

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 788
    .local v5, time:J
    #v5=(LongLo);v6=(LongHi);
    iget-object v7, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 789
    .local v3, mailboxId:J
    #v3=(LongLo);v4=(LongHi);
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 790
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    #v2=(Reference);
    if-nez v2, :cond_1

    .line 791
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Mailbox "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no longer exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_1
    #v8=(Conflicted);
    iget-object v7, p0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailsync/SyncManager$SyncError;

    .line 794
    .local v0, error:Lcom/android/emailsync/SyncManager$SyncError;
    if-eqz v0, :cond_0

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/emailsync/SyncManager$SyncError;->reason:I

    #v8=(Integer);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fatal = "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/emailsync/SyncManager$SyncError;->fatal:Z

    #v8=(Boolean);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 797
    iget-wide v7, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    #v7=(LongLo);v8=(LongHi);
    const-wide/16 v9, 0x0

    #v9=(LongLo);v10=(LongHi);
    cmp-long v7, v7, v9

    #v7=(Byte);
    if-lez v7, :cond_0

    .line 798
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Hold ends in "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    #v8=(LongLo);v9=(LongHi);
    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    #v10=(LongLo);v11=(LongHi);
    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    .end local v0           #error:Lcom/android/emailsync/SyncManager$SyncError;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v3           #mailboxId:J
    .end local v5           #time:J
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Boolean);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
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

.method public static pingStatus(J)I
    .locals 7
    .parameter "mailboxId"

    .prologue
    const/4 v2, 0x0

    .line 2037
    #v2=(Null);
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2038
    .local v1, ssm:Lcom/android/emailsync/SyncManager;
    #v1=(Reference);
    if-nez v1, :cond_1

    .line 2052
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(PosByte);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v2

    .line 2040
    :cond_1
    #v0=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {v1, p0, p1}, Lcom/android/emailsync/SyncManager;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v3

    #v3=(Reference);
    if-eqz v3, :cond_2

    .line 2041
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 2044
    :cond_2
    #v2=(Null);
    iget-object v3, v1, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailsync/SyncManager$SyncError;

    .line 2045
    .local v0, error:Lcom/android/emailsync/SyncManager$SyncError;
    if-eqz v0, :cond_0

    .line 2046
    iget-boolean v3, v0, Lcom/android/emailsync/SyncManager$SyncError;->fatal:Z

    #v3=(Boolean);
    if-eqz v3, :cond_3

    .line 2047
    const/4 v2, 0x3

    #v2=(PosByte);
    goto :goto_0

    .line 2048
    :cond_3
    #v2=(Null);
    iget-wide v3, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-lez v3, :cond_0

    .line 2049
    const/4 v2, 0x2

    #v2=(PosByte);
    goto :goto_0
.end method

.method private registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 550
    new-instance v0, Lcom/android/emailsync/SyncManager$CalendarObserver;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    #v1=(Reference);
    invoke-direct {v0, p0, v1, p1}, Lcom/android/emailsync/SyncManager$CalendarObserver;-><init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V

    .line 551
    .local v0, observer:Lcom/android/emailsync/SyncManager$CalendarObserver;
    #v0=(Reference);
    iget-wide v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    #v1=(Reference);
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    #v3=(LongLo);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 558
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 811
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 812
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 813
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 816
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
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

.method public static removeFromSyncErrorMap(J)V
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 2119
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2120
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 2121
    iget-object v1, v0, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    #v1=(Reference);
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
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

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1103
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1104
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1105
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailsync/SyncManager;->setAlarm(JJ)V

    .line 1106
    invoke-direct {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->releaseWakeLock(J)V

    .line 1108
    :cond_0
    return-void
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

.method public static sendMessageRequest(Lcom/android/emailsync/Request;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, -0x1

    #v12=(LongLo);v13=(LongHi);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v6, 0x0

    .line 1991
    #v6=(Null);
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1992
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 2015
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .line 1993
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    iget-wide v1, p0, Lcom/android/emailsync/Request;->mMessageId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 1994
    #v5=(Reference);
    if-eqz v5, :cond_0

    .line 1995
    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1996
    #v8=(LongLo);v9=(LongHi);
    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1997
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 2001
    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    if-ne v1, v2, :cond_2

    .line 2002
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "sourceMessageKey"

    #v3=(Reference);
    aput-object v3, v2, v6

    const-string v3, "messageKey=?"

    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    iget-wide v10, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v10=(LongLo);v11=(LongHi);
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2006
    #v1=(LongLo);v2=(LongHi);
    cmp-long v3, v1, v12

    #v3=(Byte);
    if-eqz v3, :cond_2

    .line 2007
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 2009
    if-eqz v0, :cond_2

    .line 2010
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2014
    :goto_1
    #v0=(LongLo);v1=(LongHi);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v7=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-static {v0, v1, p0}, Lcom/android/emailsync/SyncManager;->sendRequest(JLcom/android/emailsync/Request;)V

    goto :goto_0

    :cond_2
    #v0=(Reference);v1=(Conflicted);
    move-wide v0, v8

    #v0=(LongLo);v1=(LongHi);
    goto :goto_1
.end method

.method public static sendRequest(JLcom/android/emailsync/Request;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2018
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 2019
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2020
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/emailsync/SyncManager;->getRunningService(J)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v0

    .line 2021
    if-nez v0, :cond_1

    .line 2022
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-static {p0, p1, v0, p2}, Lcom/android/emailsync/SyncManager;->startManualSync(JILcom/android/emailsync/Request;)V

    .line 2023
    const-string v0, "part request"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2025
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/emailsync/AbstractSyncService;->addRequest(Lcom/android/emailsync/Request;)V

    goto :goto_0
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

.method public static setUserDebug(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 340
    #v2=(Null);
    and-int/lit8 v0, p0, 0x1

    #v0=(Integer);
    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    #v0=(Boolean);
    sput-boolean v0, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    .line 341
    and-int/lit8 v0, p0, 0x4

    #v0=(Integer);
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    #v0=(Boolean);
    sput-boolean v0, Lcom/android/emailsync/SyncManager;->sFileLog:Z

    .line 342
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sFileLog:Z

    if-eqz v0, :cond_0

    .line 343
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    .line 345
    :cond_0
    const-string v1, "Sync Debug"

    #v1=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v3, "Logging: "

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v0=(Boolean);
    if-eqz v0, :cond_3

    const-string v0, "User "

    :goto_2
    #v0=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sFileLog:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    const-string v0, "File"

    :goto_3
    #v0=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 347
    return-void

    :cond_1
    #v0=(Integer);v1=(One);v2=(Null);v3=(Uninit);
    move v0, v2

    .line 340
    #v0=(Null);
    goto :goto_0

    :cond_2
    #v0=(Integer);
    move v0, v2

    .line 341
    #v0=(Null);
    goto :goto_1

    .line 345
    :cond_3
    #v0=(Boolean);v1=(Reference);v3=(Reference);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_2

    :cond_4
    #v0=(Boolean);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_3
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1118
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1119
    .local v0, ssm:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1120
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailsync/SyncManager;->setAlarm(JJ)V

    .line 1122
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 1583
    sget-object v1, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 1585
    :try_start_0
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    if-eqz v0, :cond_5

    .line 1586
    const-string v0, "Shutting down..."

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1589
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->stopServiceThreads()V

    .line 1592
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mConnectivityReceiver:Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mConnectivityReceiver:Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/emailsync/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1597
    :cond_0
    invoke-virtual {p0}, Lcom/android/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1598
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 1599
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1600
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/android/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

    .line 1602
    :cond_1
    #v2=(Reference);
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    if-eqz v2, :cond_2

    .line 1603
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1604
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    .line 1606
    :cond_2
    #v2=(Reference);
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mMailboxObserver:Lcom/android/emailsync/SyncManager$MailboxObserver;

    if-eqz v2, :cond_3

    .line 1607
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mMailboxObserver:Lcom/android/emailsync/SyncManager$MailboxObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1608
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mMailboxObserver:Lcom/android/emailsync/SyncManager$MailboxObserver;

    .line 1610
    :cond_3
    #v0=(Reference);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->unregisterCalendarObservers()V

    .line 1613
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->clearAlarms()V

    .line 1616
    iget-object v2, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1617
    :try_start_1
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 1618
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1619
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1621
    :cond_4
    #v0=(Reference);
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    const/4 v0, 0x0

    :try_start_2
    #v0=(Null);
    sput-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 1624
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1625
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailsync/SyncManager;->sStop:Z

    .line 1626
    const-string v0, "Goodbye"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1628
    :cond_5
    #v2=(Conflicted);
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1629
    return-void

    .line 1621
    :catchall_0
    #v2=(Reference);
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1628
    :catchall_1
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

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

.method private stopServiceThreads()V
    .locals 8

    .prologue
    .line 1268
    sget-object v5, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v5=(Reference);
    monitor-enter v5

    .line 1269
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v3, toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    #v3=(Reference);
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    .line 1273
    .local v1, mailboxId:Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1288
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v3           #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1277
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    #v0=(Reference);v2=(Uninit);v3=(Reference);v4=(Boolean);v6=(Uninit);v7=(Uninit);
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    #v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    .line 1278
    .restart local v1       #mailboxId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/emailsync/AbstractSyncService;

    .line 1279
    .local v2, svc:Lcom/android/emailsync/AbstractSyncService;
    if-eqz v2, :cond_1

    .line 1280
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v6, "Stopping "

    #v6=(Reference);
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    #v6=(PosByte);
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v2}, Lcom/android/emailsync/AbstractSyncService;->stop()V

    .line 1282
    iget-object v4, v2, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 1283
    iget-object v4, v2, Lcom/android/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1286
    :cond_1
    #v6=(Conflicted);
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-direct {p0, v6, v7}, Lcom/android/emailsync/SyncManager;->releaseWakeLock(J)V

    goto :goto_1

    .line 1288
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v2           #svc:Lcom/android/emailsync/AbstractSyncService;
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v6=(Conflicted);v7=(Conflicted);
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1289
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 5

    .prologue
    .line 564
    sget-object v3, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    .line 565
    .local v3, ssm:Lcom/android/emailsync/SyncManager;
    #v3=(Reference);
    if-nez v3, :cond_0

    .line 571
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void

    .line 566
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    iget-object v2, v3, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 567
    .local v2, resolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    iget-object v4, v3, Lcom/android/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Reference);v1=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailsync/SyncManager$CalendarObserver;

    .line 568
    .local v1, observer:Lcom/android/emailsync/SyncManager$CalendarObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 570
    .end local v1           #observer:Lcom/android/emailsync/SyncManager$CalendarObserver;
    :cond_1
    #v1=(Conflicted);
    iget-object v4, v3, Lcom/android/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method private waitForConnectivity()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1292
    #v9=(One);
    const/4 v2, 0x0

    .line 1293
    .local v2, waiting:Z
    #v2=(Null);
    const-string v3, "connectivity"

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1295
    .local v0, cm:Landroid/net/ConnectivityManager;
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    sget-boolean v3, Lcom/android/emailsync/SyncManager;->sStop:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1297
    .local v1, info:Landroid/net/NetworkInfo;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 1298
    iput-object v1, p0, Lcom/android/emailsync/SyncManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1300
    if-eqz v2, :cond_0

    .line 1302
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, p0, v9, v3}, Lcom/android/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 1304
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->logSyncHolds()V

    .line 1331
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    #v1=(Conflicted);v3=(Boolean);
    return-void

    .line 1309
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    #v1=(Reference);
    if-nez v2, :cond_2

    .line 1310
    const/4 v2, 0x1

    .line 1311
    #v2=(One);
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->stopServiceThreads()V

    .line 1315
    :cond_2
    #v2=(Boolean);
    sget-object v4, Lcom/android/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    #v4=(Reference);
    monitor-enter v4

    .line 1316
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    const-wide/32 v7, 0x93b48

    :try_start_0
    #v7=(LongLo);v8=(LongHi);
    invoke-static {v5, v6, v7, v8}, Lcom/android/emailsync/SyncManager;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    :try_start_1
    const-string v3, "Connectivity lock..."

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1319
    const/4 v3, 0x1

    #v3=(One);
    sput-boolean v3, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    .line 1320
    sget-object v3, Lcom/android/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    #v3=(Reference);
    const-wide/32 v5, 0x927c0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1321
    const-string v3, "Connectivity lock released..."

    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1325
    const/4 v3, 0x0

    :try_start_2
    #v3=(Null);
    sput-boolean v3, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    .line 1327
    :goto_1
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Lcom/android/emailsync/SyncManager;->runAwake(J)V

    .line 1328
    monitor-exit v4

    goto :goto_0

    :catchall_0
    #v3=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1322
    :catch_0
    #v3=(Conflicted);v5=(LongLo);
    move-exception v3

    .line 1325
    #v3=(Reference);
    const/4 v3, 0x0

    :try_start_3
    #v3=(Null);
    sput-boolean v3, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    goto :goto_1

    :catchall_1
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    sput-boolean v5, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private writeWakeLockTimes(Ljava/io/PrintWriter;Ljava/util/HashMap;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2252
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    #v1=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2253
    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2254
    if-eqz v0, :cond_0

    .line 2258
    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 2259
    #v1=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2260
    #v7=(Reference);
    const-wide/16 v8, -0x1

    #v8=(LongLo);v9=(LongHi);
    cmp-long v8, v5, v8

    #v8=(Byte);
    if-nez v8, :cond_1

    .line 2261
    const-string v1, "    SyncManager"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    :goto_1
    #v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2270
    :goto_2
    #v0=(LongLo);v1=(LongHi);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, " held for "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x3e8

    #v8=(LongLo);v9=(LongHi);
    div-long/2addr v0, v8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "s"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2262
    :cond_1
    #v5=(LongLo);v6=(LongHi);v8=(Byte);
    if-nez v1, :cond_2

    .line 2263
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v8, "    Mailbox "

    #v8=(Reference);
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " (deleted?)"

    #v5=(Reference);
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2265
    :cond_2
    #v5=(LongLo);v8=(Byte);
    iget-wide v8, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v8=(LongLo);
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 2266
    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "    Mailbox "

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    #v5=(Reference);
    const-string v6, " ("

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v1=(Integer);
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2269
    :cond_3
    #v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    sub-long v0, v2, v0

    goto/16 :goto_2

    .line 2273
    :cond_4
    #v0=(Boolean);v1=(Conflicted);v7=(Conflicted);
    return-void
.end method


# virtual methods
.method public abstract collectAccounts(Landroid/content/Context;Lcom/android/emailsync/SyncManager$AccountList;)Lcom/android/emailsync/SyncManager$AccountList;
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/emailsync/SyncManager;->mServiceStartTime:J

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr v0, v2

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "SyncManager: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " up for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    #v3=(LongLo);v4=(LongHi);
    div-long/2addr v0, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    const-string v1, " m"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2279
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 2280
    const-string v0, "  Holding WakeLock"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, p2, v0, v1}, Lcom/android/emailsync/SyncManager;->writeWakeLockTimes(Ljava/io/PrintWriter;Ljava/util/HashMap;Z)V

    .line 2285
    :goto_0
    #v1=(Reference);
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 2286
    const-string v0, "  Historical times"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, p2, v0, v1}, Lcom/android/emailsync/SyncManager;->writeWakeLockTimes(Ljava/io/PrintWriter;Ljava/util/HashMap;Z)V

    .line 2289
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 2283
    :cond_1
    #v0=(Reference);v1=(Reference);
    const-string v0, "  Not holding WakeLock"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getAccountManagerType()Ljava/lang/String;
.end method

.method public abstract getAccountObserver(Landroid/os/Handler;)Lcom/android/emailsync/SyncManager$AccountObserver;
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

.method public onCreate()V
    .locals 1

    .prologue
    .line 1358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    .line 1359
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 1360
    new-instance v0, Lcom/android/emailsync/SyncManager$3;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailsync/SyncManager$3;-><init>(Lcom/android/emailsync/SyncManager;)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1375
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1445
    const-string v0, "!!! onDestroy"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1447
    new-instance v0, Lcom/android/emailsync/SyncManager$5;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailsync/SyncManager$5;-><init>(Lcom/android/emailsync/SyncManager;)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1460
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x1

    .line 1380
    #v1=(One);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v2, "!!! onStartCommand, startingUp = "

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/emailsync/SyncManager;->sStartingUp:Z

    #v2=(Boolean);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", running = "

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    #v0=(Boolean);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1382
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sStartingUp:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1383
    sput-boolean v1, Lcom/android/emailsync/SyncManager;->sStartingUp:Z

    .line 1384
    new-instance v0, Lcom/android/emailsync/SyncManager$4;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailsync/SyncManager$4;-><init>(Lcom/android/emailsync/SyncManager;)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1430
    :cond_0
    #v0=(Conflicted);
    return v1

    .line 1380
    :cond_1
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public abstract onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
.end method

.method public abstract onStartup()V
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

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    #v2=(LongLo);v3=(LongHi);
    const/4 v0, 0x0

    .line 1499
    #v0=(Null);
    sput-boolean v0, Lcom/android/emailsync/SyncManager;->sStop:Z

    .line 1500
    const-string v0, "Service thread running"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1502
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 1506
    sget-object v1, Lcom/android/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 1507
    :try_start_0
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/android/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1513
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/android/emailsync/SyncManager;->getAccountObserver(Landroid/os/Handler;)Lcom/android/emailsync/SyncManager$AccountObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    .line 1514
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mAccountObserver:Lcom/android/emailsync/SyncManager$AccountObserver;

    #v6=(Reference);
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1515
    new-instance v0, Lcom/android/emailsync/SyncManager$MailboxObserver;

    #v0=(UninitRef);
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/emailsync/SyncManager$MailboxObserver;-><init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mMailboxObserver:Lcom/android/emailsync/SyncManager$MailboxObserver;

    .line 1516
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    #v5=(Null);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mMailboxObserver:Lcom/android/emailsync/SyncManager$MailboxObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1517
    new-instance v0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

    #v0=(UninitRef);
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;-><init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

    .line 1518
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    #v5=(One);
    iget-object v6, p0, Lcom/android/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/android/emailsync/SyncManager$SyncedMessageObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1521
    new-instance v0, Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailsync/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/emailsync/SyncManager;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mConnectivityReceiver:Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

    .line 1522
    iget-object v0, p0, Lcom/android/emailsync/SyncManager;->mConnectivityReceiver:Lcom/android/emailsync/SyncManager$ConnectivityReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    #v4=(UninitRef);
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #v5=(Reference);
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    invoke-virtual {p0, v0, v4}, Lcom/android/emailsync/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1525
    invoke-virtual {p0}, Lcom/android/emailsync/SyncManager;->onStartup()V

    .line 1527
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1531
    :goto_0
    :try_start_1
    #v0=(Conflicted);v1=(Conflicted);v7=(Conflicted);
    sget-boolean v0, Lcom/android/emailsync/SyncManager;->sStop:Z

    #v0=(Boolean);
    if-nez v0, :cond_8

    .line 1532
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/android/emailsync/SyncManager;->runAwake(J)V

    .line 1533
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->waitForConnectivity()V

    .line 1534
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 1535
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->checkMailboxes()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v0

    .line 1537
    :try_start_2
    #v0=(LongLo);
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1538
    :try_start_3
    iget-boolean v4, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    #v4=(Boolean);
    if-nez v4, :cond_4

    .line 1539
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v4, v0, v4

    #v4=(Byte);
    if-gez v4, :cond_1

    .line 1540
    const-string v0, "Negative wait? Setting to 1s"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    move-wide v0, v2

    .line 1543
    :cond_1
    #v0=(LongLo);
    const-wide/16 v4, 0x2710

    #v4=(LongLo);
    cmp-long v4, v0, v4

    #v4=(Byte);
    if-lez v4, :cond_3

    .line 1544
    iget-object v4, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    #v4=(Reference);
    if-eqz v4, :cond_2

    .line 1545
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Next awake "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    #v5=(LongLo);v6=(LongHi);
    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s: "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1547
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);
    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, 0xbb8

    #v6=(LongLo);v7=(LongHi);
    add-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailsync/SyncManager;->runAsleep(JJ)V

    .line 1549
    :cond_3
    #v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1551
    :cond_4
    #v5=(Conflicted);
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1556
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1557
    :try_start_5
    iget-boolean v0, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 1559
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    .line 1561
    :cond_5
    #v0=(Boolean);
    monitor-exit p0

    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1565
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    .line 1570
    :try_start_7
    #v0=(Reference);
    sget-object v0, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    const-string v1, "EmailProvider unavailable; shutting down"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1572
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/emailsync/SyncManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1578
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->shutdown()V

    .line 1580
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1527
    :catchall_1
    #v0=(Conflicted);v1=(Reference);v2=(LongLo);v7=(Uninit);
    move-exception v0

    :try_start_8
    #v0=(Reference);
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 1551
    :catchall_2
    #v0=(Conflicted);v1=(LongHi);v7=(Conflicted);
    move-exception v0

    :try_start_9
    #v0=(Reference);
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 1552
    :catch_1
    #v0=(Conflicted);
    move-exception v0

    .line 1554
    :try_start_b
    #v0=(Reference);
    const-string v0, "SyncServiceManager interrupted"

    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1556
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 1557
    :try_start_d
    iget-boolean v0, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    #v0=(Boolean);
    if-eqz v0, :cond_6

    .line 1559
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    .line 1561
    :cond_6
    #v0=(Boolean);
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    .line 1573
    :catch_2
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    .line 1575
    :try_start_f
    #v0=(Reference);
    sget-object v1, Lcom/android/emailsync/SyncManager;->TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "RuntimeException"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1576
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1578
    :catchall_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->shutdown()V

    throw v0

    .line 1556
    :catchall_5
    #v0=(Conflicted);v1=(LongHi);v2=(LongLo);v3=(LongHi);
    move-exception v0

    :try_start_10
    #v0=(Reference);
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    .line 1557
    :try_start_11
    iget-boolean v1, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    #v1=(Boolean);
    if-eqz v1, :cond_7

    .line 1559
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/emailsync/SyncManager;->mKicked:Z

    .line 1561
    :cond_7
    #v1=(Boolean);
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2

    :catchall_6
    #v1=(Conflicted);
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v0

    .line 1564
    :cond_8
    #v0=(Boolean);
    const-string v0, "Shutdown requested"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2

    .line 1578
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager;->shutdown()V

    goto :goto_1
.end method

.method protected abstract runAccountReconcilerSync(Landroid/content/Context;)V
.end method

.method public setMailboxLastSyncResult(JI)V
    .locals 4
    .parameter "id"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1262
    #v3=(Null);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1263
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "uiLastSyncResult"

    #v1=(Reference);
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1264
    iget-object v1, p0, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1265
    return-void
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
