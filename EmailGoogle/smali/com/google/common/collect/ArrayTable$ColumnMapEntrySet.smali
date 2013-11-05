.class Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;
.super Ljava/util/AbstractSet;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMapEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMapEntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;-><init>(Lcom/google/common/collect/ArrayTable;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMapEntrySet;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;->size()I

    move-result v1

    #v1=(Integer);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;-><init>(Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;I)V

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 654
    .local p0, this:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMapEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
