.class Lcom/google/common/collect/Iterators$MergingIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1291
    .local p0, this:Lcom/google/common/collect/Iterators$MergingIterator;,"Lcom/google/common/collect/Iterators$MergingIterator<TT;>;"
    .local p1, iterators:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/util/Iterator<+TT;>;>;"
    .local p2, itemComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1292
    #p0=(Reference);
    iput-object p2, p0, Lcom/google/common/collect/Iterators$MergingIterator;->comparator:Ljava/util/Comparator;

    .line 1296
    new-instance v0, Lcom/google/common/collect/Iterators$MergingIterator$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$MergingIterator$1;-><init>(Lcom/google/common/collect/Iterators$MergingIterator;)V

    .line 1304
    .local v0, heapComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/google/common/collect/PeekingIterator<TT;>;>;"
    #v0=(Reference);
    new-instance v3, Ljava/util/PriorityQueue;

    #v3=(UninitRef);
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-direct {v3, v4, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    .line 1306
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/util/Iterator;

    .line 1307
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1308
    iget-object v3, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    #v3=(Reference);
    invoke-static {v2}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1311
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    :cond_1
    #v2=(Conflicted);v3=(Boolean);v4=(Conflicted);
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1315
    .local p0, this:Lcom/google/common/collect/Iterators$MergingIterator;,"Lcom/google/common/collect/Iterators$MergingIterator<TT;>;"
    iget-object v2, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$MergingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    .line 1326
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    .line 1319
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);
    iget-object v2, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/PeekingIterator;

    .line 1320
    .local v1, nextIter:Lcom/google/common/collect/PeekingIterator;,"Lcom/google/common/collect/PeekingIterator<TT;>;"
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1322
    .local v0, next:Ljava/lang/Object;,"TT;"
    #v0=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    #v2=(Reference);
    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
