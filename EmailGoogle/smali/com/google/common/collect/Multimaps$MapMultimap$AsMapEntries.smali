.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$MapMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 1228
    #v3=(Null);
    instance-of v4, p1, Ljava/util/Map$Entry;

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1236
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Boolean);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    return v3

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    move-object v0, p1

    .line 1231
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 1232
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    instance-of v4, v4, Ljava/util/Set;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 1235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Set;

    .line 1236
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    #v4=(Integer);
    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    #v4=(Reference);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/Multimaps$MapMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    :goto_1
    #v2=(Boolean);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    move v3, v2

    #v3=(Boolean);
    goto :goto_0

    :cond_2
    #v2=(One);v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1201
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;)V

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 1241
    #v3=(Null);
    instance-of v4, p1, Ljava/util/Map$Entry;

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1249
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Boolean);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    return v3

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    move-object v0, p1

    .line 1244
    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 1245
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    instance-of v4, v4, Ljava/util/Set;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 1248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/util/Set;

    .line 1249
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    #v4=(Integer);
    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    #v4=(Reference);
    iget-object v4, v4, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    :goto_1
    #v2=(Boolean);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    move v3, v2

    #v3=(Boolean);
    goto :goto_0

    :cond_2
    #v2=(One);v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1197
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
