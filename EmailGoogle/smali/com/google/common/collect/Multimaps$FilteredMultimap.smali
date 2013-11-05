.class Lcom/google/common/collect/Multimaps$FilteredMultimap;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredMultimap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;,
        Lcom/google/common/collect/Multimaps$FilteredMultimap$AsMap;,
        Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;,
        Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final NOT_EMPTY:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Collection",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2527
    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->NOT_EMPTY:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2524
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap:Ljava/util/Map;

    #v0=(Reference);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2383
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 2384
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2325
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 2311
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 2315
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2535
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    new-instance v2, Lcom/google/common/collect/Multimaps$FilteredMultimap$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$2;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V

    .line 2541
    .local v2, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<TK;Ljava/util/Collection<TV;>;Ljava/util/Collection<TV;>;>;"
    #v2=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v1

    .line 2545
    .local v1, transformed:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    #v1=(Reference);
    sget-object v3, Lcom/google/common/collect/Multimaps$FilteredMultimap;->NOT_EMPTY:Lcom/google/common/base/Predicate;

    invoke-static {v1, v3}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    .line 2549
    .local v0, filtered:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    #v0=(Reference);
    new-instance v3, Lcom/google/common/collect/Multimaps$FilteredMultimap$AsMap;

    #v3=(UninitRef);
    invoke-direct {v3, p0, v0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$AsMap;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;Ljava/util/Map;)V

    #v3=(Reference);
    return-object v3
.end method

.method public entries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2490
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries:Ljava/util/Collection;

    #v0=(Reference);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries:Ljava/util/Collection;

    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries:Ljava/util/Collection;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2387
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 2388
    const/4 v1, 0x1

    .line 2394
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 2390
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    instance-of v1, p1, Lcom/google/common/collect/Multimap;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2391
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 2392
    .local v0, that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .line 2394
    .end local v0           #that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/common/base/Predicate",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2416
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .local p2, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TV;>;"
    instance-of v0, p1, Ljava/util/Set;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 2417
    check-cast p1, Ljava/util/Set;

    .end local p1           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-static {p1, p2}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    .line 2419
    :goto_0
    #v0=(Reference);
    return-object v0

    .restart local p1       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    #v0=(Boolean);
    invoke-static {p1, p2}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2424
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;Ljava/lang/Object;)V

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2398
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2307
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2428
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2334
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2363
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2364
    .local v1, removed:Ljava/util/List;,"Ljava/util/List<TV;>;"
    #v1=(Reference);
    iget-object v4, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v4=(Reference);
    invoke-interface {v4}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/util/Collection;

    .line 2365
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v3, :cond_1

    .line 2366
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2367
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_0
    :goto_0
    #v0=(Reference);v2=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 2368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2369
    .local v2, value:Ljava/lang/Object;,"TV;"
    #v2=(Reference);
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2370
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2371
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2375
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    iget-object v4, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v4=(Reference);
    instance-of v4, v4, Lcom/google/common/collect/SetMultimap;

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 2376
    invoke-static {v1}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 2378
    :goto_1
    return-object v4

    :cond_2
    #v4=(Boolean);
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    #v4=(Reference);
    goto :goto_1
.end method

.method removeEntriesIf(Lcom/google/common/base/Predicate;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 2499
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, removalPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v8, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    #v8=(Reference);
    invoke-interface {v8}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2500
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    #v5=(Reference);
    const/4 v0, 0x0

    .line 2501
    .local v0, changed:Z
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_2

    .line 2503
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/util/Map$Entry;

    .line 2504
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2505
    .local v6, key:Ljava/lang/Object;,"TK;"
    #v6=(Reference);
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Collection;

    .line 2506
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    new-instance v7, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;

    #v7=(UninitRef);
    invoke-direct {v7, p0, v6}, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;Ljava/lang/Object;)V

    .line 2507
    .local v7, valuePredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TV;>;"
    #v7=(Reference);
    invoke-virtual {p0, v1, v7}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v3

    .line 2508
    .local v3, filteredCollection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    #v3=(Reference);
    invoke-static {v6, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 2509
    .local v4, filteredEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    #v4=(Reference);
    invoke-interface {p1, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2510
    const/4 v0, 0x1

    .line 2511
    #v0=(One);
    invoke-static {v1, v7}, Lcom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2512
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2514
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 2518
    .end local v1           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v3           #filteredCollection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .end local v4           #filteredEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v6           #key:Ljava/lang/Object;,"TK;"
    .end local v7           #valuePredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<TV;>;"
    :cond_2
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return v0
.end method

.method satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2321
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    #v0=(Reference);
    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2303
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2402
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2434
    .local p0, this:Lcom/google/common/collect/Multimaps$FilteredMultimap;,"Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values:Ljava/util/Collection;

    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
