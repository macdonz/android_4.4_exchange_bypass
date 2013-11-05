.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[C

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([CII)V
    .locals 0
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 473
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    .line 474
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .line 475
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    .line 476
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 493
    instance-of v0, p1, Ljava/lang/Character;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v0=(Reference);
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    #v1=(Char);
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v2=(Integer);
    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    #v3=(Integer);
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 536
    #v4=(Null);
    if-ne p1, p0, :cond_1

    .line 552
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return v3

    .line 539
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(One);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    instance-of v5, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    #v5=(Boolean);
    if-eqz v5, :cond_4

    move-object v2, p1

    .line 540
    #v2=(Reference);
    check-cast v2, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 541
    .local v2, that:Lcom/google/common/primitives/Chars$CharArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    .line 542
    .local v1, size:I
    #v1=(Integer);
    invoke-virtual {v2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v5

    #v5=(Integer);
    if-eq v5, v1, :cond_2

    move v3, v4

    .line 543
    #v3=(Null);
    goto :goto_0

    .line 545
    :cond_2
    #v3=(One);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    #v0=(Integer);v6=(Conflicted);v7=(Conflicted);
    if-ge v0, v1, :cond_0

    .line 546
    iget-object v5, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v5=(Reference);
    iget v6, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v6=(Integer);
    add-int/2addr v6, v0

    aget-char v5, v5, v6

    #v5=(Char);
    iget-object v6, v2, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v6=(Reference);
    iget v7, v2, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v7=(Integer);
    add-int/2addr v7, v0

    aget-char v6, v6, v7

    #v6=(Char);
    if-eq v5, v6, :cond_3

    move v3, v4

    .line 547
    #v3=(Null);
    goto :goto_0

    .line 545
    :cond_3
    #v3=(One);
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #that:Lcom/google/common/primitives/Chars$CharArrayAsList;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Character;
    .locals 2
    .parameter "index"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    #v0=(Integer);
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 488
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v0=(Reference);
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v1=(Integer);
    add-int/2addr v1, p1

    aget-char v0, v0, v1

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
    .line 461
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 556
    const/4 v1, 0x1

    .line 557
    .local v1, result:I
    #v1=(One);
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    #v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 558
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v3=(Reference);
    aget-char v3, v3, v0

    #v3=(Char);
    invoke-static {v3}, Lcom/google/common/primitives/Chars;->hashCode(C)I

    move-result v3

    #v3=(Integer);
    add-int v1, v2, v3

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    #v3=(Conflicted);
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 499
    instance-of v1, p1, Ljava/lang/Character;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v1=(Reference);
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    #v2=(Char);
    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v3=(Integer);
    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    #v4=(Integer);
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    .line 501
    .local v0, i:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    .line 502
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v1=(Integer);
    sub-int v1, v0, v1

    .line 505
    .end local v0           #i:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    :cond_0
    #v1=(Conflicted);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 510
    instance-of v1, p1, Ljava/lang/Character;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v1=(Reference);
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    #v2=(Char);
    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v3=(Integer);
    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    #v4=(Integer);
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->access$100([CCII)I

    move-result v0

    .line 512
    .local v0, i:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    .line 513
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v1=(Integer);
    sub-int v1, v0, v1

    .line 516
    .end local v0           #i:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    :cond_0
    #v1=(Conflicted);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_0
.end method

.method public set(ILjava/lang/Character;)Ljava/lang/Character;
    .locals 4
    .parameter "index"
    .parameter "element"

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    #v1=(Integer);
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 521
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v2=(Integer);
    add-int/2addr v2, p1

    aget-char v0, v1, v2

    .line 522
    .local v0, oldValue:C
    #v0=(Char);
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v2=(Reference);
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v1=(Integer);
    add-int v3, v1, p1

    #v3=(Integer);
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    #v1=(Char);
    aput-char v1, v2, v3

    .line 523
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 461
    check-cast p2, Ljava/lang/Character;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    #v0=(Integer);
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v1=(Integer);
    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
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
    .line 527
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 528
    .local v0, size:I
    #v0=(Integer);
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 529
    if-ne p1, p2, :cond_0

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 532
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v2=(Reference);
    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v3=(Integer);
    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v4=(Integer);
    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    #v1=(Reference);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v2

    #v2=(Integer);
    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 565
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const/16 v2, 0x5b

    #v2=(PosByte);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    #v2=(Reference);
    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v3=(Reference);
    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v4=(Integer);
    aget-char v3, v3, v4

    #v3=(Char);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    #v2=(Integer);
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    #v2=(Integer);
    if-ge v1, v2, :cond_0

    .line 567
    const-string v2, ", "

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    #v3=(Reference);
    aget-char v3, v3, v1

    #v3=(Char);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_0
    #v2=(Integer);
    const/16 v2, 0x5d

    #v2=(PosByte);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
