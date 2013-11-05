.class Lcom/google/common/collect/Lists$AbstractListWrapper;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 998
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1001
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1017
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 1013
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1021
    .local p0, this:Lcom/google/common/collect/Lists$AbstractListWrapper;,"Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
