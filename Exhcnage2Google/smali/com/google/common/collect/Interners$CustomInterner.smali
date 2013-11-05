.class Lcom/google/common/collect/Interners$CustomInterner;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomInterner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$CustomInterner$Dummy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TE;",
            "Lcom/google/common/collect/Interners$CustomInterner$Dummy;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/Interners$CustomInterner;,"Lcom/google/common/collect/Interners$CustomInterner<TE;>;"
    .local p1, sample:Ljava/lang/Object;,"TE;"
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/Interners$CustomInterner;->map:Lcom/google/common/collect/MapMakerInternalMap;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getEntry(Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 69
    .local v1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TE;Lcom/google/common/collect/Interners$CustomInterner$Dummy;>;"
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, canonical:Ljava/lang/Object;,"TE;"
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 79
    .end local v0           #canonical:Ljava/lang/Object;,"TE;"
    :goto_0
    return-object v0

    .line 77
    :cond_1
    #v0=(Conflicted);
    iget-object v3, p0, Lcom/google/common/collect/Interners$CustomInterner;->map:Lcom/google/common/collect/MapMakerInternalMap;

    sget-object v4, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    #v4=(Reference);
    invoke-virtual {v3, p1, v4}, Lcom/google/common/collect/MapMakerInternalMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    .line 78
    .local v2, sneaky:Lcom/google/common/collect/Interners$CustomInterner$Dummy;
    if-nez v2, :cond_0

    move-object v0, p1

    .line 79
    #v0=(Reference);
    goto :goto_0
.end method
