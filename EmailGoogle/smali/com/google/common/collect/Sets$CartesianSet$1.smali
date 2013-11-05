.class Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/Sets$CartesianSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$CartesianSet;)V
    .locals 0
    .parameter

    .prologue
    .line 1014
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$1;,"Lcom/google/common/collect/Sets$CartesianSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1019
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$1;,"Lcom/google/common/collect/Sets$CartesianSet.1;"
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    #v1=(Reference);
    iget v1, v1, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1014
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$1;,"Lcom/google/common/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->next()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 1024
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$1;,"Lcom/google/common/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 1025
    new-instance v3, Ljava/util/NoSuchElementException;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #v3=(Reference);
    throw v3

    .line 1028
    :cond_0
    #v3=(Boolean);
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    #v3=(Reference);
    iget-object v3, v3, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    #v3=(Integer);
    new-array v2, v3, [Ljava/lang/Object;

    .line 1029
    .local v2, tuple:[Ljava/lang/Object;
    #v2=(Reference);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v3=(Conflicted);v4=(Conflicted);
    array-length v3, v2

    #v3=(Integer);
    if-ge v0, v3, :cond_1

    .line 1030
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    #v3=(Reference);
    iget-object v3, v3, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    iget v4, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    #v4=(Integer);
    invoke-virtual {v3, v4}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->getForIndex(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1032
    :cond_1
    #v3=(Integer);v4=(Conflicted);
    iget v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->index:I

    .line 1035
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1036
    .local v1, result:Ljava/util/List;,"Ljava/util/List<TB;>;"
    #v1=(Reference);
    return-object v1
.end method
