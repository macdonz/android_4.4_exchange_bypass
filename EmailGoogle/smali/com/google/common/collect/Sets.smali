.class public final Lcom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$TransformedSet;,
        Lcom/google/common/collect/Sets$InvertibleFunction;,
        Lcom/google/common/collect/Sets$PowerSet;,
        Lcom/google/common/collect/Sets$CartesianSet;,
        Lcom/google/common/collect/Sets$FilteredSortedSet;,
        Lcom/google/common/collect/Sets$FilteredSet;,
        Lcom/google/common/collect/Sets$SetView;,
        Lcom/google/common/collect/Sets$SetFromMap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .end parameter
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 1263
    #v3=(Null);
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1277
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v3

    .line 1266
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v4=(Uninit);v5=(Uninit);
    instance-of v4, p1, Ljava/util/Set;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    move-object v1, p1

    .line 1267
    #v1=(Reference);
    check-cast v1, Ljava/util/Set;

    .line 1270
    .local v1, o:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    #v4=(Integer);
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    #v5=(Integer);
    if-ne v4, v5, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    :goto_1
    #v2=(Boolean);v4=(Integer);
    move v3, v2

    #v3=(Boolean);
    goto :goto_0

    :cond_2
    #v2=(One);v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_1

    .line 1271
    :catch_0
    #v2=(One);v5=(Conflicted);
    move-exception v0

    .line 1272
    .local v0, ignored:Ljava/lang/NullPointerException;
    #v0=(Reference);
    goto :goto_0

    .line 1273
    .end local v0           #ignored:Ljava/lang/NullPointerException;
    :catch_1
    #v0=(Uninit);
    move-exception v0

    .line 1274
    .local v0, ignored:Ljava/lang/ClassCastException;
    #v0=(Reference);
    goto :goto_0
.end method

.method public static filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, unfiltered:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v2, p0, Ljava/util/SortedSet;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 751
    check-cast p0, Ljava/util/SortedSet;

    .end local p0           #unfiltered:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object v2

    .line 763
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    return-object v2

    .line 753
    .restart local p0       #unfiltered:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    instance-of v2, p0, Lcom/google/common/collect/Sets$FilteredSet;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 756
    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Sets$FilteredSet;

    .line 757
    .local v1, filtered:Lcom/google/common/collect/Sets$FilteredSet;,"Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 759
    .local v0, combinedPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TE;>;"
    #v0=(Reference);
    new-instance v3, Lcom/google/common/collect/Sets$FilteredSet;

    #v3=(UninitRef);
    iget-object v2, v1, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    check-cast v2, Ljava/util/Set;

    invoke-direct {v3, v2, v0}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    #v3=(Reference);
    move-object v2, v3

    goto :goto_0

    .line 763
    .end local v0           #combinedPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TE;>;"
    .end local v1           #filtered:Lcom/google/common/collect/Sets$FilteredSet;,"Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    new-instance v4, Lcom/google/common/collect/Sets$FilteredSet;

    #v4=(UninitRef);
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/google/common/base/Predicate;

    invoke-direct {v4, v2, v3}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    #v4=(Reference);
    move-object v2, v4

    goto :goto_0
.end method

.method public static filter(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, unfiltered:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v2, p0, Lcom/google/common/collect/Sets$FilteredSet;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v1, p0

    .line 818
    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Sets$FilteredSet;

    .line 819
    .local v1, filtered:Lcom/google/common/collect/Sets$FilteredSet;,"Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 821
    .local v0, combinedPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TE;>;"
    #v0=(Reference);
    new-instance v3, Lcom/google/common/collect/Sets$FilteredSortedSet;

    #v3=(UninitRef);
    iget-object v2, v1, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    check-cast v2, Ljava/util/SortedSet;

    invoke-direct {v3, v2, v0}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    #v3=(Reference);
    move-object v2, v3

    .line 825
    .end local v0           #combinedPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TE;>;"
    .end local v1           #filtered:Lcom/google/common/collect/Sets$FilteredSet;,"Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    return-object v2

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    new-instance v4, Lcom/google/common/collect/Sets$FilteredSortedSet;

    #v4=(UninitRef);
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/google/common/base/Predicate;

    invoke-direct {v4, v2, v3}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    #v4=(Reference);
    move-object v2, v4

    goto :goto_0
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v0, 0x0

    .line 1253
    .local v0, hashCode:I
    #v0=(Null);
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Integer);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    .local v2, o:Ljava/lang/Object;
    #v2=(Reference);
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    #v3=(Integer);
    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    #v3=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 1256
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    #v2=(Conflicted);v3=(Boolean);
    return v0
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/google/common/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set2:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const-string v1, "set1"

    #v1=(Reference);
    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v1, "set2"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 647
    .local v0, inSet2:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/lang/Object;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/Sets$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0, p1}, Lcom/google/common/collect/Sets$2;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;Ljava/util/Set;)V

    #v1=(Reference);
    return-object v1
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 231
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 232
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_0
    #v1=(Boolean);
    return-object v0
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 2
    .parameter "expectedSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    #v1=(Integer);
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #v0=(Reference);
    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/util/LinkedHashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v3, p0, Ljava/util/Collection;

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 284
    new-instance v2, Ljava/util/LinkedHashSet;

    #v2=(UninitRef);
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 290
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    return-object v2

    .line 286
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 287
    .local v2, set:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    #v2=(Reference);
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, element:Ljava/lang/Object;,"TE;"
    #v0=(Reference);
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/TreeSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    new-instance v1, Ljava/util/TreeSet;

    #v1=(UninitRef);
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #v1=(Reference);
    return-object v1
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1388
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    .line 1389
    .local v0, changed:Z
    #v0=(Null);
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    .line 1390
    .local v2, o:Ljava/lang/Object;
    #v2=(Reference);
    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 1392
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    #v2=(Conflicted);
    return v0
.end method

.method static transform(Ljava/util/Set;Lcom/google/common/collect/Sets$InvertibleFunction;)Ljava/util/Set;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TA;>;",
            "Lcom/google/common/collect/Sets$InvertibleFunction",
            "<TA;TB;>;)",
            "Ljava/util/Set",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 1294
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TA;>;"
    .local p1, bijection:Lcom/google/common/collect/Sets$InvertibleFunction;,"Lcom/google/common/collect/Sets$InvertibleFunction<TA;TB;>;"
    new-instance v2, Lcom/google/common/collect/Sets$TransformedSet;

    #v2=(UninitRef);
    const-string v0, "set"

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "bijection"

    #v1=(Reference);
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/Sets$TransformedSet;-><init>(Ljava/util/Set;Lcom/google/common/collect/Sets$InvertibleFunction;)V

    #v2=(Reference);
    return-object v2
.end method
