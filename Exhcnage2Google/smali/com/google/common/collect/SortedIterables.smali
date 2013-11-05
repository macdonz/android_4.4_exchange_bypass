.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v2, p1, Ljava/util/SortedSet;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    move-object v1, p1

    .line 50
    #v1=(Reference);
    check-cast v1, Ljava/util/SortedSet;

    .line 51
    .local v1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    .local v0, comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 60
    .end local v1           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    .end local p1           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    :goto_0
    #v1=(Conflicted);
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 55
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local p1       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_1
    #v0=(Uninit);v1=(Uninit);
    instance-of v2, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v2, :cond_2

    .line 56
    check-cast p1, Lcom/google/common/collect/SortedIterable;

    .end local p1           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    #v0=(Reference);
    goto :goto_0

    .line 58
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local p1       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_2
    #v0=(Uninit);
    const/4 v0, 0x0

    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    #v0=(Null);
    goto :goto_0
.end method

.method static singletonEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, set:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    new-instance v0, Lcom/google/common/collect/SortedIterables$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/SortedIterables$2;-><init>()V

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static sortedCounts(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    instance-of v10, p1, Lcom/google/common/collect/Multiset;

    #v10=(Boolean);
    if-eqz v10, :cond_1

    move-object v6, p1

    .line 136
    #v6=(Reference);
    check-cast v6, Lcom/google/common/collect/Multiset;

    .line 137
    .local v6, multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 138
    invoke-interface {v6}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 184
    .end local v6           #multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-object v3

    .line 140
    .restart local v6       #multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Boolean);v11=(Uninit);
    invoke-interface {v6}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v10

    #v10=(Reference);
    invoke-static {v10}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 141
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    #v3=(Reference);
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v10

    new-instance v11, Lcom/google/common/collect/SortedIterables$1;

    #v11=(UninitRef);
    invoke-direct {v11}, Lcom/google/common/collect/SortedIterables$1;-><init>()V

    #v11=(Reference);
    invoke-virtual {v10, v11}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 149
    .end local v3           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    .end local v6           #multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    :cond_1
    #v3=(Uninit);v6=(Uninit);v10=(Boolean);v11=(Uninit);
    instance-of v10, p1, Ljava/util/Set;

    if-eqz v10, :cond_3

    .line 151
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v8, p1

    .line 152
    #v8=(Reference);
    check-cast v8, Ljava/util/Collection;

    .line 158
    .local v8, sortedElements:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :goto_1
    #v5=(Conflicted);
    invoke-static {v8}, Lcom/google/common/collect/SortedIterables;->singletonEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    #v3=(Reference);
    goto :goto_0

    .line 154
    .end local v8           #sortedElements:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_2
    #v3=(Uninit);v5=(Uninit);v8=(Uninit);
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    .line 155
    .local v5, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    #v5=(Reference);
    invoke-static {v5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    move-object v8, v5

    .restart local v8       #sortedElements:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    #v8=(Reference);
    goto :goto_1

    .line 159
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .end local v8           #sortedElements:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_3
    #v5=(Uninit);v8=(Uninit);
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, current:Ljava/lang/Object;,"TE;"
    #v0=(Null);
    const/4 v1, 0x0

    .line 162
    .local v1, currentCount:I
    #v1=(Null);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 163
    .local v9, sortedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    #v9=(Reference);
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0           #current:Ljava/lang/Object;,"TE;"
    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    #v0=(Reference);v1=(Integer);v2=(Conflicted);v4=(Reference);v10=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 164
    .local v2, e:Ljava/lang/Object;,"TE;"
    #v2=(Reference);
    if-lez v1, :cond_5

    .line 165
    invoke-interface {p0, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    #v10=(Integer);
    if-nez v10, :cond_4

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    :cond_4
    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v10

    #v10=(Reference);
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object v0, v2

    .line 170
    .restart local v0       #current:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_2

    .line 173
    .end local v0           #current:Ljava/lang/Object;,"TE;"
    :cond_5
    #v1=(Integer);v10=(Boolean);
    move-object v0, v2

    .line 174
    .restart local v0       #current:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_2

    .line 177
    .end local v0           #current:Ljava/lang/Object;,"TE;"
    .end local v2           #e:Ljava/lang/Object;,"TE;"
    :cond_6
    #v1=(Integer);v2=(Conflicted);
    if-lez v1, :cond_7

    .line 178
    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v10

    #v10=(Reference);
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    #v10=(Conflicted);
    move-object v3, v9

    .line 180
    #v3=(Reference);
    goto :goto_0

    .line 182
    .end local v1           #currentCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #sortedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    :cond_8
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v9=(Uninit);v10=(Boolean);
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v7

    .line 183
    .local v7, multiset:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    #v7=(Reference);
    invoke-static {v7, p1}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 184
    invoke-virtual {v7}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    #v3=(Reference);
    goto :goto_0
.end method

.method public static sortedUnique(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    .line 71
    .local v0, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 72
    return-object v0
.end method
