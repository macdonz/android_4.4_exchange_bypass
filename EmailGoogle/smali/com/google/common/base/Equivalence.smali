.class public abstract Lcom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Equivalence$1;,
        Lcom/google/common/base/Equivalence$EquivalentToPredicate;,
        Lcom/google/common/base/Equivalence$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, this:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
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
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TT;"
    .local p2, b:Ljava/lang/Object;,"TT;"
    if-ne p1, p2, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_0
    #v0=(Boolean);
    return v0

    .line 69
    :cond_0
    #v0=(Uninit);
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 70
    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 72
    :cond_2
    #v0=(Uninit);
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    invoke-virtual {p0, p1}, Lcom/google/common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method
