.class Lcom/android/emailsync/SyncManager$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field final mAccountId:J

.field final mAccountName:Ljava/lang/String;

.field mCalendarId:J

.field mSyncEvents:J

.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 628
    monitor-enter p0

    if-nez p1, :cond_0

    .line 629
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/emailsync/SyncManager$CalendarObserver$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/emailsync/SyncManager$CalendarObserver$1;-><init>(Lcom/android/emailsync/SyncManager$CalendarObserver;)V

    #v1=(Reference);
    const-string v2, "Calendar Observer"

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method
