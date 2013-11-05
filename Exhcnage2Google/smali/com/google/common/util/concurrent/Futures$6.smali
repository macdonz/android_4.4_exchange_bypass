.class final Lcom/google/common/util/concurrent/Futures$6;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 974
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    #v2=(Reference);
    invoke-static {v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 975
    .local v1, value:Ljava/lang/Object;,"TV;"
    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 983
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    #v0=(Reference);
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    #v2=(Reference);
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 978
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    #v2=(Reference);
    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 980
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 981
    .local v0, e:Ljava/lang/Error;
    #v0=(Reference);
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    #v2=(Reference);
    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
