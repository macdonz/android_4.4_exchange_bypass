.class public final Lcom/google/common/base/Equivalence$Wrapper;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/base/Equivalence$Wrapper;,"Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 196
    #v3=(Null);
    if-ne p1, p0, :cond_1

    .line 210
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 198
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v4=(Uninit);v5=(Uninit);
    instance-of v4, p1, Lcom/google/common/base/Equivalence$Wrapper;

    #v4=(Boolean);
    if-eqz v4, :cond_3

    move-object v1, p1

    .line 199
    #v1=(Reference);
    check-cast v1, Lcom/google/common/base/Equivalence$Wrapper;

    .line 206
    .local v1, that:Lcom/google/common/base/Equivalence$Wrapper;,"Lcom/google/common/base/Equivalence$Wrapper<*>;"
    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    .line 207
    .local v0, equivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    #v0=(Reference);
    iget-object v4, v1, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    #v4=(Reference);
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, v1, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    #v5=(Reference);
    invoke-virtual {v0, v4, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    :cond_2
    #v5=(Conflicted);
    move v2, v3

    #v2=(Null);
    goto :goto_0

    .end local v0           #equivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .end local v1           #that:Lcom/google/common/base/Equivalence$Wrapper;,"Lcom/google/common/base/Equivalence$Wrapper<*>;"
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(One);v5=(Uninit);
    move v2, v3

    .line 210
    #v2=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 218
    .local p0, this:Lcom/google/common/base/Equivalence$Wrapper;,"Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    .local p0, this:Lcom/google/common/base/Equivalence$Wrapper;,"Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
