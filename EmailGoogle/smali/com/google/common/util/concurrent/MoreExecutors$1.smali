.class final Lcom/google/common/util/concurrent/MoreExecutors$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$terminationTimeout:J

.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$service:Ljava/util/concurrent/ExecutorService;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 140
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$service:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$terminationTimeout:J

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    #v3=(Reference);
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 141
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method