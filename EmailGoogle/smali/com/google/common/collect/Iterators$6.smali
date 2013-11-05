.class final Lcom/google/common/collect/Iterators$6;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$pad:Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/google/common/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$6;->val$size:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$6;->val$pad:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/common/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$6;->next()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$6;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 619
    new-instance v4, Ljava/util/NoSuchElementException;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    #v4=(Reference);
    throw v4

    .line 621
    :cond_0
    #v4=(Boolean);
    iget v4, p0, Lcom/google/common/collect/Iterators$6;->val$size:I

    #v4=(Integer);
    new-array v0, v4, [Ljava/lang/Object;

    .line 622
    .local v0, array:[Ljava/lang/Object;
    #v0=(Reference);
    const/4 v1, 0x0

    .line 623
    .local v1, count:I
    :goto_0
    #v1=(Integer);v4=(Conflicted);
    iget v4, p0, Lcom/google/common/collect/Iterators$6;->val$size:I

    #v4=(Integer);
    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/common/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 624
    iget-object v4, p0, Lcom/google/common/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_1
    #v4=(Integer);
    move v2, v1

    .local v2, i:I
    :goto_1
    #v2=(Integer);
    iget v4, p0, Lcom/google/common/collect/Iterators$6;->val$size:I

    if-ge v2, v4, :cond_2

    .line 627
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v4, v0, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 631
    :cond_2
    #v4=(Integer);
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 633
    .local v3, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    #v3=(Reference);
    iget-boolean v4, p0, Lcom/google/common/collect/Iterators$6;->val$pad:Z

    #v4=(Boolean);
    if-nez v4, :cond_3

    iget v4, p0, Lcom/google/common/collect/Iterators$6;->val$size:I

    #v4=(Integer);
    if-ne v1, v4, :cond_4

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_3
    :goto_2
    return-object v3

    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_4
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_2
.end method
