.class final Lcom/google/common/collect/Multisets$1;
.super Lcom/google/common/collect/AbstractMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$multiset1:Lcom/google/common/collect/Multiset;

.field final synthetic val$multiset2:Lcom/google/common/collect/Multiset;


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/google/common/collect/Multisets$1;->val$multiset1:Lcom/google/common/collect/Multiset;

    #v1=(Reference);
    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 502
    .local v0, count1:I
    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/Multisets$1;->val$multiset2:Lcom/google/common/collect/Multiset;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1;->val$multiset1:Lcom/google/common/collect/Multiset;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$1;->val$multiset2:Lcom/google/common/collect/Multiset;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$1;->elementSet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v1, p0, Lcom/google/common/collect/Multisets$1;->val$multiset1:Lcom/google/common/collect/Multiset;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 514
    .local v0, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/Multisets$1$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$1$1;-><init>(Lcom/google/common/collect/Multisets$1;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method
