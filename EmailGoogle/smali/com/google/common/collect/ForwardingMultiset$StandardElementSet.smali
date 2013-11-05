.class public Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;
.super Lcom/google/common/collect/Multisets$ElementSet;
.source "ForwardingMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$ElementSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMultiset;


# virtual methods
.method multiset()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;,"Lcom/google/common/collect/ForwardingMultiset<TE;>.StandardElementSet;"
    iget-object v0, p0, Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lcom/google/common/collect/ForwardingMultiset;

    #v0=(Reference);
    return-object v0
.end method
