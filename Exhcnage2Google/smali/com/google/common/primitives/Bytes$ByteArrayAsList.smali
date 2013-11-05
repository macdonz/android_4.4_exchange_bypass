.class Lcom/google/common/primitives/Bytes$ByteArrayAsList;
.super Ljava/util/AbstractList;
.source "Bytes.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Bytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[B

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([BII)V
    .locals 0
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 274
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    .line 275
    iput p2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    .line 276
    iput p3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    .line 277
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 294
    instance-of v0, p1, Ljava/lang/Byte;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v0=(Reference);
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    #v1=(Byte);
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v2=(Integer);
    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    #v3=(Integer);
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes;->access$000([BBII)I

    move-result v0

    #v0=(Integer);
    const/4 v1, -0x1

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

    .line 337
    #v4=(Null);
    if-ne p1, p0, :cond_1

    .line 353
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return v3

    .line 340
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(One);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    instance-of v5, p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    #v5=(Boolean);
    if-eqz v5, :cond_4

    move-object v2, p1

    .line 341
    #v2=(Reference);
    check-cast v2, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    .line 342
    .local v2, that:Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    .line 343
    .local v1, size:I
    #v1=(Integer);
    invoke-virtual {v2}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v5

    #v5=(Integer);
    if-eq v5, v1, :cond_2

    move v3, v4

    .line 344
    #v3=(Null);
    goto :goto_0

    .line 346
    :cond_2
    #v3=(One);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    #v0=(Integer);v6=(Conflicted);v7=(Conflicted);
    if-ge v0, v1, :cond_0

    .line 347
    iget-object v5, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v5=(Reference);
    iget v6, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v6=(Integer);
    add-int/2addr v6, v0

    aget-byte v5, v5, v6

    #v5=(Byte);
    iget-object v6, v2, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v6=(Reference);
    iget v7, v2, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v7=(Integer);
    add-int/2addr v7, v0

    aget-byte v6, v6, v7

    #v6=(Byte);
    if-eq v5, v6, :cond_3

    move v3, v4

    .line 348
    #v3=(Null);
    goto :goto_0

    .line 346
    :cond_3
    #v3=(One);
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #that:Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Byte;
    .locals 2
    .parameter "index"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    #v0=(Integer);
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 289
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v0=(Reference);
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v1=(Integer);
    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    #v0=(Byte);
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->get(I)Ljava/lang/Byte;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 357
    const/4 v1, 0x1

    .line 358
    .local v1, result:I
    #v1=(One);
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    #v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 359
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v3=(Reference);
    aget-byte v3, v3, v0

    #v3=(Byte);
    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->hashCode(B)I

    move-result v3

    #v3=(Integer);
    add-int v1, v2, v3

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    #v3=(Conflicted);
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 300
    instance-of v1, p1, Ljava/lang/Byte;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v1=(Reference);
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    #v2=(Byte);
    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v3=(Integer);
    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    #v4=(Integer);
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes;->access$000([BBII)I

    move-result v0

    .line 302
    .local v0, i:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    .line 303
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v1=(Integer);
    sub-int v1, v0, v1

    .line 306
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
    .line 284
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 311
    instance-of v1, p1, Ljava/lang/Byte;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v1=(Reference);
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    #v2=(Byte);
    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v3=(Integer);
    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    #v4=(Integer);
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes;->access$100([BBII)I

    move-result v0

    .line 313
    .local v0, i:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    .line 314
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v1=(Integer);
    sub-int v1, v0, v1

    .line 317
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

.method public set(ILjava/lang/Byte;)Ljava/lang/Byte;
    .locals 4
    .parameter "index"
    .parameter "element"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    #v1=(Integer);
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 322
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v2=(Integer);
    add-int/2addr v2, p1

    aget-byte v0, v1, v2

    .line 323
    .local v0, oldValue:B
    #v0=(Byte);
    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v2=(Reference);
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v1=(Integer);
    add-int v3, v1, p1

    #v3=(Integer);
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    #v1=(Byte);
    aput-byte v1, v2, v3

    .line 324
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->set(ILjava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    #v0=(Integer);
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

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
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    .line 329
    .local v0, size:I
    #v0=(Integer);
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 330
    if-ne p1, p2, :cond_0

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 333
    :goto_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v2=(Reference);
    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v3=(Integer);
    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v4=(Integer);
    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([BII)V

    #v1=(Reference);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v2

    #v2=(Integer);
    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const/16 v2, 0x5b

    #v2=(PosByte);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    #v2=(Reference);
    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v3=(Reference);
    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v4=(Integer);
    aget-byte v3, v3, v4

    #v3=(Byte);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    #v2=(Integer);
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    #v2=(Integer);
    if-ge v1, v2, :cond_0

    .line 368
    const-string v2, ", "

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    #v3=(Reference);
    aget-byte v3, v3, v1

    #v3=(Byte);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
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
