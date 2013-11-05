.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TO;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/base/Function;

.field final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method private applyTransformation(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 568
    .local p1, input:Ljava/lang/Object;,"TI;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$function:Lcom/google/common/base/Function;

    #v1=(Reference);
    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, t:Ljava/lang/Throwable;
    #v0=(Reference);
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->applyTransformation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    #v0=(Reference);
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->applyTransformation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
