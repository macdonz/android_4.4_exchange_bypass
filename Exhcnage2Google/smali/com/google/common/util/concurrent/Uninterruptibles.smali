.class public final Lcom/google/common/util/concurrent/Uninterruptibles;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, interrupted:Z
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Boolean);
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    #v2=(Reference);
    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    #v3=(Conflicted);
    return-object v2

    .line 133
    :catch_0
    #v2=(Uninit);v3=(Uninit);
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference);
    const/4 v1, 0x1

    .line 135
    #v1=(One);
    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    #v0=(Conflicted);v1=(Boolean);
    move-exception v2

    #v2=(Reference);
    if-eqz v1, :cond_1

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    #v3=(Conflicted);
    throw v2
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    const/4 v3, 0x0

    .line 158
    .local v3, interrupted:Z
    :try_start_0
    #v3=(Null);
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 159
    .local v4, remainingNanos:J
    #v4=(LongLo);v5=(LongHi);
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    add-long v1, v6, v4

    .line 164
    .local v1, end:J
    :goto_0
    :try_start_1
    #v0=(Conflicted);v1=(LongLo);v2=(LongHi);v3=(Boolean);
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #v6=(Reference);
    invoke-interface {p0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 171
    if-eqz v3, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    #v7=(Conflicted);
    return-object v6

    .line 165
    :catch_0
    #v6=(Conflicted);v7=(LongHi);
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference);
    const/4 v3, 0x1

    .line 167
    :try_start_2
    #v3=(One);
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    #v6=(LongLo);
    sub-long v4, v1, v6

    .line 168
    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #end:J
    .end local v4           #remainingNanos:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    #v6=(Reference);
    if-eqz v3, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    #v7=(Conflicted);
    throw v6
.end method

.method public static putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x0

    .line 235
    .local v1, interrupted:Z
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Boolean);
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    if-eqz v1, :cond_0

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    #v2=(Conflicted);
    return-void

    .line 237
    :catch_0
    #v2=(Uninit);
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference);
    const/4 v1, 0x1

    .line 239
    #v1=(One);
    goto :goto_0

    .line 242
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    #v0=(Conflicted);v1=(Boolean);
    move-exception v2

    #v2=(Reference);
    if-eqz v1, :cond_1

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    #v3=(Conflicted);
    throw v2
.end method

.method public static takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<TE;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, interrupted:Z
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Boolean);
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 220
    #v2=(Reference);
    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    #v3=(Conflicted);
    return-object v2

    .line 215
    :catch_0
    #v2=(Uninit);v3=(Uninit);
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference);
    const/4 v1, 0x1

    .line 217
    #v1=(One);
    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    #v0=(Conflicted);v1=(Boolean);
    move-exception v2

    #v2=(Reference);
    if-eqz v1, :cond_1

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    #v3=(Conflicted);
    throw v2
.end method
