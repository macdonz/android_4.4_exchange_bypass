.class Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeysEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$Keys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$Keys;)V
    .locals 0
    .parameter

    .prologue
    .line 1900
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    const/4 v2, 0x0

    .line 1918
    #v2=(Null);
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    #v3=(Boolean);
    if-eqz v3, :cond_0

    move-object v1, p1

    .line 1919
    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 1920
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v3, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Collection;

    .line 1921
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    #v3=(Integer);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    #v4=(Integer);
    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1923
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1914
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 1906
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1902
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1927
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    instance-of v2, p1, Lcom/google/common/collect/Multiset$Entry;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1928
    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 1929
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Collection;

    .line 1930
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    #v2=(Integer);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 1931
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1932
    const/4 v2, 0x1

    .line 1935
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    :cond_0
    #v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1910
    .local p0, this:Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;,"Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->distinctElements()I

    move-result v0

    #v0=(Integer);
    return v0
.end method