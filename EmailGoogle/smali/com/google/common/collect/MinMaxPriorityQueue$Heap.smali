.class Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Heap"
.end annotation


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<TE;>;"
        }
    .end annotation
.end field

.field otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method static synthetic access$400(Lcom/google/common/collect/MinMaxPriorityQueue$Heap;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->verifyIndex(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private getGrandparentIndex(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 737
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    return v0
.end method

.method private getLeftChildIndex(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 725
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getParentIndex(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 733
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    add-int/lit8 v0, p1, -0x1

    #v0=(Integer);
    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getRightChildIndex(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 729
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private verifyIndex(I)Z
    .locals 3
    .parameter "i"

    .prologue
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    const/4 v0, 0x0

    .line 705
    #v0=(Null);
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    #v0=(Boolean);
    return v0

    .line 709
    :cond_1
    #v0=(Null);
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 713
    :cond_2
    if-lez p1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 716
    :cond_3
    const/4 v1, 0x2

    #v1=(PosByte);
    if-le p1, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 719
    :cond_4
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method


# virtual methods
.method bubbleUp(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v0

    .line 539
    .local v0, crossOver:I
    #v0=(Integer);
    if-ne v0, p1, :cond_0

    .line 540
    move-object v1, p0

    .line 545
    .local v1, heap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_0
    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    .line 546
    return-void

    .line 542
    .end local v1           #heap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :cond_0
    #v1=(Uninit);
    move p1, v0

    .line 543
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .restart local v1       #heap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    #v1=(Reference);
    goto :goto_0
.end method

.method bubbleUpAlternatingLevels(ILjava/lang/Object;)I
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, x:Ljava/lang/Object;,"TE;"
    :goto_0
    const/4 v2, 0x2

    #v2=(PosByte);
    if-le p1, v2, :cond_0

    .line 554
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v1

    .line 555
    .local v1, grandParentIndex:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, e:Ljava/lang/Object;,"TE;"
    #v0=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v0, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    if-gtz v2, :cond_1

    .line 562
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #grandParentIndex:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p2, v2, p1

    .line 563
    return p1

    .line 559
    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    .restart local v1       #grandParentIndex:I
    :cond_1
    #v0=(Reference);v1=(Integer);v2=(Integer);
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v0, v2, p1

    .line 560
    move p1, v1

    .line 561
    goto :goto_0
.end method

.method compareElements(II)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 496
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-virtual {v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method crossOver(ILjava/lang/Object;)I
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinChild(I)I

    move-result v0

    .line 678
    .local v0, minChildIndex:I
    #v0=(Integer);
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    #v1=(Integer);
    if-gez v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v1=(Reference);
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 681
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aput-object p2, v1, v0

    .line 684
    .end local v0           #minChildIndex:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return v0

    .restart local v0       #minChildIndex:I
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method crossOverUp(ILjava/lang/Object;)I
    .locals 7
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, x:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x0

    .line 610
    #v2=(Null);
    if-nez p1, :cond_0

    .line 611
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object p2, v5, v2

    .line 638
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return v2

    .line 614
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v2

    .line 615
    .local v2, parentIndex:I
    #v2=(Integer);
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-virtual {v5, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 616
    .local v1, parentElement:Ljava/lang/Object;,"TE;"
    #v1=(Reference);
    if-eqz v2, :cond_1

    .line 621
    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 622
    .local v0, grandparentIndex:I
    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v4

    .line 623
    .local v4, uncleIndex:I
    #v4=(Integer);
    if-eq v4, v2, :cond_1

    invoke-direct {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v5

    #v5=(Integer);
    iget-object v6, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v6=(Reference);
    invoke-static {v6}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v6

    #v6=(Integer);
    if-lt v5, v6, :cond_1

    .line 625
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-virtual {v5, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v3

    .line 626
    .local v3, uncleElement:Ljava/lang/Object;,"TE;"
    #v3=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v5, v3, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    #v5=(Integer);
    if-gez v5, :cond_1

    .line 627
    move v2, v4

    .line 628
    move-object v1, v3

    .line 632
    .end local v0           #grandparentIndex:I
    .end local v3           #uncleElement:Ljava/lang/Object;,"TE;"
    .end local v4           #uncleIndex:I
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    #v5=(Reference);
    invoke-virtual {v5, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    #v5=(Integer);
    if-gez v5, :cond_2

    .line 633
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object v1, v5, p1

    .line 634
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object p2, v5, v2

    goto :goto_0

    .line 637
    :cond_2
    #v5=(Integer);
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object p2, v5, p1

    move v2, p1

    .line 638
    goto :goto_0
.end method

.method fillHoleAt(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 697
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinGrandChild(I)I

    move-result v0

    .local v0, minGrandchildIndex:I
    #v0=(Integer);
    if-lez v0, :cond_0

    .line 698
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v1=(Reference);
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 699
    move p1, v0

    goto :goto_0

    .line 701
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return p1
.end method

.method findMin(II)I
    .locals 4
    .parameter "index"
    .parameter "len"

    .prologue
    .line 572
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v3=(Reference);
    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    #v3=(Integer);
    if-lt p1, v3, :cond_1

    .line 573
    const/4 v2, -0x1

    .line 583
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);
    return v2

    .line 575
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    if-lez p1, :cond_3

    const/4 v3, 0x1

    :goto_0
    #v3=(Boolean);
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 576
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v3=(Reference);
    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    #v3=(Integer);
    sub-int/2addr v3, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v1, v3, p2

    .line 577
    .local v1, limit:I
    #v1=(Integer);
    move v2, p1

    .line 578
    .local v2, minIndex:I
    #v2=(Integer);
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_1
    #v0=(Integer);
    if-ge v0, v1, :cond_0

    .line 579
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v3

    if-gez v3, :cond_2

    .line 580
    move v2, v0

    .line 578
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #minIndex:I
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method

.method findMinChild(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 590
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v0

    return v0
.end method

.method findMinGrandChild(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 597
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    .line 598
    .local v0, leftChildIndex:I
    #v0=(Integer);
    if-gez v0, :cond_0

    .line 599
    const/4 v1, -0x1

    .line 601
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    return v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v1

    goto :goto_0
.end method

.method getCorrectLastElement(Ljava/lang/Object;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p1, actualLastElement:Ljava/lang/Object;,"TE;"
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v4=(Reference);
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    #v4=(Integer);
    invoke-direct {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v1

    .line 652
    .local v1, parentIndex:I
    #v1=(Integer);
    if-eqz v1, :cond_0

    .line 653
    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 654
    .local v0, grandparentIndex:I
    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v3

    .line 655
    .local v3, uncleIndex:I
    #v3=(Integer);
    if-eq v3, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    #v5=(Integer);
    if-lt v4, v5, :cond_0

    .line 657
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v4=(Reference);
    invoke-virtual {v4, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    .line 658
    .local v2, uncleElement:Ljava/lang/Object;,"TE;"
    #v2=(Reference);
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v2, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    #v4=(Integer);
    if-gez v4, :cond_0

    .line 659
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v4=(Reference);
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    aput-object p1, v4, v3

    .line 660
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v5=(Reference);
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    #v5=(Integer);
    aput-object v2, v4, v5

    .line 665
    .end local v0           #grandparentIndex:I
    .end local v2           #uncleElement:Ljava/lang/Object;,"TE;"
    .end local v3           #uncleIndex:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return v3

    :cond_0
    #v3=(Conflicted);v4=(Integer);
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v4=(Reference);
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    #v3=(Integer);
    goto :goto_0
.end method

.method tryCrossOverAndBubbleUp(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 5
    .parameter "removeIndex"
    .parameter "vacated"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,"Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p3, toTrickle:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x0

    .line 506
    #v2=(Null);
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOver(ILjava/lang/Object;)I

    move-result v0

    .line 507
    .local v0, crossOver:I
    #v0=(Integer);
    if-ne v0, p2, :cond_1

    .line 528
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    return-object v2

    .line 516
    :cond_1
    #v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);
    if-ge v0, p1, :cond_2

    .line 519
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 524
    .local v1, parent:Ljava/lang/Object;,"TE;"
    :goto_1
    #v1=(Reference);v4=(Conflicted);
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v3, v0, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    move-result v3

    #v3=(Integer);
    if-ge v3, p1, :cond_0

    .line 526
    new-instance v2, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    #v2=(UninitRef);
    invoke-direct {v2, p3, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #v2=(Reference);
    goto :goto_0

    .line 521
    .end local v1           #parent:Ljava/lang/Object;,"TE;"
    :cond_2
    #v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    #v3=(Reference);
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v3, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #parent:Ljava/lang/Object;,"TE;"
    #v1=(Reference);
    goto :goto_1
.end method
