.class Lcom/google/common/collect/Tables$TransposeTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables$TransposeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransposeTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransposeTable;)V
    .locals 2
    .parameter

    .prologue
    .line 281
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    .line 282
    iget-object v0, p1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Tables$TransposeTable;->access$000()Lcom/google/common/base/Function;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 283
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 304
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 305
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 306
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    #v1=(Reference);
    iget-object v1, v1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 309
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    const/4 v1, 0x0

    .line 286
    #v1=(Null);
    if-ne p1, p0, :cond_1

    .line 287
    const/4 v1, 0x1

    .line 296
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 289
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);v3=(Uninit);
    instance-of v2, p1, Ljava/util/Set;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 292
    #v0=(Reference);
    check-cast v0, Ljava/util/Set;

    .line 293
    .local v0, os:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->size()I

    move-result v3

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 296
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 300
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 313
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 314
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 315
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    #v1=(Reference);
    iget-object v1, v1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 318
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method
