.class Lcom/google/common/collect/ArrayTable$RowEntrySet;
.super Ljava/util/AbstractSet;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final rowIndex:I

.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0
    .parameter
    .parameter "rowIndex"

    .prologue
    .line 717
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$RowEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 718
    #p0=(Reference);
    iput p2, p0, Lcom/google/common/collect/ArrayTable$RowEntrySet;->rowIndex:I

    .line 719
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
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowEntrySet;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$RowEntrySet$1;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$RowEntrySet;->size()I

    move-result v1

    #v1=(Integer);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$RowEntrySet$1;-><init>(Lcom/google/common/collect/ArrayTable$RowEntrySet;I)V

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 740
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$RowEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
