.class final Lcom/google/common/collect/MapMakerInternalMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
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
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3885
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3929
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->clear()V

    .line 3930
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 3894
    #v3=(Null);
    instance-of v4, p1, Ljava/util/Map$Entry;

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 3904
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v3

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v4=(Boolean);v5=(Uninit);
    move-object v0, p1

    .line 3897
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 3898
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3899
    .local v1, key:Ljava/lang/Object;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 3902
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Lcom/google/common/collect/MapMakerInternalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3904
    .local v2, v:Ljava/lang/Object;,"TV;"
    #v2=(Reference);
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v4, v4, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

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
    .line 3924
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->isEmpty()Z

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
    .line 3889
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 3909
    #v2=(Null);
    instance-of v3, p1, Ljava/util/Map$Entry;

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 3914
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v4=(Uninit);
    move-object v0, p1

    .line 3912
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 3913
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3914
    .local v1, key:Ljava/lang/Object;
    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v3=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v1, v4}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 3919
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
