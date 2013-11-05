.class abstract Lcom/google/common/collect/Multimaps$Entries;
.super Ljava/util/AbstractCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2044
    .local p0, this:Lcom/google/common/collect/Multimaps$Entries;,"Lcom/google/common/collect/Multimaps$Entries<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2069
    .local p0, this:Lcom/google/common/collect/Multimaps$Entries;,"Lcom/google/common/collect/Multimaps$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Entries;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 2070
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2053
    .local p0, this:Lcom/google/common/collect/Multimaps$Entries;,"Lcom/google/common/collect/Multimaps$Entries<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2054
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 2055
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Entries;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 2057
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method abstract multimap()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2061
    .local p0, this:Lcom/google/common/collect/Multimaps$Entries;,"Lcom/google/common/collect/Multimaps$Entries<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2062
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 2063
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Entries;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 2065
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2049
    .local p0, this:Lcom/google/common/collect/Multimaps$Entries;,"Lcom/google/common/collect/Multimaps$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Entries;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
