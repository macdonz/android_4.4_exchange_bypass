.class public final Lcom/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Iterables$IterableWithToString;,
        Lcom/google/common/collect/Iterables$ConsumingQueueIterator;,
        Lcom/google/common/collect/Iterables$UnmodifiableIterable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$100(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->iterators(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/google/common/collect/Iterables;->toIterator()Lcom/google/common/base/Function;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, addTo:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, elementsToAdd:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    instance-of v1, p1, Ljava/util/Collection;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 329
    invoke-static {p1}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 330
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    #v0=(Reference);
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 332
    .end local v0           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    :goto_0
    #v0=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    #v1=(Reference);
    invoke-static {p0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0
.end method

.method public static all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->all(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1049
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1050
    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 1052
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    :cond_1
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private static iterators(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, iterables:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    .local v0, iterableIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/lang/Iterable<+TT;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/Iterables$3;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/google/common/collect/Iterables$3;-><init>(Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method public static removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 184
    check-cast p0, Ljava/util/List;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Predicate;

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z

    move-result v0

    .line 187
    :goto_0
    #v0=(Boolean);
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method private static removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v4, 0x1

    .line 194
    #v4=(One);
    const/4 v2, 0x0

    .line 195
    .local v2, from:I
    #v2=(Null);
    const/4 v3, 0x0

    .line 197
    .local v3, to:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v3=(Integer);v5=(Conflicted);
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    #v5=(Integer);
    if-ge v2, v5, :cond_3

    .line 198
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, element:Ljava/lang/Object;,"TT;"
    #v1=(Reference);
    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 200
    if-le v2, v3, :cond_0

    .line 202
    :try_start_0
    invoke-interface {p0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 197
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    #v0=(Reference);
    invoke-static {p0, p1, v3, v2}, Lcom/google/common/collect/Iterables;->slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V

    .line 214
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .end local v1           #element:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Boolean);v5=(Conflicted);
    return v4

    .line 213
    :cond_3
    #v0=(Uninit);v4=(One);v5=(Integer);
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 214
    if-ne v2, v3, :cond_2

    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method private static slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V
    .locals 2
    .parameter
    .parameter
    .parameter "to"
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v0, v1, -0x1

    .local v0, n:I
    :goto_0
    #v0=(Integer);
    if-le v0, p3, :cond_1

    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 231
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 235
    :cond_1
    #v1=(Integer);
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_2

    .line 236
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 238
    :cond_2
    return-void
.end method

.method private static toIterator()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Lcom/google/common/collect/Iterables$15;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/Iterables$15;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, fromIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TF;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lcom/google/common/collect/Iterables$8;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$8;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Function;)V

    #v0=(Reference);
    return-object v0
.end method
