.class abstract Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "ImmutableSortedMultisetFauxverideShim.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim;,"Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    #p0=(Reference);
    return-void
.end method
