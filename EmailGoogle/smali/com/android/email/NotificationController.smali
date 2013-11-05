.class public Lcom/android/email/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/NotificationController$NotificationThread;,
        Lcom/android/email/NotificationController$AccountContentObserver;,
        Lcom/android/email/NotificationController$MessageContentObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/email/NotificationController;

.field private static sNotificationHandler:Landroid/os/Handler;

.field private static sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;


# instance fields
.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mClock:Lcom/android/mail/utils/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mail/utils/Clock;)V
    .locals 1
    .parameter "context"
    .parameter "clock"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 94
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 96
    iput-object p2, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/mail/utils/Clock;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/NotificationController;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->registerMessageNotification(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600()Lcom/android/email/NotificationController;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/NotificationController;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/NotificationController;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->unregisterMessageNotification(J)V

    return-void
.end method

.method public static cancelNotifications(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .parameter "context"
    .parameter "account"

    .prologue
    .line 518
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {p0, v3, v4}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoForAccount(Landroid/content/Context;J)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v2

    .line 520
    .local v2, serviceInfo:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v2=(Reference);
    if-nez v2, :cond_0

    .line 521
    sget-object v3, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "Can\'t cancel notification for missing account %d"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 534
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 524
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v3, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {p1, v3}, Lcom/android/emailcommon/provider/Account;->getAccountManagerAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 527
    .local v0, notifAccount:Landroid/accounts/Account;
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/mail/utils/NotificationUtils;->clearAccountNotifications(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 529
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v3

    iget-object v1, v3, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 531
    .local v1, notificationManager:Landroid/app/NotificationManager;
    #v1=(Reference);
    const-wide/32 v3, 0x20000000

    #v3=(LongLo);
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    add-long/2addr v3, v5

    long-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 532
    const-wide/32 v3, 0x30000000

    #v3=(LongLo);
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 533
    const-wide/32 v3, 0x40000000

    #v3=(LongLo);
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private createBaseAccountNotificationBuilder(JLjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .parameter "accountId"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "largeIcon"
    .parameter "number"
    .parameter "enableAudio"
    .parameter "ongoing"

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, pending:Landroid/app/PendingIntent;
    #v3=(Null);
    if-eqz p6, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const/high16 v6, 0x800

    #v6=(Integer);
    invoke-static {v4, v5, p6, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 145
    :cond_0
    #v3=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v5=(Reference);
    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    #v4=(Reference);
    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    if-nez p8, :cond_2

    const/4 v4, 0x0

    :goto_0
    #v4=(Integer);
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    #v4=(Reference);
    const v5, 0x7f0200aa

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/mail/utils/Clock;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/utils/Clock;->getTime()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    move/from16 v0, p10

    #v0=(Boolean);
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 156
    .local v2, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    #v2=(Reference);
    if-eqz p9, :cond_1

    .line 157
    iget-object v4, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 158
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    #v1=(Reference);
    invoke-direct {p0, v2, v1}, Lcom/android/email/NotificationController;->setupSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/emailcommon/provider/Account;)V

    .line 161
    .end local v1           #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    #v1=(Conflicted);
    return-object v2

    .line 145
    .end local v2           #builder:Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Reference);v6=(Conflicted);
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    goto :goto_0
.end method

.method private static declared-synchronized ensureHandlerExists()V
    .locals 3

    .prologue
    .line 213
    const-class v1, Lcom/android/email/NotificationController;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/email/NotificationController$NotificationThread;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/NotificationController$NotificationThread;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    .line 215
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    sget-object v2, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/email/NotificationController$NotificationThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    #v2=(Conflicted);
    monitor-exit v1

    return-void

    .line 213
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    const-class v1, Lcom/android/email/NotificationController;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/email/NotificationController;

    #v0=(UninitRef);
    sget-object v2, Lcom/android/mail/utils/Clock;->INSTANCE:Lcom/android/mail/utils/Clock;

    #v2=(Reference);
    invoke-direct {v0, p0, v2}, Lcom/android/email/NotificationController;-><init>(Landroid/content/Context;Lcom/android/mail/utils/Clock;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    .line 104
    :cond_0
    #v2=(Conflicted);
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method

.method private static getLoginFailedNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 369
    const/high16 v0, 0x2000

    #v0=(Integer);
    long-to-int v1, p0

    #v1=(Integer);
    add-int/2addr v0, v1

    return v0
.end method

.method private static needsOngoingNotification(I)Z
    .locals 2
    .parameter "notificationId"

    .prologue
    .line 115
    const/high16 v0, -0x1000

    #v0=(Integer);
    and-int/2addr v0, p0

    const/high16 v1, 0x3000

    #v1=(Integer);
    if-ne v0, v1, :cond_0

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

.method private registerMessageNotification(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x0

    .line 227
    #v3=(Null);
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    const-wide/high16 v1, 0x1000

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, p1, v1

    #v1=(Byte);
    if-nez v1, :cond_2

    .line 229
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    #v6=(Reference);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 235
    .local v7, id:J
    #v7=(LongLo);v8=(LongHi);
    invoke-direct {p0, v7, v8}, Lcom/android/email/NotificationController;->registerMessageNotification(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 238
    .end local v7           #id:J
    :catchall_0
    #v1=(Reference);v7=(Conflicted);v8=(Conflicted);
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    #v1=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    #v1=(Conflicted);v3=(Reference);v5=(Boolean);v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 241
    :cond_2
    #v1=(Byte);v2=(LongHi);v3=(Null);v5=(One);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iget-object v1, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/database/ContentObserver;

    .line 242
    .local v9, obs:Landroid/database/ContentObserver;
    if-nez v9, :cond_1

    .line 243
    sget-object v1, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Registering for notifications for account "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 244
    new-instance v10, Lcom/android/email/NotificationController$MessageContentObserver;

    #v10=(UninitRef);
    sget-object v1, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1, v2, p1, p2}, Lcom/android/email/NotificationController$MessageContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;J)V

    .line 246
    .local v10, observer:Landroid/database/ContentObserver;
    #v10=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-object v1, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v10, v5}, Lcom/android/email/NotificationController$MessageContentObserver;->onChange(Z)V

    goto :goto_1
.end method

.method private setupSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/emailcommon/provider/Account;)V
    .locals 15
    .parameter "builder"
    .parameter "account"

    .prologue
    .line 286
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, ringtoneUri:Ljava/lang/String;
    #v12=(Reference);
    const/4 v14, 0x0

    .line 290
    .local v14, vibrate:Z
    #v14=(Null);
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "uiaccount"

    #v2=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 293
    .local v7, accountCursor:Landroid/database/Cursor;
    #v7=(Reference);
    const/4 v13, 0x0

    .line 295
    .local v13, uiAccount:Lcom/android/mail/providers/Account;
    :try_start_0
    #v13=(Null);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 296
    new-instance v13, Lcom/android/mail/providers/Account;

    .end local v13           #uiAccount:Lcom/android/mail/providers/Account;
    #v13=(UninitRef);
    invoke-direct {v13, v7}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .restart local v13       #uiAccount:Lcom/android/mail/providers/Account;
    :cond_0
    #v13=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 302
    if-eqz v13, :cond_5

    .line 303
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v13, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v2, v2, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 307
    .local v10, folderCursor:Landroid/database/Cursor;
    #v10=(Reference);
    if-nez v10, :cond_2

    .line 310
    sget-object v1, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Null folder cursor for mailbox %s"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    iget-object v5, v13, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    .end local v10           #folderCursor:Landroid/database/Cursor;
    :goto_0
    #v3=(Conflicted);v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v14=(Boolean);
    const/4 v8, 0x4

    .line 338
    .local v8, defaults:I
    #v8=(PosByte);
    if-eqz v14, :cond_1

    .line 339
    or-int/lit8 v8, v8, 0x2

    .line 342
    :cond_1
    #v8=(Integer);
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    #v1=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 344
    return-void

    .line 299
    .end local v8           #defaults:I
    .end local v13           #uiAccount:Lcom/android/mail/providers/Account;
    :catchall_0
    #v1=(Conflicted);v3=(Reference);v5=(Null);v6=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Conflicted);v14=(Null);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 313
    .restart local v10       #folderCursor:Landroid/database/Cursor;
    .restart local v13       #uiAccount:Lcom/android/mail/providers/Account;
    :cond_2
    #v10=(Reference);v13=(Reference);
    const/4 v9, 0x0

    .line 315
    .local v9, folder:Lcom/android/mail/providers/Folder;
    :try_start_1
    #v9=(Null);
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 316
    new-instance v9, Lcom/android/mail/providers/Folder;

    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    #v9=(UninitRef);
    invoke-direct {v9, v10}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    .restart local v9       #folder:Lcom/android/mail/providers/Folder;
    :cond_3
    #v9=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 322
    if-eqz v9, :cond_4

    .line 323
    new-instance v11, Lcom/android/mail/preferences/FolderPreferences;

    #v11=(UninitRef);
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v13}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v11, v1, v2, v9, v3}, Lcom/android/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 326
    .local v11, folderPreferences:Lcom/android/mail/preferences/FolderPreferences;
    #v11=(Reference);
    invoke-virtual {v11}, Lcom/android/mail/preferences/FolderPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v12

    .line 327
    invoke-virtual {v11}, Lcom/android/mail/preferences/FolderPreferences;->isNotificationVibrateEnabled()Z

    move-result v14

    .line 328
    #v14=(Boolean);
    goto :goto_0

    .line 319
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    .end local v11           #folderPreferences:Lcom/android/mail/preferences/FolderPreferences;
    :catchall_1
    #v1=(Conflicted);v3=(Reference);v9=(Conflicted);v11=(Uninit);v14=(Null);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 329
    .restart local v9       #folder:Lcom/android/mail/providers/Folder;
    :cond_4
    #v1=(Boolean);v9=(Reference);
    sget-object v1, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Null folder for mailbox %s"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    iget-object v5, v13, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 334
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    .end local v10           #folderCursor:Landroid/database/Cursor;
    :cond_5
    #v1=(Boolean);v5=(Null);v9=(Uninit);v10=(Uninit);
    sget-object v1, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Null uiAccount for account id %d"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 342
    .restart local v8       #defaults:I
    :cond_6
    #v1=(Boolean);v3=(Conflicted);v6=(Conflicted);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v14=(Boolean);
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    goto :goto_1
.end method

.method private showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 13
    .parameter "accountId"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "notificationId"

    .prologue
    .line 176
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x1

    #v10=(One);
    invoke-static/range {p7 .. p7}, Lcom/android/email/NotificationController;->needsOngoingNotification(I)Z

    move-result v11

    #v11=(Boolean);
    move-object v1, p0

    #v1=(Reference);
    move-wide v2, p1

    #v2=(LongLo);v3=(LongHi);
    move-object/from16 v4, p3

    #v4=(Reference);
    move-object/from16 v5, p4

    #v5=(Reference);
    move-object/from16 v6, p5

    #v6=(Reference);
    move-object/from16 v7, p6

    #v7=(Reference);
    invoke-direct/range {v1 .. v11}, Lcom/android/email/NotificationController;->createBaseAccountNotificationBuilder(JLjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 179
    .local v12, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    #v12=(Reference);
    iget-object v1, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v12}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    #v2=(Reference);
    move/from16 v0, p7

    #v0=(Integer);
    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 180
    return-void
.end method

.method private unregisterMessageNotification(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 262
    #v6=(Null);
    iget-object v3, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 263
    .local v2, resolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    const-wide/high16 v3, 0x1000

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, p1, v3

    #v3=(Byte);
    if-nez v3, :cond_2

    .line 264
    sget-object v3, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "Unregistering notifications for all accounts"

    #v4=(Reference);
    new-array v5, v6, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/database/ContentObserver;

    .line 267
    .local v1, observer:Landroid/database/ContentObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 269
    .end local v1           #observer:Landroid/database/ContentObserver;
    :cond_0
    #v1=(Conflicted);
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 277
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    #v0=(Conflicted);
    return-void

    .line 271
    :cond_2
    #v0=(Uninit);v1=(Uninit);v3=(Byte);v4=(LongHi);v5=(Uninit);
    sget-object v3, Lcom/android/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Unregistering notifications for account "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/database/ContentObserver;

    .line 273
    .restart local v1       #observer:Landroid/database/ContentObserver;
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    #v0=(Reference);
    invoke-static {p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 400
    return-void
.end method

.method public cancelPasswordExpirationNotifications()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    #v0=(Reference);
    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 446
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 447
    return-void
.end method

.method public cancelSecurityNeededNotification()V
    .locals 1

    .prologue
    .line 495
    new-instance v0, Lcom/android/email/NotificationController$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/NotificationController$2;-><init>(Lcom/android/email/NotificationController;)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 511
    return-void
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .parameter "attachment"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    .line 355
    .local v9, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v9=(Reference);
    if-nez v9, :cond_0

    .line 363
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 356
    :cond_0
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v8

    .line 357
    .local v8, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v8=(Reference);
    iget-wide v1, v8, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0178

    #v3=(Integer);
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0179

    #v4=(Integer);
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x3

    #v7=(PosByte);
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLoginFailedNotification(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 378
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/NotificationController;->showLoginFailedNotification(JLjava/lang/String;)V

    .line 379
    return-void
.end method

.method public showLoginFailedNotification(JLjava/lang/String;)V
    .locals 10
    .parameter "accountId"
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 382
    #v6=(Null);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 383
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    #v8=(Reference);
    if-nez v8, :cond_1

    .line 393
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Conflicted);v9=(Conflicted);
    return-void

    .line 384
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Null);v7=(Uninit);v9=(Uninit);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 386
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v9=(Reference);
    if-eqz v9, :cond_0

    .line 387
    iget-wide v1, v9, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a017a

    #v3=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, v8, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f0a017b

    #v4=(Integer);
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v8, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-static {p1, p2, v0, p3}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    #v6=(Reference);
    invoke-static {p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v7

    #v7=(Integer);
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showPasswordExpiredNotification(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 430
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 439
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 432
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 434
    .local v6, intent:Landroid/content/Intent;
    #v6=(Reference);
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, accountName:Ljava/lang/String;
    #v5=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01eb

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, ticker:Ljava/lang/String;
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, title:Ljava/lang/String;
    #v4=(Reference);
    const/4 v7, 0x5

    #v7=(PosByte);
    move-object v0, p0

    move-wide v1, p1

    #v1=(LongLo);v2=(LongHi);
    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showPasswordExpiringNotification(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    const/4 v7, 0x0

    .line 409
    #v7=(Null);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 410
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 420
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(PosByte);
    return-void

    .line 412
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v7}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 414
    .local v6, intent:Landroid/content/Intent;
    #v6=(Reference);
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, accountName:Ljava/lang/String;
    #v5=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01e9

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, ticker:Ljava/lang/String;
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, title:Ljava/lang/String;
    #v4=(Reference);
    const/4 v7, 0x4

    #v7=(PosByte);
    move-object v0, p0

    move-wide v1, p1

    #v1=(LongLo);v2=(LongHi);
    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showSecurityChangedNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 11
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 468
    #v2=(Null);
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1, v2, v2}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 469
    .local v6, intent:Landroid/content/Intent;
    #v6=(Reference);
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, accountName:Ljava/lang/String;
    #v5=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    const v1, 0x7f0a01e2

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, ticker:Ljava/lang/String;
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, title:Ljava/lang/String;
    #v4=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/32 v7, 0x40000000

    #v7=(LongLo);v8=(LongHi);
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v9=(LongLo);v10=(LongHi);
    add-long/2addr v7, v9

    long-to-int v7, v7

    #v7=(Integer);
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 475
    return-void
.end method

.method public showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 11
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    .line 454
    #v7=(One);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2, v7}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 455
    .local v6, intent:Landroid/content/Intent;
    #v6=(Reference);
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, accountName:Ljava/lang/String;
    #v5=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01e1

    #v1=(Integer);
    new-array v2, v7, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, ticker:Ljava/lang/String;
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, title:Ljava/lang/String;
    #v4=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/32 v7, 0x30000000

    #v7=(LongLo);v8=(LongHi);
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v9=(LongLo);v10=(LongHi);
    add-long/2addr v7, v9

    long-to-int v7, v7

    #v7=(Integer);
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 461
    return-void
.end method

.method public showSecurityUnsupportedNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 11
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 482
    #v2=(Null);
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1, v2, v2}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 483
    .local v6, intent:Landroid/content/Intent;
    #v6=(Reference);
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, accountName:Ljava/lang/String;
    #v5=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    const v1, 0x7f0a01e0

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, ticker:Ljava/lang/String;
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, title:Ljava/lang/String;
    #v4=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/32 v7, 0x30000000

    #v7=(LongLo);v8=(LongHi);
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v9=(LongLo);v10=(LongHi);
    add-long/2addr v7, v9

    long-to-int v7, v7

    #v7=(Integer);
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 489
    return-void
.end method

.method public watchForMessages()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 192
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    #v0=(Reference);
    new-instance v1, Lcom/android/email/NotificationController$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/email/NotificationController$1;-><init>(Lcom/android/email/NotificationController;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method
