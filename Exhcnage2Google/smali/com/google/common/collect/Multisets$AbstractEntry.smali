.class abstract Lcom/google/common/collect/Multisets$AbstractEntry;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    const/4 v1, 0x0

    .line 668
    #v1=(Null);
    instance-of v2, p1, Lcom/google/common/collect/Multiset$Entry;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 669
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 670
    .local v0, that:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    #v2=(Integer);
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 673
    .end local v0           #that:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v2=(Integer);v3=(Conflicted);
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 681
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 682
    .local v0, e:Ljava/lang/Object;,"TE;"
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    #v2=(Integer);
    xor-int/2addr v1, v2

    return v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 693
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, text:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v0

    .line 695
    .local v0, n:I
    #v0=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-ne v0, v2, :cond_0

    .end local v1           #text:Ljava/lang/String;
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-object v1

    .restart local v1       #text:Ljava/lang/String;
    :cond_0
    #v2=(One);v3=(Uninit);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
