.class final enum Lcom/google/common/cache/LocalCache$Strength$2;
.super Lcom/google/common/cache/LocalCache$Strength;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method defaultEquivalence()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-static {}, Lcom/google/common/base/Equivalences;->identity()Lcom/google/common/base/Equivalence;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TV;I)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, segment:Lcom/google/common/cache/LocalCache$Segment;,"Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;,"Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    #v0=(One);
    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/google/common/cache/LocalCache$SoftValueReference;

    #v0=(UninitRef);
    iget-object v1, p1, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    #v1=(Reference);
    invoke-direct {v0, v1, p3, p2}, Lcom/google/common/cache/LocalCache$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(One);v1=(Uninit);
    new-instance v0, Lcom/google/common/cache/LocalCache$WeightedSoftValueReference;

    #v0=(UninitRef);
    iget-object v1, p1, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    #v1=(Reference);
    invoke-direct {v0, v1, p3, p2, p4}, Lcom/google/common/cache/LocalCache$WeightedSoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;I)V

    #v0=(Reference);
    goto :goto_0
.end method