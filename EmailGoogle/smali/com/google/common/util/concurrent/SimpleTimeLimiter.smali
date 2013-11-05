.class public final Lcom/google/common/util/concurrent/SimpleTimeLimiter;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/TimeLimiter;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 81
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    #p0=(Reference);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 68
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private static throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 150
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 151
    throw p0

    .line 153
    :cond_0
    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    #v2=(Reference);
    const-class v3, Ljava/lang/StackTraceElement;

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 158
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    instance-of v0, v1, Ljava/lang/Exception;

    #v0=(Boolean);
    if-eqz v0, :cond_2

    move-object v0, v1

    .line 159
    #v0=(Reference);
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 161
    :cond_2
    #v0=(Boolean);
    instance-of v0, v1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    .line 162
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 165
    :cond_3
    throw p0
.end method


# virtual methods
.method public callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "timeoutDuration"
    .parameter "timeoutUnit"
    .parameter "amInterruptible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    .line 122
    #v3=(One);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v2, p2, v5

    #v2=(Byte);
    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    #v2=(Boolean);
    const-string v5, "timeout must be positive: %s"

    #v5=(Reference);
    new-array v6, v3, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    #v2=(Reference);
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 128
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    #v1=(Reference);
    if-eqz p5, :cond_1

    .line 130
    :try_start_0
    invoke-interface {v1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 136
    :goto_1
    return-object v2

    .end local v1           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_0
    #v1=(Uninit);v2=(Byte);v5=(LongLo);v6=(LongHi);v7=(Uninit);
    move v2, v4

    .line 124
    #v2=(Null);
    goto :goto_0

    .line 131
    .restart local v1       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_0
    #v1=(Reference);v2=(Reference);v5=(Reference);v6=(Reference);v7=(Reference);
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference);
    const/4 v2, 0x1

    :try_start_1
    #v2=(One);
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 133
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 140
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    #v0=(Reference);
    invoke-static {v0, v3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v2

    #v2=(Reference);
    throw v2

    .line 136
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :cond_1
    :try_start_2
    #v0=(Uninit);
    invoke-static {v1, p2, p3, p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_1

    .line 141
    :catch_2
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 142
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    #v0=(Reference);
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 143
    new-instance v2, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    #v2=(Reference);
    throw v2
.end method
