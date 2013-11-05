.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$EntrySet;,
        Lcom/google/common/collect/Maps$Values;,
        Lcom/google/common/collect/Maps$KeySet;,
        Lcom/google/common/collect/Maps$ImprovedAbstractMap;,
        Lcom/google/common/collect/Maps$FilteredEntryMap;,
        Lcom/google/common/collect/Maps$FilteredKeyMap;,
        Lcom/google/common/collect/Maps$FilteredEntrySortedMap;,
        Lcom/google/common/collect/Maps$AbstractFilteredMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesMap;,
        Lcom/google/common/collect/Maps$EntryTransformer;,
        Lcom/google/common/collect/Maps$UnmodifiableBiMap;,
        Lcom/google/common/collect/Maps$UnmodifiableEntrySet;,
        Lcom/google/common/collect/Maps$UnmodifiableEntries;,
        Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,
        Lcom/google/common/collect/Maps$ValueDifferenceImpl;,
        Lcom/google/common/collect/Maps$MapDifferenceImpl;
    }
.end annotation


# static fields
.field static final STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1982
    sget-object v0, Lcom/google/common/collect/Collections2;->STANDARD_JOINER:Lcom/google/common/base/Joiner;

    #v0=(Reference);
    const-string v1, "="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static capacity(I)I
    .locals 1
    .parameter "expectedSize"

    .prologue
    .line 112
    const/4 v0, 0x3

    #v0=(PosByte);
    if-ge p0, v0, :cond_1

    .line 113
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 114
    add-int/lit8 v0, p0, 0x1

    .line 119
    :goto_1
    #v0=(Integer);
    return v0

    .line 113
    :cond_0
    #v0=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 116
    :cond_1
    #v0=(PosByte);
    const/high16 v0, 0x4000

    #v0=(Integer);
    if-ge p0, v0, :cond_2

    .line 117
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_1

    .line 119
    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 2024
    const/4 v0, 0x0

    .line 2026
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p0, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, entryPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1498
    check-cast p0, Ljava/util/SortedMap;

    .end local p0           #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1501
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .line 1500
    .restart local p0       #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    instance-of v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .end local p0           #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .restart local p0       #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_1
    #v0=(Boolean);
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v1=(UninitRef);
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    #v1=(Reference);
    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1541
    .local p0, unfiltered:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p1, entryPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    instance-of v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .end local p0           #unfiltered:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .restart local p0       #unfiltered:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    #v1=(UninitRef);
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    #v1=(Reference);
    move-object v0, v1

    goto :goto_0
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$AbstractFilteredMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1553
    .local p0, map:Lcom/google/common/collect/Maps$AbstractFilteredMap;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, entryPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    #v1=(Reference);
    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 1555
    .local v0, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    #v2=(Reference);
    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    #v1=(Reference);
    return-object v1
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$FilteredEntrySortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p0, map:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;,"Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, entryPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    #v1=(Reference);
    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 1701
    .local v0, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    #v1=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    #v1=(Reference);
    return-object v1
.end method

.method public static filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1407
    .local p0, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, valuePredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TV;>;"
    instance-of v1, p0, Ljava/util/SortedMap;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1408
    check-cast p0, Ljava/util/SortedMap;

    .end local p0           #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v1

    .line 1418
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    return-object v1

    .line 1410
    .restart local p0       #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v0, Lcom/google/common/collect/Maps$6;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/google/common/collect/Maps$6;-><init>(Lcom/google/common/base/Predicate;)V

    .line 1418
    .local v0, entryPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1455
    .local p0, unfiltered:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p1, valuePredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    new-instance v0, Lcom/google/common/collect/Maps$7;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/google/common/collect/Maps$7;-><init>(Lcom/google/common/base/Predicate;)V

    .line 1463
    .local v0, entryPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2
    .parameter "expectedSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    #v1=(Integer);
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #v0=(Reference);
    return-object v0
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 2044
    const/4 v0, 0x0

    .line 2046
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2003
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2005
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    .local v0, e:Ljava/lang/ClassCastException;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1991
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<*TV;>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1993
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    return-object v1

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    .local v0, e:Ljava/lang/ClassCastException;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2074
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    const/16 v2, 0x7b

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2077
    const/16 v1, 0x7d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p0, fromMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV1;>;"
    .local p1, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1062
    check-cast p0, Ljava/util/SortedMap;

    .end local p0           #fromMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV1;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1064
    :goto_0
    #v0=(Reference);
    return-object v0

    .restart local p0       #fromMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV1;>;"
    :cond_0
    #v0=(Boolean);
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, fromMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, fromMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV1;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v0, Lcom/google/common/collect/Maps$2;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/google/common/collect/Maps$2;-><init>(Lcom/google/common/base/Function;)V

    .line 951
    .local v0, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public static transformValues(Ljava/util/SortedMap;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, fromMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v0, Lcom/google/common/collect/Maps$3;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/google/common/collect/Maps$3;-><init>(Lcom/google/common/base/Function;)V

    .line 1004
    .local v0, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v0, Lcom/google/common/collect/Maps$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$1;-><init>(Ljava/util/Map$Entry;)V

    #v0=(Reference);
    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;

    #v0=(UninitRef);
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    #v0=(Reference);
    return-object v0
.end method
