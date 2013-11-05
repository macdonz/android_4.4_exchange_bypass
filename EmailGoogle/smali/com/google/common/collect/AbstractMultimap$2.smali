.class Lcom/google/common/collect/AbstractMultimap$2;
.super Lcom/google/common/collect/Multimaps$Values;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Values",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# virtual methods
.method multimap()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$2;,"Lcom/google/common/collect/AbstractMultimap.2;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$2;->this$0:Lcom/google/common/collect/AbstractMultimap;

    #v0=(Reference);
    return-object v0
.end method
