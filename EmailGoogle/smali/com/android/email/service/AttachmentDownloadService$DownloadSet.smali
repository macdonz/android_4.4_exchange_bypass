.class Lcom/android/email/service/AttachmentDownloadService$DownloadSet;
.super Ljava/util/TreeSet;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchdogPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    .line 251
    invoke-direct {p0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 257
    #p0=(Reference);
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 252
    return-void
.end method

.method static synthetic access$600(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V

    return-void
.end method

.method private cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    .locals 3
    .parameter "req"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 532
    return-void
.end method

.method private declared-synchronized getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method private onWatchdogAlarm()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    #v11=(PosByte);
    const/4 v10, 0x0

    .line 436
    #v10=(Null);
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/email/service/AttachmentDownloadService;->access$400(Lcom/android/email/service/AttachmentDownloadService;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 461
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 439
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 440
    .local v1, now:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    #v0=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 442
    .local v3, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v6, v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    #v6=(LongLo);v7=(LongHi);
    sub-long v4, v1, v6

    .line 443
    .local v4, timeSinceCallback:J
    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, 0x7530

    cmp-long v6, v4, v6

    #v6=(Byte);
    if-lez v6, :cond_2

    .line 444
    const-string v6, "AttachmentService"

    #v6=(Reference);
    invoke-static {v6, v11}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 445
    const-string v6, "AttachmentService"

    #v6=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "== Download of "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timed out"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 447
    :cond_3
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-direct {p0, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V

    goto :goto_1

    .line 451
    .end local v3           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v4           #timeSinceCallback:J
    :cond_4
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v6, v6, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v6}, Lcom/android/email/EmailConnectivityManager;->hasConnectivity()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_5

    .line 452
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    .line 455
    :cond_5
    #v6=(Conflicted);
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_0

    .line 456
    const-string v6, "AttachmentService"

    #v6=(Reference);
    invoke-static {v6, v11}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_6

    .line 457
    const-string v6, "AttachmentService"

    #v6=(Reference);
    const-string v7, "Reschedule watchdog..."

    #v7=(Reference);
    new-array v8, v10, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    :cond_6
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm()V

    goto/16 :goto_0
.end method

.method private setWatchdogAlarm()V
    .locals 2

    .prologue
    .line 508
    const-wide/16 v0, 0x4e20

    #v0=(LongLo);v1=(LongHi);
    invoke-direct {p0, v0, v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm(J)V

    .line 509
    return-void
.end method

.method private setWatchdogAlarm(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 496
    #v4=(Null);
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/service/AttachmentDownloadService$Watchdog;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v1, v1, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    .line 502
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    add-long/2addr v1, p1

    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    #v3=(Reference);
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 505
    return-void
.end method

.method private startDownload(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    .locals 6
    .parameter "service"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 521
    #v0=(One);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    .line 522
    iput-boolean v0, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 523
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v1=(Reference);
    iget-wide v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-static {v1}, Lcom/android/email/service/AttachmentDownloadService;->access$500(Lcom/android/email/service/AttachmentDownloadService;)Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v2=(LongLo);
    iget v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    #v4=(Integer);
    const/4 v5, 0x2

    #v5=(PosByte);
    if-eq v4, v5, :cond_0

    :goto_0
    #v0=(Boolean);
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V

    .line 526
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm()V

    .line 527
    return-void

    .line 524
    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized downloadsForAccount(J)I
    .locals 5
    .parameter "accountId"

    .prologue
    .line 421
    monitor-enter p0

    const/4 v0, 0x0

    .line 422
    .local v0, count:I
    :try_start_0
    #v0=(Null);
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Integer);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 423
    .local v2, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v3, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, v3, p1

    #v3=(Byte);
    if-nez v3, :cond_0

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    .end local v2           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_1
    #v2=(Conflicted);v3=(Boolean);v4=(Conflicted);
    monitor-exit p0

    return v0

    .line 421
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    #v1=(Conflicted);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit p0

    throw v3
.end method

.method declared-synchronized endDownload(JI)V
    .locals 24
    .parameter "attachmentId"
    .parameter "statusCode"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Ljava/lang/Integer;

    .line 551
    .local v9, downloadCount:Ljava/lang/Integer;
    if-eqz p3, :cond_1

    .line 552
    if-nez v9, :cond_0

    .line 553
    const/16 v18, 0x0

    #v18=(Null);
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 555
    :cond_0
    #v18=(Reference);
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    #v18=(Integer);
    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_1
    #v1=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v13

    .line 560
    .local v13, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #v13=(Reference);
    const/16 v18, 0x20

    #v18=(PosByte);
    move/from16 v0, p3

    #v0=(Integer);
    move/from16 v1, v18

    #v1=(PosByte);
    if-ne v0, v1, :cond_5

    .line 562
    if-eqz v13, :cond_2

    .line 563
    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v18, v0

    #v18=(LongLo);v19=(LongHi);
    const-wide/16 v20, 0x1

    #v20=(LongLo);v21=(LongHi);
    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    .line 564
    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xa

    cmp-long v18, v18, v20

    #v18=(Byte);
    if-lez v18, :cond_3

    .line 565
    const-string v18, "AttachmentService"

    #v18=(Reference);
    const-string v19, "Connection Error #%d, giving up"

    #v19=(Reference);
    const/16 v20, 0x1

    #v20=(One);
    move/from16 v0, v20

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    const/16 v21, 0x0

    #v21=(Null);
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    #v22=(Reference);
    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 566
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    monitor-exit p0

    return-void

    .line 567
    :cond_3
    :try_start_1
    #v0=(LongLo);v1=(LongHi);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Byte);v19=(LongHi);v20=(LongLo);v21=(LongHi);v22=(Uninit);v23=(Uninit);
    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v18, v0

    #v18=(LongLo);
    const-wide/16 v20, 0x5

    cmp-long v18, v18, v20

    #v18=(Byte);
    if-lez v18, :cond_4

    .line 573
    const-string v18, "AttachmentService"

    #v18=(Reference);
    const-string v19, "ConnectionError #%d, retried %d times, adding delay"

    #v19=(Reference);
    const/16 v20, 0x2

    #v20=(PosByte);
    move/from16 v0, v20

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    const/16 v21, 0x0

    #v21=(Null);
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    #v22=(Reference);
    aput-object v22, v20, v21

    const/16 v21, 0x1

    #v21=(One);
    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    #v0=(LongLo);
    move-wide/from16 v22, v0

    #v22=(LongLo);v23=(LongHi);
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    #v22=(Reference);
    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 575
    const/16 v18, 0x0

    #v18=(Null);
    move/from16 v0, v18

    #v0=(Null);
    iput-boolean v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    #v18=(LongLo);v19=(LongHi);
    const-wide/16 v20, 0x2710

    #v20=(LongLo);v21=(LongHi);
    add-long v18, v18, v20

    move-wide/from16 v0, v18

    #v0=(LongLo);
    iput-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    .line 578
    const-wide/16 v18, 0x2710

    move-object/from16 v0, p0

    #v0=(Reference);
    move-wide/from16 v1, v18

    #v1=(LongLo);
    invoke-direct {v0, v1, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    .end local v9           #downloadCount:Ljava/lang/Integer;
    .end local v13           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    move-exception v18

    #v18=(Reference);
    monitor-exit p0

    throw v18

    .line 580
    .restart local v9       #downloadCount:Ljava/lang/Integer;
    .restart local v13       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_4
    :try_start_2
    #v0=(LongLo);v1=(LongHi);v2=(LongHi);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Reference);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Reference);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Byte);v19=(LongHi);v20=(LongLo);v21=(LongHi);v22=(Uninit);v23=(Uninit);
    const-string v18, "AttachmentService"

    #v18=(Reference);
    const-string v19, "ConnectionError #%d, retried %d times, adding delay"

    #v19=(Reference);
    const/16 v20, 0x2

    #v20=(PosByte);
    move/from16 v0, v20

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    const/16 v21, 0x0

    #v21=(Null);
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    #v22=(Reference);
    aput-object v22, v20, v21

    const/16 v21, 0x1

    #v21=(One);
    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    #v0=(LongLo);
    move-wide/from16 v22, v0

    #v22=(LongLo);v23=(LongHi);
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    #v22=(Reference);
    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 582
    const/16 v18, 0x0

    #v18=(Null);
    move/from16 v0, v18

    #v0=(Null);
    iput-boolean v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 583
    const-wide/16 v18, 0x0

    #v18=(LongLo);v19=(LongHi);
    move-wide/from16 v0, v18

    #v0=(LongLo);
    iput-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    .line 584
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V

    goto/16 :goto_0

    .line 591
    :cond_5
    #v0=(Integer);v1=(PosByte);v18=(PosByte);v19=(Reference);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);
    if-eqz v13, :cond_6

    .line 592
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v13}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 594
    :cond_6
    #v0=(Conflicted);
    const-string v18, "AttachmentService"

    #v18=(Reference);
    const/16 v19, 0x3

    #v19=(PosByte);
    invoke-static/range {v18 .. v19}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_8

    .line 595
    const-wide/16 v14, 0x0

    .line 596
    .local v14, secs:J
    #v14=(LongLo);v15=(LongHi);
    if-eqz v13, :cond_7

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    #v18=(LongLo);v19=(LongHi);
    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v20, v0

    #v20=(LongLo);v21=(LongHi);
    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v14, v18, v20

    .line 599
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    if-nez p3, :cond_e

    const-string v17, "Success"

    .line 601
    .local v17, status:Ljava/lang/String;
    :goto_1
    #v17=(Reference);
    const-string v18, "AttachmentService"

    #v18=(Reference);
    new-instance v19, Ljava/lang/StringBuilder;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #v19=(Reference);
    const-string v20, "<< Download finished for attachment #"

    #v20=(Reference);
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    #v0=(Reference);
    move-wide/from16 v1, p1

    #v1=(LongLo);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " seconds from request, status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    #v20=(Null);
    move/from16 v0, v20

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-static/range {v18 .. v20}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 605
    .end local v14           #secs:J
    .end local v17           #status:Ljava/lang/String;
    :cond_8
    #v0=(Conflicted);v1=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    #v1=(LongLo);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 606
    .local v5, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v5=(Reference);
    if-eqz v5, :cond_d

    .line 607
    iget-wide v3, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 609
    .local v3, accountId:J
    #v3=(LongLo);v4=(LongHi);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Ljava/lang/Long;

    .line 610
    .local v6, currentStorage:Ljava/lang/Long;
    if-nez v6, :cond_9

    .line 611
    const-wide/16 v18, 0x0

    #v18=(LongLo);v19=(LongHi);
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 613
    :cond_9
    #v18=(Conflicted);v19=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    #v20=(LongLo);v21=(LongHi);
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v22, v0

    #v22=(LongLo);v23=(LongHi);
    add-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    #v20=(Reference);
    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const/4 v8, 0x0

    .line 615
    .local v8, deleted:Z
    #v8=(Null);
    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_c

    .line 616
    const/16 v18, 0x11

    #v18=(PosByte);
    move/from16 v0, p3

    move/from16 v1, v18

    #v1=(PosByte);
    if-ne v0, v1, :cond_a

    .line 620
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v20, v0

    #v20=(LongLo);
    invoke-static/range {v18 .. v21}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 622
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v12

    .line 623
    .local v12, nc:Lcom/android/email/NotificationController;
    #v12=(Reference);
    invoke-virtual {v12, v5}, Lcom/android/email/NotificationController;->showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 624
    const/4 v8, 0x1

    .line 628
    .end local v12           #nc:Lcom/android/email/NotificationController;
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);v8=(Boolean);v12=(Conflicted);v18=(Conflicted);v20=(Conflicted);
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    #v19=(LongLo);v20=(LongHi);
    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_c

    .line 630
    const-string v18, "AttachmentService"

    #v18=(Reference);
    const/16 v19, 0x3

    #v19=(PosByte);
    invoke-static/range {v18 .. v19}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_b

    .line 631
    const-string v18, "AttachmentService"

    #v18=(Reference);
    new-instance v19, Ljava/lang/StringBuilder;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #v19=(Reference);
    const-string v20, "== Downloads finished for outgoing msg #"

    #v20=(Reference);
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    move-wide/from16 v20, v0

    #v20=(LongLo);
    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    #v20=(Null);
    move/from16 v0, v20

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-static/range {v18 .. v20}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 634
    :cond_b
    #v0=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Lcom/android/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 637
    .local v16, service:Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_start_3
    #v16=(Reference);
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/service/EmailServiceProxy;->sendMail(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 643
    .end local v16           #service:Lcom/android/emailcommon/service/EmailServiceProxy;
    :cond_c
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v16=(Conflicted);v18=(Conflicted);
    const/16 v18, 0x10

    #v18=(PosByte);
    move/from16 v0, p3

    #v0=(Integer);
    move/from16 v1, v18

    #v1=(PosByte);
    if-ne v0, v1, :cond_10

    .line 644
    :try_start_4
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    #v19=(LongLo);v20=(LongHi);
    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 645
    .local v11, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v11=(Reference);
    if-nez v11, :cond_f

    .line 647
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    #v19=(Reference);
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);
    move-wide/from16 v20, v0

    #v20=(LongLo);
    invoke-static/range {v18 .. v21}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 669
    .end local v3           #accountId:J
    .end local v6           #currentStorage:Ljava/lang/Long;
    .end local v8           #deleted:Z
    .end local v11           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_d
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V

    goto/16 :goto_0

    .line 599
    .end local v5           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v14       #secs:J
    :cond_e
    #v0=(Conflicted);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(LongLo);v15=(LongHi);v16=(Uninit);v17=(Uninit);v18=(Conflicted);v22=(Uninit);v23=(Uninit);
    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #v18=(Reference);
    const-string v19, "Error "

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    #v0=(Reference);
    move/from16 v1, p3

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #v17=(Reference);
    goto/16 :goto_1

    .line 651
    .end local v14           #secs:J
    .restart local v3       #accountId:J
    .restart local v5       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6       #currentStorage:Ljava/lang/Long;
    .restart local v8       #deleted:Z
    .restart local v11       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_f
    #v0=(LongLo);v1=(LongHi);v3=(LongLo);v4=(LongHi);v5=(Reference);v6=(Reference);v8=(Boolean);v11=(Reference);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v19=(LongLo);v20=(LongHi);v21=(LongHi);v22=(LongLo);v23=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V

    goto/16 :goto_0

    .line 654
    .end local v11           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_10
    #v0=(Integer);v1=(PosByte);v11=(Uninit);v18=(PosByte);v19=(Conflicted);v20=(Conflicted);
    if-nez v8, :cond_d

    .line 660
    new-instance v7, Landroid/content/ContentValues;

    #v7=(UninitRef);
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 661
    .local v7, cv:Landroid/content/ContentValues;
    #v7=(Reference);
    const/4 v10, 0x6

    .line 663
    .local v10, flags:I
    #v10=(PosByte);
    const-string v18, "flags"

    #v18=(Reference);
    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v19, v0

    #v19=(Integer);
    and-int/lit8 v19, v19, -0x7

    move/from16 v0, v19

    iput v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    #v19=(Reference);
    move-object/from16 v0, v18

    #v0=(Reference);
    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    const-string v18, "uiState"

    const/16 v19, 0x3

    #v19=(PosByte);
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    #v19=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 638
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .restart local v16       #service:Lcom/android/emailcommon/service/EmailServiceProxy;
    :catch_0
    #v1=(LongHi);v7=(Uninit);v10=(Uninit);v16=(Reference);v19=(Conflicted);
    move-exception v18

    goto/16 :goto_2
.end method

.method declared-synchronized findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 4
    .parameter "id"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 310
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, p1

    #v2=(Byte);
    if-nez v2, :cond_0

    .line 314
    .end local v1           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :goto_0
    #v3=(Conflicted);
    monitor-exit p0

    return-object v1

    :cond_1
    #v1=(Conflicted);v2=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0

    .line 307
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7
    .parameter "context"
    .parameter "att"

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p0, v3, v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v2

    .line 268
    .local v2, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #v2=(Reference);
    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    #v3=(Integer);
    int-to-long v0, v3

    .line 269
    .local v0, priority:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v3, -0x1

    #v3=(LongLo);
    cmp-long v3, v0, v3

    #v3=(Byte);
    if-nez v3, :cond_4

    .line 270
    const-string v3, "AttachmentService"

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v3, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 271
    const-string v3, "AttachmentService"

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "== Attachment changed: "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-eqz v2, :cond_2

    .line 277
    const-string v3, "AttachmentService"

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v3, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 278
    const-string v3, "AttachmentService"

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "== Attachment "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was in queue, removing"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 280
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_3
    #v3=(Conflicted);
    monitor-exit p0

    return-void

    .line 284
    :cond_4
    :try_start_1
    #v3=(Byte);v4=(LongHi);v5=(Uninit);v6=(Uninit);
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v3=(Reference);
    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 286
    if-nez v2, :cond_5

    .line 287
    new-instance v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local v2           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #v2=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v2, p1, p2, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V

    .line 288
    .restart local v2       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_5
    #v3=(Boolean);
    const-string v3, "AttachmentService"

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v3, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 293
    const-string v3, "AttachmentService"

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "== Download queued for attachment "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priority time "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    #v5=(LongLo);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    .end local v0           #priority:J
    .end local v2           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit p0

    throw v3
.end method

.method declared-synchronized processQueue()V
    .locals 22

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    const-string v2, "AttachmentService"

    #v2=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v2, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 328
    const-string v2, "AttachmentService"

    #v2=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "== Checking attachment queue, "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v5, v5, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v17

    .line 334
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_1
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v13=(Conflicted);v14=(Conflicted);v17=(Reference);v18=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    #v2=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    if-ge v2, v4, :cond_4

    .line 336
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 338
    .local v18, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    #v4=(LongLo);v5=(LongHi);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->downloadsForAccount(J)I

    move-result v2

    const/4 v4, 0x1

    #v4=(One);
    if-lt v2, v4, :cond_2

    .line 339
    const-string v2, "AttachmentService"

    #v2=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v2, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 340
    const-string v2, "AttachmentService"

    #v2=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "== Skip #"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; maxed for acct #"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    #v5=(LongLo);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 327
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v18           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2

    .line 344
    .restart local v17       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v18       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_2
    :try_start_1
    #v0=(Reference);v2=(Integer);v3=(Uninit);v4=(One);v5=(LongHi);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Reference);v18=(Reference);v19=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v4=(LongLo);
    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 347
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 349
    .local v13, currentTime:J
    #v13=(LongLo);v14=(LongHi);
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    const-wide/16 v6, 0x0

    #v6=(LongLo);v7=(LongHi);
    cmp-long v2, v4, v6

    #v2=(Byte);
    if-lez v2, :cond_3

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    cmp-long v2, v4, v13

    if-lez v2, :cond_3

    .line 350
    const-string v2, "AttachmentService"

    #v2=(Reference);
    const-string v4, "== waiting to retry attachment %d"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v20, v0

    #v20=(LongLo);v21=(LongHi);
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 351
    const-wide/16 v4, 0x2710

    #v4=(LongLo);v5=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v4, v5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm(J)V

    goto/16 :goto_0

    .line 354
    :cond_3
    #v1=(Conflicted);v2=(Byte);v6=(LongLo);v7=(LongHi);v20=(Conflicted);v21=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z

    goto/16 :goto_0

    .line 359
    .end local v13           #currentTime:J
    .end local v18           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_4
    #v2=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v13=(Conflicted);v14=(Conflicted);v18=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v15, v2, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .local v15, ecm:Lcom/android/email/EmailConnectivityManager;
    #v15=(Reference);
    if-nez v15, :cond_6

    .line 413
    :cond_5
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v16=(Conflicted);v19=(Conflicted);
    monitor-exit p0

    return-void

    .line 361
    :cond_6
    :try_start_2
    #v2=(Reference);v3=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v16=(Uninit);v19=(Uninit);
    invoke-virtual {v15}, Lcom/android/email/EmailConnectivityManager;->isAutoSyncAllowed()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {v15}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType()I

    move-result v2

    #v2=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    if-ne v2, v4, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    #v2=(Integer);
    rsub-int/lit8 v10, v2, 0x2

    .line 369
    .local v10, backgroundDownloads:I
    #v10=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-le v10, v2, :cond_5

    .line 371
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    const/16 v4, 0x19

    #v4=(PosByte);
    invoke-static {v2, v4}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 373
    .local v3, lookupUri:Landroid/net/Uri;
    #v3=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1))"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "_id DESC"

    #v7=(Reference);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 377
    .local v11, c:Landroid/database/Cursor;
    #v11=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 379
    .local v12, cacheDir:Ljava/io/File;
    :cond_7
    :goto_2
    :try_start_3
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Reference);v16=(Conflicted);v19=(Conflicted);
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_b

    .line 380
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v9=(UninitRef);
    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 381
    .local v9, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v9=(Reference);
    invoke-virtual {v9, v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 383
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    #v8=(Reference);
    if-nez v8, :cond_8

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    #v4=(Reference);
    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v2, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 410
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catchall_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v2

    :try_start_4
    #v2=(Reference);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    .restart local v8       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v9       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_8
    :try_start_5
    #v0=(Reference);v4=(LongLo);v5=(LongHi);v8=(Reference);v9=(Reference);
    new-instance v16, Lcom/android/email/AttachmentInfo;

    #v16=(UninitRef);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    #v0=(UninitRef);
    invoke-direct {v0, v2, v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 390
    .local v16, info:Lcom/android/email/AttachmentInfo;
    #v0=(Reference);v16=(Reference);
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/AttachmentInfo;->isEligibleForDownload()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 393
    iget-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    #v2=(Reference);
    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-virtual {v2, v8, v12}, Lcom/android/email/service/AttachmentDownloadService;->canPrefetchForAccount(Lcom/android/emailcommon/provider/Account;Ljava/io/File;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 396
    :cond_9
    #v2=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    #v19=(Reference);
    check-cast v19, Ljava/lang/Integer;

    .line 397
    .local v19, tryCount:Ljava/lang/Integer;
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    const/4 v4, 0x5

    #v4=(PosByte);
    if-gt v2, v4, :cond_7

    .line 402
    :cond_a
    #v2=(Conflicted);v4=(Conflicted);
    new-instance v18, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    #v18=(UninitRef);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v18

    #v0=(UninitRef);
    invoke-direct {v0, v2, v9, v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V

    .line 403
    .restart local v18       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #v0=(Reference);v18=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 410
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #info:Lcom/android/email/AttachmentInfo;
    .end local v18           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v19           #tryCount:Ljava/lang/Integer;
    :cond_b
    :try_start_6
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v16=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method declared-synchronized tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z
    .locals 8
    .parameter "req"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 470
    #v3=(Null);
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v5=(Reference);
    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v5, v6, v7}, Lcom/android/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v2

    .line 474
    .local v2, service:Lcom/android/emailcommon/service/EmailServiceProxy;
    #v2=(Reference);
    iget-object v5, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_0

    move v0, v4

    .line 475
    .local v0, alreadyInProgress:Z
    :goto_0
    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 487
    :goto_1
    #v1=(Conflicted);v3=(Boolean);v5=(Conflicted);v6=(Conflicted);
    monitor-exit p0

    return v3

    .end local v0           #alreadyInProgress:Z
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Null);v5=(Reference);v6=(Reference);
    move v0, v3

    .line 474
    #v0=(Null);
    goto :goto_0

    .line 478
    .restart local v0       #alreadyInProgress:Z
    :cond_1
    :try_start_1
    #v0=(Boolean);
    const-string v3, "AttachmentService"

    #v3=(Reference);
    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-static {v3, v5}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 479
    const-string v3, "AttachmentService"

    #v3=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, ">> Starting download for attachment #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v6=(LongLo);
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    :cond_2
    #v3=(Conflicted);v5=(Conflicted);
    invoke-direct {p0, v2, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->startDownload(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    #v1=(Conflicted);v6=(Conflicted);
    move v3, v4

    .line 487
    #v3=(One);
    goto :goto_1

    .line 482
    :catch_0
    #v1=(Uninit);v3=(Conflicted);
    move-exception v1

    .line 485
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    #v1=(Reference);
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 470
    .end local v0           #alreadyInProgress:Z
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #service:Lcom/android/emailcommon/service/EmailServiceProxy;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit p0

    throw v3
.end method
