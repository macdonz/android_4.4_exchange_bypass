.class public final Lcom/google/common/util/concurrent/JdkFutureAdapters;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static listenInPoolThread(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
    .parameter "executor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListenableFuture;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 71
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 73
    .end local p0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :goto_0
    #v0=(Conflicted);
    return-object p0

    .restart local p0       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    #v0=(Boolean);
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    #v0=(Reference);
    move-object p0, v0

    goto :goto_0
.end method
