.class Lcom/google/common/collect/StandardTable;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$ColumnMap;,
        Lcom/google/common/collect/StandardTable$RowMap;,
        Lcom/google/common/collect/StandardTable$Values;,
        Lcom/google/common/collect/StandardTable$ColumnKeyIterator;,
        Lcom/google/common/collect/StandardTable$ColumnKeySet;,
        Lcom/google/common/collect/StandardTable$RowKeySet;,
        Lcom/google/common/collect/StandardTable$Column;,
        Lcom/google/common/collect/StandardTable$Row;,
        Lcom/google/common/collect/StandardTable$CellIterator;,
        Lcom/google/common/collect/StandardTable$CellSet;,
        Lcom/google/common/collect/StandardTable$TableSet;,
        Lcom/google/common/collect/StandardTable$TableCollection;
    }
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final backingMap:Ljava/util/Map;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient cellSet:Lcom/google/common/collect/StandardTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.CellSet;"
        }
    .end annotation
.end field

.field private transient columnKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field final factory:Lcom/google/common/base/Supplier;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient rowKeySet:Lcom/google/common/collect/StandardTable$RowKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.RowKeySet;"
        }
    .end annotation
.end field

.field private transient rowMap:Lcom/google/common/collect/StandardTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, backingMap:Ljava/util/Map;,"Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p2, factory:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<+Ljava/util/Map<TC;TV;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 71
    iput-object p2, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    .line 72
    return-void
.end method

.method static synthetic access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
    .parameter "columnKey"
    .parameter "value"

    .prologue
    .line 219
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private getOrCreate(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map;

    .line 163
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    check-cast v0, Ljava/util/Map;

    .line 165
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-object v0
.end method

.method static keyIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1166
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1167
    .local v0, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/StandardTable$1;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/google/common/collect/StandardTable$1;-><init>(Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method private removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    .local v2, output:Ljava/util/Map;,"Ljava/util/Map<TR;TV;>;"
    #v2=(Reference);
    iget-object v4, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;>;"
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, value:Ljava/lang/Object;,"TV;"
    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 214
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);
    return-object v2
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
    .parameter "columnKey"
    .parameter "value"

    .prologue
    .line 224
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method static valueIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1185
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1186
    .local v0, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/StandardTable$2;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/google/common/collect/StandardTable$2;-><init>(Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/StandardTable$CellSet;

    .line 275
    .local v0, result:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$CellSet;

    .end local v0           #result:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$CellSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/StandardTable$CellSet;

    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, columnKey:Ljava/lang/Object;,"TC;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    #v0=(Reference);
    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    .line 789
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TC;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeySet;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TC;>;"
    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeySet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
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
    .line 1013
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;

    .line 1014
    .local v0, result:Lcom/google/common/collect/StandardTable$ColumnMap;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnMap;

    .end local v0           #result:Lcom/google/common/collect/StandardTable$ColumnMap;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnMap;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;

    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v1, 0x0

    .line 78
    #v1=(Null);
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 81
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map;

    .line 82
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 4
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v2, 0x0

    .line 86
    #v2=(Null);
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 89
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);
    iget-object v3, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Map;

    .line 90
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 98
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 871
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 134
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-ne p1, p0, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 141
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 137
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    instance-of v1, p1, Lcom/google/common/collect/Table;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 138
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Table;

    .line 139
    .local v0, other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .line 141
    .end local v0           #other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v1, 0x0

    .line 114
    #v1=(Null);
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 118
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-object v1

    .line 117
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map;

    .line 118
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 145
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

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
    .line 122
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    .local p2, columnKey:Ljava/lang/Object;,"TC;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->getOrCreate(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v1, 0x0

    .line 186
    #v1=(Null);
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-object v1

    .line 189
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map;

    .line 190
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, value:Ljava/lang/Object;,"TV;"
    #v1=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v2=(Reference);
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Row;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Row;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    #v0=(Reference);
    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/StandardTable$RowKeySet;

    .line 754
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TR;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$RowKeySet;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TR;>;"
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$RowKeySet;-><init>(Lcom/google/common/collect/StandardTable;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/StandardTable$RowKeySet;

    :cond_0
    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
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
    .line 935
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/StandardTable$RowMap;

    .line 936
    .local v0, result:Lcom/google/common/collect/StandardTable$RowMap;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap;"
    #v0=(Reference);
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$RowMap;

    .end local v0           #result:Lcom/google/common/collect/StandardTable$RowMap;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap;"
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$RowMap;-><init>(Lcom/google/common/collect/StandardTable;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/StandardTable$RowMap;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 126
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v2, 0x0

    .line 127
    .local v2, size:I
    #v2=(Null);
    iget-object v3, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Map;

    .line 128
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v2, v3

    goto :goto_0

    .line 130
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    :cond_0
    #v1=(Conflicted);v3=(Boolean);
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/google/common/collect/StandardTable;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
