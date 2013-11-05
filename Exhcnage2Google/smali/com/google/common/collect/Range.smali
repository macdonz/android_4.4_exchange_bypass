.class public final Lcom/google/common/collect/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final lowerBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field

.field final upperBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    .local p1, lowerBound:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<TC;>;"
    .local p2, upperBound:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<TC;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    #p0=(Reference);
    invoke-virtual {p1, p2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Invalid range: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 122
    :cond_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    iput-object p1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 123
    iput-object p2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 124
    return-void
.end method

.method private static cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    check-cast p0, Ljava/util/SortedSet;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 505
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private static toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<*>;",
            "Lcom/google/common/collect/Cut",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, lowerBound:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<*>;"
    .local p1, upperBound:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const/16 v1, 0x10

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 490
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    .line 491
    const/16 v1, 0x2025

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    .local p1, input:Ljava/lang/Comparable;,"TC;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->apply(Ljava/lang/Comparable;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;
    .locals 5
    .parameter
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/ContiguousSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    .local p1, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object v1, p0

    .line 401
    .local v1, effectiveRange:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    :try_start_0
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->minValue()Ljava/lang/Comparable;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/google/common/collect/Ranges;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 405
    :cond_0
    #v3=(Conflicted);
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 406
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/google/common/collect/Ranges;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :cond_1
    #v3=(Conflicted);
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Lcom/google/common/collect/Cut;->leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v4=(Reference);
    invoke-virtual {v4, p1}, Lcom/google/common/collect/Cut;->greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_3

    :cond_2
    #v4=(Conflicted);
    const/4 v2, 0x1

    .line 419
    .local v2, empty:Z
    :goto_0
    #v2=(Boolean);
    if-eqz v2, :cond_4

    new-instance v3, Lcom/google/common/collect/EmptyContiguousSet;

    #v3=(UninitRef);
    invoke-direct {v3, p1}, Lcom/google/common/collect/EmptyContiguousSet;-><init>(Lcom/google/common/collect/DiscreteDomain;)V

    :goto_1
    #v3=(Reference);
    return-object v3

    .line 409
    .end local v2           #empty:Z
    :catch_0
    #v2=(Uninit);v3=(Conflicted);v4=(Uninit);
    move-exception v0

    .line 410
    .local v0, e:Ljava/util/NoSuchElementException;
    #v0=(Reference);
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #v3=(Reference);
    throw v3

    .line 414
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_3
    #v0=(Uninit);v3=(Integer);v4=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0

    .line 419
    .restart local v2       #empty:Z
    :cond_4
    #v2=(Boolean);v4=(Conflicted);
    new-instance v3, Lcom/google/common/collect/RegularContiguousSet;

    #v3=(UninitRef);
    invoke-direct {v3, v1, p1}, Lcom/google/common/collect/RegularContiguousSet;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)V

    #v3=(Reference);
    goto :goto_1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    .local p1, value:Ljava/lang/Comparable;,"TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TC;>;"
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    .line 222
    #v5=(One);
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 240
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Boolean);
    return v5

    .line 227
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(One);
    instance-of v4, p1, Ljava/util/SortedSet;

    if-eqz v4, :cond_4

    .line 228
    invoke-static {p1}, Lcom/google/common/collect/Range;->cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v2

    .line 229
    .local v2, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TC;>;"
    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 230
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    #v0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    if-nez v0, :cond_4

    .line 231
    :cond_2
    invoke-interface {v2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/Comparable;

    invoke-virtual {p0, v4}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/Comparable;

    invoke-virtual {p0, v4}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    move v5, v4

    #v5=(Boolean);
    goto :goto_0

    :cond_3
    #v5=(One);
    move v4, v6

    #v4=(Null);
    goto :goto_1

    .line 235
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .end local v2           #set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TC;>;"
    :cond_4
    #v0=(Conflicted);v2=(Conflicted);v4=(Boolean);
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    #v1=(Reference);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/Comparable;

    .line 236
    .local v3, value:Ljava/lang/Comparable;,"TC;"
    invoke-virtual {p0, v3}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_5

    move v5, v6

    .line 237
    #v5=(Null);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    const/4 v1, 0x0

    .line 467
    #v1=(Null);
    instance-of v2, p1, Lcom/google/common/collect/Range;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 468
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Range;

    .line 469
    .local v0, other:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v2=(Reference);
    iget-object v3, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v2=(Reference);
    iget-object v3, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 472
    .end local v0           #other:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<*>;"
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);
    return v1
.end method

.method public hasLowerBound()Z
    .locals 2

    .prologue
    .line 130
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    #v1=(Reference);
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public hasUpperBound()Z
    .locals 2

    .prologue
    .line 159
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    #v1=(Reference);
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 477
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    .local p1, other:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    #v2=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v3=(Reference);
    iget-object v4, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Cut;

    .line 315
    .local v0, newLower:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v4, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Cut;

    .line 316
    .local v1, newUpper:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {v0, v1}, Lcom/google/common/collect/Ranges;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 194
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    .local p0, this:Lcom/google/common/collect/Range;,"Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
