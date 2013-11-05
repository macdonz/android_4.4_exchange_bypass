.class final Lcom/google/common/collect/MapMakerInternalMap$KeySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3824
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3853
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->clear()V

    .line 3854
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 3843
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3838
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3828
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 3848
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3833
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$KeySet;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
