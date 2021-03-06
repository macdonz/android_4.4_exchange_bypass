.class Lcom/google/common/util/concurrent/Futures$ListFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final allMustSucceed:Z

.field futures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$200(Lcom/google/common/util/concurrent/Futures$ListFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1276
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private callAllGets()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1417
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListFuture;,"Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1418
    .local v3, oldFutures:Ljava/util/List;,"Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    #v3=(Reference);
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 1419
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1423
    .local v1, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1425
    :try_start_0
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, e:Ljava/lang/Error;
    #v0=(Reference);
    throw v0

    .line 1428
    .end local v0           #e:Ljava/lang/Error;
    :catch_1
    #v0=(Conflicted);
    move-exception v0

    .line 1429
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference);
    throw v0

    .line 1430
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    #v0=(Conflicted);
    move-exception v0

    .line 1432
    .local v0, e:Ljava/lang/Throwable;
    #v0=(Reference);
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v4, :cond_1

    .line 1441
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .locals 7
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListFuture;,"Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    .local p2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<+TV;>;"
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 1353
    #v4=(Null);
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1354
    .local v1, localValues:Ljava/util/List;,"Ljava/util/List<TV;>;"
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    if-nez v1, :cond_2

    .line 1358
    :cond_0
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    #v3=(Boolean);
    const-string v4, "Future was done before all dependencies completed"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1400
    :cond_1
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 1364
    :cond_2
    :try_start_0
    #v0=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Boolean);v6=(Uninit);
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    const-string v6, "Tried to set value from future which is not done"

    #v6=(Reference);
    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1366
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v1, p1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 1389
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1390
    .local v2, newRemaining:I
    #v2=(Integer);
    if-ltz v2, :cond_3

    :goto_1
    #v3=(Boolean);
    const-string v4, "Less than 0 remaining futures"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1391
    if-nez v2, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1393
    if-eqz v1, :cond_4

    .line 1394
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    #v3=(One);v4=(Null);
    move v3, v4

    .line 1390
    #v3=(Null);
    goto :goto_1

    .line 1396
    :cond_4
    #v3=(Boolean);v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1367
    .end local v2           #newRemaining:I
    :catch_0
    #v2=(Uninit);v3=(One);v4=(Null);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    .line 1368
    .local v0, e:Ljava/util/concurrent/CancellationException;
    :try_start_1
    #v0=(Reference);
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    #v5=(Boolean);
    if-eqz v5, :cond_5

    .line 1373
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$ListFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    :cond_5
    #v5=(Boolean);
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1390
    .restart local v2       #newRemaining:I
    #v2=(Integer);
    if-ltz v2, :cond_6

    :goto_2
    #v3=(Boolean);
    const-string v4, "Less than 0 remaining futures"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1391
    if-nez v2, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1393
    if-eqz v1, :cond_7

    .line 1394
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    #v3=(One);v4=(Null);
    move v3, v4

    .line 1390
    #v3=(Null);
    goto :goto_2

    .line 1396
    :cond_7
    #v3=(Boolean);v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1375
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    .end local v2           #newRemaining:I
    :catch_1
    #v0=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Conflicted);
    move-exception v0

    .line 1376
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    :try_start_2
    #v0=(Reference);
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    #v5=(Boolean);
    if-eqz v5, :cond_8

    .line 1379
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1389
    :cond_8
    #v5=(Conflicted);
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1390
    .restart local v2       #newRemaining:I
    #v2=(Integer);
    if-ltz v2, :cond_9

    :goto_3
    #v3=(Boolean);
    const-string v4, "Less than 0 remaining futures"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1391
    if-nez v2, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1393
    if-eqz v1, :cond_a

    .line 1394
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    #v3=(One);v4=(Null);
    move v3, v4

    .line 1390
    #v3=(Null);
    goto :goto_3

    .line 1396
    :cond_a
    #v3=(Boolean);v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1381
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    .end local v2           #newRemaining:I
    :catch_2
    #v0=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Conflicted);
    move-exception v0

    .line 1382
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    #v0=(Reference);
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    #v5=(Boolean);
    if-eqz v5, :cond_b

    .line 1383
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1389
    :cond_b
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1390
    .restart local v2       #newRemaining:I
    #v2=(Integer);
    if-ltz v2, :cond_c

    :goto_4
    #v3=(Boolean);
    const-string v4, "Less than 0 remaining futures"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1391
    if-nez v2, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1393
    if-eqz v1, :cond_d

    .line 1394
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    #v3=(One);v4=(Null);
    move v3, v4

    .line 1390
    #v3=(Null);
    goto :goto_4

    .line 1396
    :cond_d
    #v3=(Boolean);v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1385
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v2           #newRemaining:I
    :catch_3
    #v0=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Conflicted);
    move-exception v0

    .line 1387
    .local v0, e:Ljava/lang/Error;
    :try_start_4
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1389
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1390
    .restart local v2       #newRemaining:I
    #v2=(Integer);
    if-ltz v2, :cond_e

    :goto_5
    #v3=(Boolean);
    const-string v4, "Less than 0 remaining futures"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1391
    if-nez v2, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1393
    if-eqz v1, :cond_f

    .line 1394
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    #v3=(One);v4=(Null);
    move v3, v4

    .line 1390
    #v3=(Null);
    goto :goto_5

    .line 1396
    :cond_f
    #v3=(Boolean);v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1389
    .end local v0           #e:Ljava/lang/Error;
    .end local v2           #newRemaining:I
    :catchall_0
    #v0=(Conflicted);v2=(Uninit);v3=(One);v4=(Null);v5=(Conflicted);
    move-exception v5

    #v5=(Reference);
    iget-object v6, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1390
    .restart local v2       #newRemaining:I
    #v2=(Integer);
    if-ltz v2, :cond_11

    :goto_6
    #v3=(Boolean);
    const-string v4, "Less than 0 remaining futures"

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1391
    if-nez v2, :cond_10

    .line 1392
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1393
    if-eqz v1, :cond_12

    .line 1394
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    .line 1399
    :cond_10
    :goto_7
    #v3=(Conflicted);
    throw v5

    :cond_11
    #v3=(One);v4=(Null);
    move v3, v4

    .line 1390
    #v3=(Null);
    goto :goto_6

    .line 1396
    :cond_12
    #v3=(Boolean);v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListFuture;,"Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->get()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1404
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ListFuture;,"Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->callAllGets()V

    .line 1408
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
