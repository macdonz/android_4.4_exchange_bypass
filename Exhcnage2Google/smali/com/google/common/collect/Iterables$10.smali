.class final Lcom/google/common/collect/Iterables$10;
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
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$numberToSkip:I


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v1, p0, Lcom/google/common/collect/Iterables$10;->val$iterable:Ljava/lang/Iterable;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 894
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    #v0=(Reference);
    iget v1, p0, Lcom/google/common/collect/Iterables$10;->val$numberToSkip:I

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->skip(Ljava/util/Iterator;I)I

    .line 901
    new-instance v1, Lcom/google/common/collect/Iterables$10$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Iterables$10$1;-><init>(Lcom/google/common/collect/Iterables$10;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method
