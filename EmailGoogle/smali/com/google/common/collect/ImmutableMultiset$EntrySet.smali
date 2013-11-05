.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient multiset:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    .local p1, multiset:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 368
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 369
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    const/4 v2, 0x0

    .line 388
    #v2=(Null);
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    #v3=(Boolean);
    if-eqz v3, :cond_0

    move-object v1, p1

    .line 389
    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 390
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    #v3=(Integer);
    if-gtz v3, :cond_1

    .line 396
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    .line 393
    .restart local v1       #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_1
    #v0=(Uninit);v1=(Reference);v2=(Null);v4=(Uninit);
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #v3=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 394
    .local v0, count:I
    #v0=(Integer);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    #v3=(Integer);
    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 433
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 383
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->entryIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 364
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 378
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->distinctElements()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 405
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v1

    #v1=(Integer);
    new-array v0, v1, [Ljava/lang/Object;

    .line 406
    .local v0, newArray:[Ljava/lang/Object;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    .local p1, other:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v5

    .line 416
    .local v5, size:I
    #v5=(Integer);
    array-length v6, p1

    #v6=(Integer);
    if-ge v6, v5, :cond_1

    .line 417
    invoke-static {p1, v5}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 423
    :cond_0
    :goto_0
    move-object v4, p1

    .line 424
    .local v4, otherAsObjectArray:[Ljava/lang/Object;
    #v4=(Reference);
    const/4 v2, 0x0

    .line 425
    .local v2, index:I
    #v2=(Null);
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v1=(Reference);v2=(Integer);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 426
    .local v0, element:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    #v3=(Integer);
    aput-object v0, v4, v2

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 418
    .end local v0           #element:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v4           #otherAsObjectArray:[Ljava/lang/Object;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Integer);
    array-length v6, p1

    if-le v6, v5, :cond_0

    .line 419
    const/4 v6, 0x0

    #v6=(Null);
    aput-object v6, p1, v5

    goto :goto_0

    .line 428
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v4       #otherAsObjectArray:[Ljava/lang/Object;
    :cond_2
    #v0=(Conflicted);v1=(Reference);v2=(Integer);v3=(Conflicted);v4=(Reference);v6=(Boolean);
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 439
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    #v0=(Reference);
    return-object v0
.end method
