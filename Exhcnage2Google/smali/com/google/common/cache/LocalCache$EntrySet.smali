.class final Lcom/google/common/cache/LocalCache$EntrySet;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0
    .parameter

    .prologue
    .line 4525
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4569
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4570
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 4534
    #v3=(Null);
    instance-of v4, p1, Ljava/util/Map$Entry;

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 4544
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v3

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v4=(Boolean);v5=(Uninit);
    move-object v0, p1

    .line 4537
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 4538
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4539
    .local v1, key:Ljava/lang/Object;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 4542
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4544
    .local v2, v:Ljava/lang/Object;,"TV;"
    #v2=(Reference);
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4564
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4529
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryIterator;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$EntryIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 4549
    #v2=(Null);
    instance-of v3, p1, Ljava/util/Map$Entry;

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 4554
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v4=(Uninit);
    move-object v0, p1

    .line 4552
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 4553
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4554
    .local v1, key:Ljava/lang/Object;
    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    #v3=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v1, v4}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4559
    .local p0, this:Lcom/google/common/cache/LocalCache$EntrySet;,"Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
