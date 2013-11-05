.class final Lcom/google/common/collect/Lists$CharSequenceAsList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharSequenceAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "sequence"

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 644
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    .line 645
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 696
    #v5=(Null);
    instance-of v6, p1, Ljava/util/List;

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 712
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Integer);v7=(Conflicted);
    return v5

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Uninit);
    move-object v3, p1

    .line 699
    #v3=(Reference);
    check-cast v3, Ljava/util/List;

    .line 700
    .local v3, list:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v6, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v6=(Reference);
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 701
    .local v4, n:I
    #v4=(Integer);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    if-ne v4, v6, :cond_0

    .line 704
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 705
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    #v2=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v0=(Conflicted);v1=(Integer);v7=(Conflicted);
    if-ge v1, v4, :cond_2

    .line 706
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 707
    .local v0, elem:Ljava/lang/Object;
    #v0=(Reference);
    instance-of v6, v0, Ljava/lang/Character;

    #v6=(Boolean);
    if-eqz v6, :cond_0

    check-cast v0, Ljava/lang/Character;

    .end local v0           #elem:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v6

    #v6=(Char);
    iget-object v7, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v7=(Reference);
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    #v7=(Char);
    if-ne v6, v7, :cond_0

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 712
    :cond_2
    #v0=(Conflicted);v6=(Integer);v7=(Conflicted);
    const/4 v5, 0x1

    #v5=(One);
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Character;
    .locals 1
    .parameter "index"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    #v0=(Char);
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 688
    const/4 v0, 0x1

    .line 689
    .local v0, hash:I
    #v0=(One);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_0

    .line 690
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v3=(Reference);
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    #v3=(Char);
    add-int v0, v2, v3

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_0
    #v3=(Conflicted);
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 656
    instance-of v2, p1, Ljava/lang/Character;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 657
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 658
    .local v0, c:C
    #v0=(Char);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Char);
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    #v2=(Char);
    if-ne v2, v0, :cond_0

    .line 664
    .end local v0           #c:C
    .end local v1           #i:I
    :goto_1
    #v0=(Conflicted);v2=(Integer);
    return v1

    .line 658
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_0
    #v0=(Char);v2=(Char);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 668
    instance-of v2, p1, Ljava/lang/Character;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 669
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 670
    .local v0, c:C
    #v0=(Char);
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    if-ltz v1, :cond_1

    .line 671
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    #v2=(Char);
    if-ne v2, v0, :cond_0

    .line 676
    .end local v0           #c:C
    .end local v1           #i:I
    :goto_1
    #v0=(Conflicted);v2=(Integer);
    return v1

    .line 670
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_0
    #v0=(Char);v2=(Char);
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 676
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
