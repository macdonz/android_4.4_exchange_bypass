.class Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

.field final synthetic val$columnIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1052
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;,"Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->val$columnIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1054
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;,"Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->val$columnIterator:Ljava/util/Iterator;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1052
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;,"Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;,"Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->val$columnIterator:Ljava/util/Iterator;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1058
    .local v0, columnKey:Ljava/lang/Object;,"TC;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/ImmutableEntry;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

    #v2=(Reference);
    iget-object v2, v2, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #v1=(Reference);
    return-object v1
.end method
