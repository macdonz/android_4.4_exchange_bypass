.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Row;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 443
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v1

    .line 458
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 459
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 462
    :goto_0
    #v0=(Conflicted);
    return-object v2

    .line 461
    :cond_0
    #v0=(Uninit);
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 462
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TC;TV;>;>;"
    #v0=(Reference);
    new-instance v2, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;)V

    #v2=(Reference);
    goto :goto_0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 451
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 452
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method
