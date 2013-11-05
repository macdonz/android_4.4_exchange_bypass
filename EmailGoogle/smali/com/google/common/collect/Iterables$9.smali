.class final Lcom/google/common/collect/Iterables$9;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$numberToSkip:I


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 882
    iget v0, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    #v0=(Reference);v2=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Integer);v2=(Uninit);
    iget-object v0, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    #v0=(Reference);
    iget v1, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    iget-object v2, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
