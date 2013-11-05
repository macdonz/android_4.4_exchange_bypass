.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1846
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1846
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1867
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1868
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1871
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1848
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v1=(Reference);
    iget-object v1, v1, Lcom/google/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1849
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1875
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    const/4 v0, 0x1

    .line 1879
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1883
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    const/4 v0, 0x0

    .line 1885
    .local v0, changed:Z
    #v0=(Null);
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Boolean);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1886
    .local v2, obj:Ljava/lang/Object;
    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 1888
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
    #v2=(Conflicted);
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1892
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    const/4 v0, 0x0

    .line 1894
    .local v0, changed:Z
    #v0=(Null);
    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v3=(Reference);
    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1895
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 1896
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Map$Entry;

    .line 1897
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v3=(Reference);
    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1898
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1899
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 1902
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    #v0=(Boolean);v1=(Conflicted);
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1863
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1907
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1911
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
