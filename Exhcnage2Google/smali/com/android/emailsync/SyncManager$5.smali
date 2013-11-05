.class Lcom/android/emailsync/SyncManager$5;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailsync/SyncManager;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/emailsync/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$5;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1451
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v0=(Reference);
    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1459
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 1452
    :cond_1
    #v1=(Uninit);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    monitor-enter v1

    .line 1454
    :try_start_0
    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1455
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->access$602(Z)Z

    .line 1456
    sget-object v0, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1458
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
