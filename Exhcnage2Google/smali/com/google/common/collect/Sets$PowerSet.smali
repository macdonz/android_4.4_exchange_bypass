.class final Lcom/google/common/collect/Sets$PowerSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final inputList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field final inputSet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field final powerSetSize:I


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1219
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v1, p1, Ljava/util/Set;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1220
    #v0=(Reference);
    check-cast v0, Ljava/util/Set;

    .line 1221
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .line 1223
    .end local v0           #set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :cond_0
    #v0=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1227
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$PowerSet;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1228
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Sets$PowerSet;

    .line 1229
    .local v0, that:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    #v1=(Reference);
    iget-object v2, v0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1231
    .end local v0           #that:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<*>;"
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
    .locals 2

    .prologue
    .line 1240
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1174
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet$1;

    #v0=(UninitRef);
    iget v1, p0, Lcom/google/common/collect/Sets$PowerSet;->powerSetSize:I

    #v1=(Integer);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Sets$PowerSet$1;-><init>(Lcom/google/common/collect/Sets$PowerSet;I)V

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1170
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet;->powerSetSize:I

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1244
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "powerSet("

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
