.class final Lcom/google/common/collect/Lists$StringAsImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringAsImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field hash:I

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 609
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 546
    iput-object p1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    .line 547
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/Lists$StringAsImmutableList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->indexOf(Ljava/lang/Object;)I

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
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 590
    #v5=(Null);
    instance-of v6, p1, Ljava/util/List;

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 606
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Integer);v7=(Conflicted);
    return v5

    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Uninit);
    move-object v3, p1

    .line 593
    #v3=(Reference);
    check-cast v3, Ljava/util/List;

    .line 594
    .local v3, list:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v6, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 595
    .local v4, n:I
    #v4=(Integer);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    if-ne v4, v6, :cond_0

    .line 598
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 599
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    #v2=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v0=(Conflicted);v1=(Integer);v7=(Conflicted);
    if-ge v1, v4, :cond_2

    .line 600
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 601
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
    iget-object v7, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    #v7=(Char);
    if-ne v6, v7, :cond_0

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 606
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
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

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
    .line 539
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->get(I)Ljava/lang/Character;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 612
    iget v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 613
    .local v0, h:I
    #v0=(Integer);
    if-nez v0, :cond_1

    .line 614
    const/4 v0, 0x1

    .line 615
    #v0=(One);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_0

    .line 616
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #v3=(Char);
    add-int v0, v2, v3

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_0
    #v3=(Conflicted);
    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 620
    .end local v1           #i:I
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 554
    instance-of v0, p1, Ljava/lang/Character;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v0=(Reference);
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    #v1=(Char);
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .restart local p1
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 559
    instance-of v0, p1, Ljava/lang/Character;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v0=(Reference);
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    #v1=(Char);
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .restart local p1
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Lcom/google/common/collect/Lists$StringAsImmutableList$1;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v1

    #v1=(Integer);
    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList$1;-><init>(Lcom/google/common/collect/Lists$StringAsImmutableList;II)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$StringAsImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
