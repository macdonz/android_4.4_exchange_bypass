.class Lcom/google/common/base/Predicates$IsEqualToPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsEqualToPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, this:Lcom/google/common/base/Predicates$IsEqualToPredicate;,"Lcom/google/common/base/Predicates$IsEqualToPredicate<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$IsEqualToPredicate;->target:Ljava/lang/Object;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 410
    .local p0, this:Lcom/google/common/base/Predicates$IsEqualToPredicate;,"Lcom/google/common/base/Predicates$IsEqualToPredicate<TT;>;"
    instance-of v1, p1, Lcom/google/common/base/Predicates$IsEqualToPredicate;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 411
    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Predicates$IsEqualToPredicate;

    .line 412
    .local v0, that:Lcom/google/common/base/Predicates$IsEqualToPredicate;,"Lcom/google/common/base/Predicates$IsEqualToPredicate<*>;"
    iget-object v1, p0, Lcom/google/common/base/Predicates$IsEqualToPredicate;->target:Ljava/lang/Object;

    #v1=(Reference);
    iget-object v2, v0, Lcom/google/common/base/Predicates$IsEqualToPredicate;->target:Ljava/lang/Object;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 414
    .end local v0           #that:Lcom/google/common/base/Predicates$IsEqualToPredicate;,"Lcom/google/common/base/Predicates$IsEqualToPredicate<*>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 407
    .local p0, this:Lcom/google/common/base/Predicates$IsEqualToPredicate;,"Lcom/google/common/base/Predicates$IsEqualToPredicate<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$IsEqualToPredicate;->target:Ljava/lang/Object;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    .local p0, this:Lcom/google/common/base/Predicates$IsEqualToPredicate;,"Lcom/google/common/base/Predicates$IsEqualToPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "IsEqualTo("

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$IsEqualToPredicate;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
