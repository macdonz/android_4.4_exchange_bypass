.class Lcom/google/common/collect/Sets$InvertibleFunction$1;
.super Lcom/google/common/collect/Sets$InvertibleFunction;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets$InvertibleFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$InvertibleFunction",
        "<TB;TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Sets$InvertibleFunction;


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .prologue
    .line 1309
    .local p0, this:Lcom/google/common/collect/Sets$InvertibleFunction$1;,"Lcom/google/common/collect/Sets$InvertibleFunction.1;"
    .local p1, b:Ljava/lang/Object;,"TB;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$InvertibleFunction$1;->this$0:Lcom/google/common/collect/Sets$InvertibleFunction;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->invert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method invert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, this:Lcom/google/common/collect/Sets$InvertibleFunction$1;,"Lcom/google/common/collect/Sets$InvertibleFunction.1;"
    .local p1, a:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$InvertibleFunction$1;->this$0:Lcom/google/common/collect/Sets$InvertibleFunction;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
