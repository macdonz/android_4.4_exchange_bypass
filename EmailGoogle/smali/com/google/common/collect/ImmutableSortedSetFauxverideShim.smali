.class abstract Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSortedSetFauxverideShim.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;,"Lcom/google/common/collect/ImmutableSortedSetFauxverideShim<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    #p0=(Reference);
    return-void
.end method
