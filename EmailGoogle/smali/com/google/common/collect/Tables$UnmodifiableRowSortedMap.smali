.class final Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;
.super Lcom/google/common/collect/Tables$UnmodifiableTable;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/RowSortedTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnmodifiableRowSortedMap"
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
        "Lcom/google/common/collect/Tables$UnmodifiableTable",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/RowSortedTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# virtual methods
.method protected delegate()Lcom/google/common/collect/RowSortedTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RowSortedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;,"Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/RowSortedTable;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Table;
    .locals 1

    .prologue
    .line 709
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;,"Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 709
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;,"Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 709
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;,"Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;,"Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Tables;->access$100()Lcom/google/common/base/Function;

    move-result-object v0

    .line 724
    .local v0, wrapper:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/util/Map<TC;TV;>;Ljava/util/Map<TC;TV;>;>;"
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/RowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/SortedMap;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method
