.class final Lcom/google/common/util/concurrent/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "t"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "finalState"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x1

    .line 351
    #v2=(One);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v0

    .line 352
    .local v0, doCompletion:Z
    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 355
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    .line 357
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->releaseShared(I)Z

    .line 363
    :cond_0
    :goto_0
    #v1=(Integer);
    return v0

    .line 358
    :cond_1
    #v1=(Null);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v1

    #v1=(Integer);
    if-ne v1, v2, :cond_0

    .line 361
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireShared(I)V

    goto :goto_0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 285
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    .line 286
    .local v0, state:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 298
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Error, synchronizer in invalid state: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 288
    :pswitch_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1

    .line 291
    :cond_0
    #v2=(Uninit);
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    return-object v1

    .line 295
    :pswitch_2
    #v1=(Uninit);
    new-instance v1, Ljava/util/concurrent/CancellationException;

    #v1=(UninitRef);
    const-string v2, "Task was cancelled."

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 286
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method cancel()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v1, 0x0

    .line 335
    #v1=(Null);
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-direct {p0, v1, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    .line 276
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method get(J)Ljava/lang/Object;
    .locals 2
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    #v0=(UninitRef);
    const-string v1, "Timeout waiting for task."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 262
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method isCancelled()Z
    .locals 2

    .prologue
    .line 314
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x4

    #v1=(PosByte);
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

.method isDone()Z
    .locals 1

    .prologue
    .line 307
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x6

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

.method set(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method setException(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "t"

    .prologue
    .line 328
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .parameter "ignored"

    .prologue
    .line 233
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    #v0=(Byte);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1
    .parameter "finalState"

    .prologue
    .line 245
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setState(I)V

    .line 246
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
