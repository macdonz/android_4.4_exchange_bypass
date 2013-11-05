.class Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpiringMemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation
.end field

.field final durationNanos:J

.field volatile transient expirationNanos:J

.field volatile transient value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;,"Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier<TT;>;"
    const-wide/16 v7, 0x0

    .line 168
    #v7=(LongLo);v8=(LongHi);
    iget-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 169
    .local v0, nanos:J
    #v0=(LongLo);v1=(LongHi);
    invoke-static {}, Lcom/google/common/base/Platform;->systemNanoTime()J

    move-result-wide v2

    .line 170
    .local v2, now:J
    #v2=(LongLo);v3=(LongHi);
    cmp-long v5, v0, v7

    #v5=(Byte);
    if-eqz v5, :cond_0

    sub-long v5, v2, v0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-ltz v5, :cond_3

    .line 171
    :cond_0
    #v6=(Conflicted);
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide v5, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v0, v5

    #v5=(Byte);
    if-nez v5, :cond_2

    .line 173
    iget-object v5, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    .line 174
    .local v4, t:Ljava/lang/Object;,"TT;"
    #v4=(Reference);
    iput-object v4, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    .line 175
    iget-wide v5, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    #v5=(LongLo);
    add-long v0, v2, v5

    .line 178
    cmp-long v5, v0, v7

    #v5=(Byte);
    if-nez v5, :cond_1

    const-wide/16 v5, 0x1

    :goto_0
    #v5=(LongLo);
    iput-wide v5, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 179
    monitor-exit p0

    .line 183
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :goto_1
    #v5=(Conflicted);
    return-object v4

    .restart local v4       #t:Ljava/lang/Object;,"TT;"
    :cond_1
    #v5=(Byte);
    move-wide v5, v0

    .line 178
    #v5=(LongLo);
    goto :goto_0

    .line 181
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_2
    #v4=(Uninit);v5=(Byte);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    #v4=(Reference);
    goto :goto_1

    .line 181
    :catchall_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v5

    :try_start_1
    #v5=(Reference);
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
