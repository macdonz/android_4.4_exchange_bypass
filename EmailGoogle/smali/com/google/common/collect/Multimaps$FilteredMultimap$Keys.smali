.class Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;
.super Lcom/google/common/collect/Multimaps$Keys;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$FilteredMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Keys",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;


# virtual methods
.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 2731
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;)V

    #v0=(Reference);
    return-object v0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2706
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 6
    .parameter "o"
    .parameter "occurrences"

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys;"
    const/4 v5, 0x0

    .line 2710
    #v5=(Null);
    if-ltz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    #v4=(Boolean);
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2711
    iget-object v4, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    #v4=(Reference);
    iget-object v4, v4, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v4}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/util/Collection;

    .line 2712
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v3, :cond_1

    .line 2727
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Integer);
    return v5

    .end local v3           #values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);
    move v4, v5

    .line 2710
    #v4=(Null);
    goto :goto_0

    .line 2715
    .restart local v3       #values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_1
    #v3=(Reference);v4=(Reference);
    const/4 v1, 0x0

    .line 2716
    .local v1, priorCount:I
    #v1=(Null);
    const/4 v2, 0x0

    .line 2717
    .local v2, removed:I
    #v2=(Null);
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2718
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_2
    :goto_2
    #v0=(Reference);v1=(Integer);v2=(Integer);v4=(Conflicted);v5=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 2719
    iget-object v4, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    #v4=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 2720
    add-int/lit8 v1, v1, 0x1

    .line 2721
    if-ge v2, p2, :cond_2

    .line 2722
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2723
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v5, v1

    .line 2727
    #v5=(Integer);
    goto :goto_1
.end method
