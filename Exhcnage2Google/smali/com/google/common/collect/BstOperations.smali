.class final Lcom/google/common/collect/BstOperations;
.super Ljava/lang/Object;
.source "BstOperations.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BstOperations$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static extractMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, root:Lcom/google/common/collect/BstNode;,"TN;"
    .local p1, nodeFactory:Lcom/google/common/collect/BstNodeFactory;,"Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p2, balancePolicy:Lcom/google/common/collect/BstBalancePolicy;,"Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/common/collect/BstOperations;->extractMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 188
    .local v0, subResult:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 190
    .end local v0           #subResult:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v1

    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p0}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v3}, Lcom/google/common/collect/BstModificationResult;->rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v1, p0, v2, v3}, Lcom/google/common/collect/BstMutationResult;->mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static extractMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, root:Lcom/google/common/collect/BstNode;,"TN;"
    .local p1, nodeFactory:Lcom/google/common/collect/BstNodeFactory;,"Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p2, balancePolicy:Lcom/google/common/collect/BstBalancePolicy;,"Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/common/collect/BstOperations;->extractMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 170
    .local v0, subResult:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 172
    .end local v0           #subResult:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v1

    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p0}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v3}, Lcom/google/common/collect/BstModificationResult;->rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v1, p0, v2, v3}, Lcom/google/common/collect/BstMutationResult;->mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static insertMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, root:Lcom/google/common/collect/BstNode;,"TN;"
    .local p1, entry:Lcom/google/common/collect/BstNode;,"TN;"
    .local p2, nodeFactory:Lcom/google/common/collect/BstNodeFactory;,"Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p3, balancePolicy:Lcom/google/common/collect/BstBalancePolicy;,"Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    if-nez p0, :cond_0

    .line 222
    invoke-virtual {p2, p1}, Lcom/google/common/collect/BstNodeFactory;->createLeaf(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 224
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/common/collect/BstOperations;->insertMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, root:Lcom/google/common/collect/BstNode;,"TN;"
    .local p1, entry:Lcom/google/common/collect/BstNode;,"TN;"
    .local p2, nodeFactory:Lcom/google/common/collect/BstNodeFactory;,"Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p3, balancePolicy:Lcom/google/common/collect/BstBalancePolicy;,"Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    if-nez p0, :cond_0

    .line 204
    invoke-virtual {p2, p1}, Lcom/google/common/collect/BstNodeFactory;->createLeaf(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 206
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/collect/BstOperations;->insertMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0
.end method

.method private static modify(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;
    .locals 11
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TN;TK;",
            "Lcom/google/common/collect/BstMutationRule",
            "<TK;TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, tree:Lcom/google/common/collect/BstNode;,"TN;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, mutationRule:Lcom/google/common/collect/BstMutationRule;,"Lcom/google/common/collect/BstMutationRule<TK;TN;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->getBalancePolicy()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v8

    .line 115
    .local v8, rebalancePolicy:Lcom/google/common/collect/BstBalancePolicy;,"Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    #v8=(Reference);
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->getNodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v3

    .line 116
    .local v3, nodeFactory:Lcom/google/common/collect/BstNodeFactory;,"Lcom/google/common/collect/BstNodeFactory<TN;>;"
    #v3=(Reference);
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->getModifier()Lcom/google/common/collect/BstModifier;

    move-result-object v2

    .line 118
    .local v2, modifier:Lcom/google/common/collect/BstModifier;,"Lcom/google/common/collect/BstModifier<TK;TN;>;"
    #v2=(Reference);
    move-object v6, p0

    .line 120
    .local v6, originalRoot:Lcom/google/common/collect/BstNode;,"TN;"
    #v6=(Reference);
    if-nez p0, :cond_1

    const/4 v7, 0x0

    .line 121
    .local v7, originalTarget:Lcom/google/common/collect/BstNode;,"TN;"
    :goto_0
    #v7=(Reference);
    invoke-interface {v2, p1, v7}, Lcom/google/common/collect/BstModifier;->modify(Ljava/lang/Object;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v1

    .line 122
    .local v1, modResult:Lcom/google/common/collect/BstModificationResult;,"Lcom/google/common/collect/BstModificationResult<TN;>;"
    #v1=(Reference);
    const/4 v4, 0x0

    .line 123
    .local v4, originalLeft:Lcom/google/common/collect/BstNode;,"TN;"
    #v4=(Null);
    const/4 v5, 0x0

    .line 124
    .local v5, originalRight:Lcom/google/common/collect/BstNode;,"TN;"
    #v5=(Null);
    if-eqz p0, :cond_0

    .line 125
    sget-object v9, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v9=(Reference);
    invoke-virtual {p0, v9}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v4

    .line 126
    #v4=(Reference);
    sget-object v9, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v9}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v5

    .line 128
    :cond_0
    #v5=(Reference);v9=(Conflicted);
    sget-object v9, Lcom/google/common/collect/BstOperations$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    #v9=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult;->getType()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v10

    #v10=(Integer);
    aget v9, v9, v10

    #v9=(Integer);
    packed-switch v9, :pswitch_data_0

    .line 154
    new-instance v9, Ljava/lang/AssertionError;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #v9=(Reference);
    throw v9

    .line 120
    .end local v1           #modResult:Lcom/google/common/collect/BstModificationResult;,"Lcom/google/common/collect/BstModificationResult<TN;>;"
    .end local v4           #originalLeft:Lcom/google/common/collect/BstNode;,"TN;"
    .end local v5           #originalRight:Lcom/google/common/collect/BstNode;,"TN;"
    .end local v7           #originalTarget:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_1
    #v1=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);
    invoke-virtual {v3, p0}, Lcom/google/common/collect/BstNodeFactory;->createLeaf(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v7

    #v7=(Reference);
    goto :goto_0

    .line 130
    .restart local v1       #modResult:Lcom/google/common/collect/BstModificationResult;,"Lcom/google/common/collect/BstModificationResult<TN;>;"
    .restart local v4       #originalLeft:Lcom/google/common/collect/BstNode;,"TN;"
    .restart local v5       #originalRight:Lcom/google/common/collect/BstNode;,"TN;"
    .restart local v7       #originalTarget:Lcom/google/common/collect/BstNode;,"TN;"
    :pswitch_0
    #v1=(Reference);v4=(Reference);v5=(Reference);v9=(Integer);v10=(Integer);
    move-object v0, p0

    .line 156
    .local v0, changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    :goto_1
    #v0=(Reference);v9=(Conflicted);
    invoke-static {p1, v6, v0, v1}, Lcom/google/common/collect/BstMutationResult;->mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v9

    #v9=(Reference);
    return-object v9

    .line 133
    .end local v0           #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    :pswitch_1
    #v0=(Uninit);v9=(Integer);
    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v9

    #v9=(Reference);
    if-eqz v9, :cond_2

    .line 134
    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v9

    invoke-virtual {v3, v9, v4, v5}, Lcom/google/common/collect/BstNodeFactory;->createNode(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .restart local v0       #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    #v0=(Reference);
    goto :goto_1

    .line 136
    .end local v0           #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_2
    #v0=(Uninit);
    if-nez p0, :cond_3

    .line 137
    const/4 v0, 0x0

    .restart local v0       #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    #v0=(Null);
    goto :goto_1

    .line 139
    .end local v0           #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_3
    #v0=(Uninit);
    new-instance v9, Ljava/lang/AssertionError;

    #v9=(UninitRef);
    const-string v10, "Modification result is a REBUILDING_CHANGE, but rebalancing required"

    #v10=(Reference);
    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #v9=(Reference);
    throw v9

    .line 144
    :pswitch_2
    #v9=(Integer);v10=(Integer);
    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v9

    #v9=(Reference);
    if-eqz v9, :cond_4

    .line 145
    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v9

    invoke-interface {v8, v3, v9, v4, v5}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .restart local v0       #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    #v0=(Reference);
    goto :goto_1

    .line 147
    .end local v0           #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_4
    #v0=(Uninit);
    if-eqz p0, :cond_5

    .line 148
    invoke-interface {v8, v3, v4, v5}, Lcom/google/common/collect/BstBalancePolicy;->combine(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .restart local v0       #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    #v0=(Reference);
    goto :goto_1

    .line 150
    .end local v0           #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_5
    #v0=(Uninit);
    const/4 v0, 0x0

    .line 152
    .restart local v0       #changedRoot:Lcom/google/common/collect/BstNode;,"TN;"
    #v0=(Null);
    goto :goto_1

    .line 128
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static mutate(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;
    .locals 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Lcom/google/common/collect/BstMutationRule",
            "<TK;TN;>;TN;TK;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    .local p1, mutationRule:Lcom/google/common/collect/BstMutationRule;,"Lcom/google/common/collect/BstMutationRule<TK;TN;>;"
    .local p2, tree:Lcom/google/common/collect/BstNode;,"TN;"
    .local p3, key:Ljava/lang/Object;,"TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p2}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p0, p3, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, cmp:I
    #v0=(Integer);
    if-eqz v0, :cond_1

    .line 77
    if-gez v0, :cond_0

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    .line 78
    .local v2, side:Lcom/google/common/collect/BstSide;
    :goto_0
    #v2=(Reference);
    invoke-virtual {p2, v2}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v3

    invoke-static {p0, p1, v3, p3}, Lcom/google/common/collect/BstOperations;->mutate(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 80
    .local v1, mutation:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    #v1=(Reference);
    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->getNodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->getBalancePolicy()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v3

    .line 84
    .end local v0           #cmp:I
    .end local v1           #mutation:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    .end local v2           #side:Lcom/google/common/collect/BstSide;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-object v3

    .line 77
    .restart local v0       #cmp:I
    :cond_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v2=(Reference);
    goto :goto_0

    .line 84
    .end local v0           #cmp:I
    :cond_1
    #v0=(Conflicted);v2=(Uninit);v3=(Conflicted);
    invoke-static {p2, p3, p1}, Lcom/google/common/collect/BstOperations;->modify(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v3

    #v3=(Reference);
    goto :goto_1
.end method

.method public static seek(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Ljava/util/Comparator",
            "<-TK;>;TN;TK;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    .local p1, tree:Lcom/google/common/collect/BstNode;,"TN;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    if-nez p1, :cond_1

    .line 44
    const/4 p1, 0x0

    .line 51
    .end local p1           #tree:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-object p1

    .line 46
    .restart local p1       #tree:Lcom/google/common/collect/BstNode;,"TN;"
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p1}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {p0, p2, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 47
    .local v0, cmp:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 50
    if-gez v0, :cond_2

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    .line 51
    .local v1, side:Lcom/google/common/collect/BstSide;
    :goto_1
    #v1=(Reference);
    invoke-virtual {p1, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/google/common/collect/BstOperations;->seek(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;

    move-result-object p1

    goto :goto_0

    .line 50
    .end local v1           #side:Lcom/google/common/collect/BstSide;
    :cond_2
    #v1=(Uninit);
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v1=(Reference);
    goto :goto_1
.end method
