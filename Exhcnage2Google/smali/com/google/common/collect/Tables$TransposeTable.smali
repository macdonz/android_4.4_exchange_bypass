.class Lcom/google/common/collect/Tables$TransposeTable;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposeTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final TRANSPOSE_CELL:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<***>;",
            "Lcom/google/common/collect/Table$Cell",
            "<***>;>;"
        }
    .end annotation
.end field


# instance fields
.field cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Tables$TransposeTable",
            "<TC;TR;TV;>.CellSet;"
        }
    .end annotation
.end field

.field final original:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/Tables$TransposeTable$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TC;TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    .line 274
    .local v0, result:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    .end local v0           #result:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;-><init>(Lcom/google/common/collect/Tables$TransposeTable;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    :cond_0
    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

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
    .line 172
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 241
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    if-ne p1, p0, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 248
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 244
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    instance-of v1, p1, Lcom/google/common/collect/Table;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 245
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Table;

    .line 246
    .local v0, other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .line 248
    .end local v0           #other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
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
    .line 192
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 252
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 197
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 212
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 232
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
