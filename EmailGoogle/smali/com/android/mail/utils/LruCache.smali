.class public final Lcom/android/mail/utils/LruCache;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 39
    .local p0, this:Lcom/android/mail/utils/LruCache;,"Lcom/android/mail/utils/LruCache<TK;TV;>;"
    invoke-direct {p0, p1, p1}, Lcom/android/mail/utils/LruCache;-><init>(II)V

    .line 40
    #p0=(Reference);
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "maxCapacity"

    .prologue
    .line 49
    .local p0, this:Lcom/android/mail/utils/LruCache;,"Lcom/android/mail/utils/LruCache<TK;TV;>;"
    const/high16 v0, 0x3f40

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 50
    #p0=(Reference);
    iput p2, p0, Lcom/android/mail/utils/LruCache;->maxCapacity:I

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/android/mail/utils/LruCache;,"Lcom/android/mail/utils/LruCache<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v2, v3}, Lcom/android/mail/utils/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2

    .line 95
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    #v1=(Reference);v2=(Boolean);
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized putElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/android/mail/utils/LruCache;,"Lcom/android/mail/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/utils/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/android/mail/utils/LruCache;,"Lcom/android/mail/utils/LruCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/utils/LruCache;->size()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/mail/utils/LruCache;->maxCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v1=(Integer);
    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    monitor-exit p0

    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :catchall_0
    #v0=(Conflicted);v1=(Uninit);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method
