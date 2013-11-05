.class final Lcom/google/common/collect/SingletonImmutableTable;
.super Lcom/google/common/collect/ImmutableTable;
.source "SingletonImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final singleColumnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final singleRowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# virtual methods
.method public cellSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 72
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SingletonImmutableTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/SingletonImmutableTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 76
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 80
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 120
    #v2=(One);
    if-ne p1, p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 122
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v4=(Uninit);v5=(Uninit);
    instance-of v4, p1, Lcom/google/common/collect/Table;

    #v4=(Boolean);
    if-eqz v4, :cond_3

    move-object v0, p1

    .line 123
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Table;

    .line 124
    .local v0, that:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v4

    #v4=(Integer);
    if-ne v4, v2, :cond_3

    .line 125
    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 126
    .local v1, thatCell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v4, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    #v4=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    #v4=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    #v2=(Null);
    goto :goto_0

    .end local v0           #that:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    .end local v1           #thatCell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :cond_3
    #v0=(Conflicted);v1=(Uninit);v2=(One);v4=(Integer);v5=(Uninit);
    move v2, v3

    .line 131
    #v2=(Null);
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/SingletonImmutableTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 135
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 92
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 112
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    .local p0, this:Lcom/google/common/collect/SingletonImmutableTable;,"Lcom/google/common/collect/SingletonImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const/16 v1, 0x7b

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
