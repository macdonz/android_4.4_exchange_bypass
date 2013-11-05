.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSetMultimap$Builder;,
        Lcom/google/common/collect/ImmutableSetMultimap$SortedKeyBuilderMultimap;,
        Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private final transient emptySet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TV;>;"
        }
    .end annotation
.end field

.field private transient entries:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V
    .locals 1
    .parameter
    .end parameter
    .parameter "size"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;I",
            "Ljava/util/Comparator",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TK;Lcom/google/common/collect/ImmutableSet<TV;>;>;"
    .local p3, valueComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 344
    #p0=(Reference);
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 346
    return-void

    .line 344
    :cond_0
    #v0=(Uninit);
    invoke-static {p3}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 14
    .parameter "stream"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 442
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 444
    .local v6, keyCount:I
    #v6=(Integer);
    if-gez v6, :cond_0

    .line 445
    new-instance v11, Ljava/io/InvalidObjectException;

    #v11=(UninitRef);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "Invalid key count "

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #v11=(Reference);
    throw v11

    .line 447
    :cond_0
    #v11=(Uninit);v12=(Uninit);v13=(Uninit);
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 449
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    #v1=(Reference);
    const/4 v8, 0x0

    .line 451
    .local v8, tmpSize:I
    #v8=(Null);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v0=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    if-ge v3, v6, :cond_4

    .line 452
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 453
    .local v5, key:Ljava/lang/Object;
    #v5=(Reference);
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    .line 454
    .local v9, valueCount:I
    #v9=(Integer);
    if-gtz v9, :cond_1

    .line 455
    new-instance v11, Ljava/io/InvalidObjectException;

    #v11=(UninitRef);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "Invalid value count "

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #v11=(Reference);
    throw v11

    .line 458
    :cond_1
    #v11=(Conflicted);v12=(Conflicted);v13=(Uninit);
    new-array v0, v9, [Ljava/lang/Object;

    .line 459
    .local v0, array:[Ljava/lang/Object;
    #v0=(Reference);
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    #v4=(Integer);
    if-ge v4, v9, :cond_2

    .line 460
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    #v11=(Reference);
    aput-object v11, v0, v4

    .line 459
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 462
    :cond_2
    #v11=(Conflicted);
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v10

    .line 463
    .local v10, valueSet:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    #v10=(Reference);
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v11

    #v11=(Integer);
    array-length v12, v0

    #v12=(Integer);
    if-eq v11, v12, :cond_3

    .line 464
    new-instance v11, Ljava/io/InvalidObjectException;

    #v11=(UninitRef);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "Duplicate key-value pairs exist for key "

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #v11=(Reference);
    throw v11

    .line 467
    :cond_3
    #v11=(Integer);v12=(Integer);v13=(Uninit);
    invoke-virtual {v1, v5, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 468
    add-int/2addr v8, v9

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .end local v0           #array:[Ljava/lang/Object;
    .end local v4           #j:I
    .end local v5           #key:Ljava/lang/Object;
    .end local v9           #valueCount:I
    .end local v10           #valueSet:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    :cond_4
    :try_start_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 479
    .local v7, tmpMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    #v7=(Reference);
    sget-object v11, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    #v11=(Reference);
    invoke-virtual {v11, p0, v7}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    sget-object v11, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v11, p0, v8}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 481
    return-void

    .line 474
    .end local v7           #tmpMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    :catch_0
    #v7=(Uninit);v11=(Conflicted);
    move-exception v2

    .line 475
    .local v2, e:Ljava/lang/IllegalArgumentException;
    #v2=(Reference);
    new-instance v11, Ljava/io/InvalidObjectException;

    #v11=(UninitRef);
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    #v12=(Reference);
    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #v11=(Reference);
    invoke-virtual {v11, v2}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    check-cast v11, Ljava/io/InvalidObjectException;

    throw v11
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 436
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 437
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public entries()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    .line 424
    .local v0, result:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #result:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 359
    .local v0, set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TV;>;"
    if-eqz v0, :cond_0

    .line 364
    .end local v0           #set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TV;>;"
    :goto_0
    return-object v0

    .line 361
    .restart local v0       #set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TV;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSortedSet;

    if-eqz v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSortedSet;

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
