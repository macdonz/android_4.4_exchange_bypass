.class Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$ColumnMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColumnMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<",
        "Ljava/util/Map$Entry",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$ColumnMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$ColumnMap;)V
    .locals 2
    .parameter

    .prologue
    .line 1049
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, p1, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 1069
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1070
    #v1=(Reference);
    check-cast v1, Ljava/util/Map$Entry;

    .line 1071
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v2=(Reference);
    iget-object v2, v2, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1075
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1076
    .local v0, columnKey:Ljava/lang/Object;,"TC;"
    #v0=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Lcom/google/common/collect/StandardTable$ColumnMap;->get(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1079
    .end local v0           #columnKey:Ljava/lang/Object;,"TC;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    :cond_0
    #v0=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

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
    .line 1051
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v1=(Reference);
    iget-object v1, v1, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1052
    .local v0, columnIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TC;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;-><init>(Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 1083
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1084
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 1085
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v1=(Reference);
    iget-object v1, v1, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1086
    const/4 v1, 0x1

    .line 1088
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1092
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 1093
    .local v0, changed:Z
    #v0=(Null);
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Boolean);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1094
    .local v2, obj:Ljava/lang/Object;
    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 1096
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
    #v2=(Conflicted);
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 1101
    .local v0, changed:Z
    #v0=(Null);
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v3=(Reference);
    iget-object v3, v3, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1102
    .local v1, columnKey:Ljava/lang/Object;,"TC;"
    #v1=(Reference);
    new-instance v3, Lcom/google/common/collect/ImmutableEntry;

    #v3=(UninitRef);
    iget-object v4, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v4=(Reference);
    iget-object v4, v4, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #v3=(Reference);
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 1104
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v3=(Reference);
    iget-object v3, v3, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-static {v3, v1}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1105
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 1108
    .end local v1           #columnKey:Ljava/lang/Object;,"TC;"
    :cond_1
    #v0=(Boolean);v1=(Conflicted);v3=(Boolean);v4=(Conflicted);
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1065
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
