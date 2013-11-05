.class public Lcom/android/bitmap/AltPooledCache;
.super Ljava/lang/Object;
.source "AltPooledCache.java"

# interfaces
.implements Lcom/android/bitmap/PooledCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/AltPooledCache$NonPooledCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/android/bitmap/Poolable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/bitmap/PooledCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mNonPooledCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mTargetSize:I


# direct methods
.method public constructor <init>(IF)V
    .locals 5
    .parameter "targetSize"
    .parameter "nonPooledFraction"

    .prologue
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    const/4 v4, 0x0

    .line 56
    #v4=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    #p0=(Reference);
    iput-boolean v4, p0, Lcom/android/bitmap/AltPooledCache;->DEBUG:Z

    .line 57
    new-instance v1, Ljava/util/LinkedHashMap;

    #v1=(UninitRef);
    const/high16 v2, 0x3f40

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v1, v4, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    .line 58
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 59
    int-to-float v1, p1

    #v1=(Float);
    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 60
    .local v0, nonPooledSize:I
    #v0=(Integer);
    if-lez v0, :cond_0

    .line 61
    new-instance v1, Lcom/android/bitmap/AltPooledCache$NonPooledCache;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/android/bitmap/AltPooledCache$NonPooledCache;-><init>(Lcom/android/bitmap/AltPooledCache;I)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    .line 65
    :goto_0
    sub-int v1, p1, v0

    #v1=(Integer);
    iput v1, p0, Lcom/android/bitmap/AltPooledCache;->mTargetSize:I

    .line 66
    return-void

    .line 63
    :cond_0
    #v1=(Float);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Z)Lcom/android/bitmap/Poolable;
    .locals 3
    .parameter
    .parameter "incrementRefCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    #v2=(Reference);
    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/bitmap/Poolable;

    .line 72
    .local v0, result:Lcom/android/bitmap/Poolable;,"TV;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/android/bitmap/Poolable;,"TV;"
    check-cast v0, Lcom/android/bitmap/Poolable;

    .line 75
    .restart local v0       #result:Lcom/android/bitmap/Poolable;,"TV;"
    :cond_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0}, Lcom/android/bitmap/Poolable;->acquireReference()V

    .line 78
    :cond_1
    monitor-exit v2

    return-object v0

    .line 79
    .end local v0           #result:Lcom/android/bitmap/Poolable;,"TV;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/AltPooledCache;->get(Ljava/lang/Object;Z)Lcom/android/bitmap/Poolable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public offer(Lcom/android/bitmap/Poolable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, value:Lcom/android/bitmap/Poolable;,"TV;"
    invoke-interface {p1}, Lcom/android/bitmap/Poolable;->getRefCount()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/bitmap/Poolable;->isEligibleForPooling()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 100
    :cond_0
    #v0=(Integer);
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "unexpected offer of an invalid object: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 102
    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/bitmap/AltPooledCache;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    check-cast p1, Lcom/android/bitmap/Poolable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/AltPooledCache;->offer(Lcom/android/bitmap/Poolable;)V

    return-void
.end method

.method public poll()Lcom/android/bitmap/Poolable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    iget-object v6, p0, Lcom/android/bitmap/AltPooledCache;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/bitmap/Poolable;

    .line 108
    .local v3, pooled:Lcom/android/bitmap/Poolable;,"TV;"
    if-eqz v3, :cond_0

    .line 139
    .end local v3           #pooled:Lcom/android/bitmap/Poolable;,"TV;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v3

    .line 112
    .restart local v3       #pooled:Lcom/android/bitmap/Poolable;,"TV;"
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Uninit);v8=(Uninit);
    iget-object v7, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    #v7=(Reference);
    monitor-enter v7

    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, unrefSize:I
    #v4=(Null);
    const/4 v0, 0x0

    .line 115
    .local v0, eldestUnref:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :try_start_0
    #v0=(Null);
    iget-object v6, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Reference);v1=(Conflicted);v2=(Reference);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/bitmap/Poolable;

    .line 117
    .local v5, value:Lcom/android/bitmap/Poolable;,"TV;"
    invoke-interface {v5}, Lcom/android/bitmap/Poolable;->getRefCount()I

    move-result v6

    #v6=(Integer);
    if-gtz v6, :cond_1

    invoke-interface {v5}, Lcom/android/bitmap/Poolable;->isEligibleForPooling()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 120
    if-nez v0, :cond_2

    .line 121
    move-object v0, v1

    .line 123
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/bitmap/AltPooledCache;->sizeOf(Lcom/android/bitmap/Poolable;)I

    move-result v6

    #v6=(Integer);
    add-int/2addr v4, v6

    .line 124
    iget v6, p0, Lcom/android/bitmap/AltPooledCache;->mTargetSize:I

    if-le v4, v6, :cond_1

    .line 130
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5           #value:Lcom/android/bitmap/Poolable;,"TV;"
    :cond_3
    #v1=(Conflicted);v5=(Conflicted);
    iget v6, p0, Lcom/android/bitmap/AltPooledCache;->mTargetSize:I

    if-gt v4, v6, :cond_4

    .line 134
    const/4 v3, 0x0

    #v3=(Null);
    monitor-exit v7

    goto :goto_0

    .line 141
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pooled:Lcom/android/bitmap/Poolable;,"TV;"
    :catchall_0
    #v2=(Conflicted);v3=(Reference);v6=(Conflicted);v8=(Conflicted);
    move-exception v6

    #v6=(Reference);
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 136
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #pooled:Lcom/android/bitmap/Poolable;,"TV;"
    :cond_4
    :try_start_1
    #v2=(Reference);v6=(Integer);v8=(Uninit);
    iget-object v6, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    #v6=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bitmap/Poolable;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/android/bitmap/AltPooledCache;->poll()Lcom/android/bitmap/Poolable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public put(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)Lcom/android/bitmap/Poolable;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Lcom/android/bitmap/Poolable;,"TV;"
    iget-object v2, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    #v2=(Reference);
    monitor-enter v2

    .line 86
    :try_start_0
    invoke-interface {p2}, Lcom/android/bitmap/Poolable;->isEligibleForPooling()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/bitmap/Poolable;

    .line 93
    .local v0, prev:Lcom/android/bitmap/Poolable;,"TV;"
    :goto_0
    monitor-exit v2

    return-object v0

    .line 88
    .end local v0           #prev:Lcom/android/bitmap/Poolable;,"TV;"
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    iget-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/bitmap/Poolable;

    .restart local v0       #prev:Lcom/android/bitmap/Poolable;,"TV;"
    goto :goto_0

    .line 91
    .end local v0           #prev:Lcom/android/bitmap/Poolable;,"TV;"
    :cond_1
    #v0=(Uninit);
    const/4 v0, 0x0

    .restart local v0       #prev:Lcom/android/bitmap/Poolable;,"TV;"
    #v0=(Null);
    goto :goto_0

    .line 94
    .end local v0           #prev:Lcom/android/bitmap/Poolable;,"TV;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    check-cast p2, Lcom/android/bitmap/Poolable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/AltPooledCache;->put(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)Lcom/android/bitmap/Poolable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected sizeOf(Lcom/android/bitmap/Poolable;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, value:Lcom/android/bitmap/Poolable;,"TV;"
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    .local p0, this:Lcom/android/bitmap/AltPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>;"
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method
