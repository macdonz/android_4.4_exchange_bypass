.class Lcom/android/email/NotificationController$NotificationThread;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationThread"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 690
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 686
    #p0=(Reference);
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    .line 691
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "EmailNotification"

    #v2=(Reference);
    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 692
    iget-object v1, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 693
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 695
    :try_start_1
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0

    .line 700
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;

    #v0=(Reference);
    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 706
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 707
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;

    .line 708
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 709
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const/16 v0, 0xa

    #v0=(PosByte);
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 711
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 712
    return-void

    .line 709
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    :try_start_1
    #v0=(Reference);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
