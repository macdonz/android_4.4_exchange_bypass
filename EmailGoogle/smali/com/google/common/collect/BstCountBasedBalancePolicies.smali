.class final Lcom/google/common/collect/BstCountBasedBalancePolicies;
.super Ljava/lang/Object;
.source "BstCountBasedBalancePolicies.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static fullRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/BstAggregate",
            "<TN;>;)",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, countAggregate:Lcom/google/common/collect/BstAggregate;,"Lcom/google/common/collect/BstAggregate<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p0}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->singleRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v0

    .line 164
    .local v0, singleBalancePolicy:Lcom/google/common/collect/BstBalancePolicy;,"Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;

    #v1=(UninitRef);
    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;-><init>(Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstAggregate;)V

    #v1=(Reference);
    return-object v1
.end method

.method public static singleRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/BstAggregate",
            "<TN;>;)",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, countAggregate:Lcom/google/common/collect/BstAggregate;,"Lcom/google/common/collect/BstAggregate<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;-><init>(Lcom/google/common/collect/BstAggregate;)V

    #v0=(Reference);
    return-object v0
.end method
