.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$CartesianSet$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field final axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Sets$CartesianSet",
            "<TB;>.Axis;>;"
        }
    .end annotation
.end field

.field final size:I


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    const/4 v4, 0x0

    .line 1042
    #v4=(Null);
    instance-of v3, p1, Ljava/util/List;

    #v3=(Boolean);
    if-nez v3, :cond_0

    move v3, v4

    .line 1055
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return v3

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Uninit);
    move-object v2, p1

    .line 1045
    #v2=(Reference);
    check-cast v2, Ljava/util/List;

    .line 1046
    .local v2, tuple:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 1047
    .local v0, dimensions:I
    #v0=(Integer);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    if-eq v3, v0, :cond_1

    move v3, v4

    .line 1048
    #v3=(Null);
    goto :goto_0

    .line 1050
    :cond_1
    #v3=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v5=(Conflicted);
    if-ge v1, v0, :cond_3

    .line 1051
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v5}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    move v3, v4

    .line 1052
    #v3=(Null);
    goto :goto_0

    .line 1050
    :cond_2
    #v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1055
    :cond_3
    #v3=(Integer);v5=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1061
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$CartesianSet;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1062
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet;

    .line 1063
    .local v0, that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    #v1=(Reference);
    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1065
    .end local v0           #that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1073
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    #v2=(Integer);
    add-int/lit8 v0, v2, -0x1

    .line 1074
    .local v0, adjust:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_0

    .line 1075
    mul-int/lit8 v0, v0, 0x1f

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    #v2=(Integer);
    add-int/2addr v2, v0

    return v2
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/Sets$CartesianSet;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 989
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1010
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    #v0=(Integer);
    return v0
.end method
