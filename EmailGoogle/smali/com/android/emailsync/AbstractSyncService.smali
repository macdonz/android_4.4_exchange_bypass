.class public abstract Lcom/android/emailsync/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailsync/AbstractSyncService$ValidationResult;
    }
.end annotation


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public mIsValid:Z

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected mMailboxName:Ljava/lang/String;

.field protected mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/emailsync/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRequestTime:J

.field public volatile mSyncReason:I

.field public volatile mThread:Ljava/lang/Thread;


# virtual methods
.method public addRequest(Lcom/android/emailsync/Request;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public abstract alarm()Z
.end method

.method public abstract resetCalendarSyncKey()V
.end method

.method public abstract stop()V
.end method
