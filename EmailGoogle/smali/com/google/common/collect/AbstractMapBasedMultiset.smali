.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, backingMap:Ljava/util/Map;,"Ljava/util/Map<TE;Lcom/google/common/collect/Count;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 63
    #p0=(Reference);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 64
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$110(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x1

    #v2=(LongLo);v3=(LongHi);
    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v0=(LongLo);v1=(LongHi);
    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private static getAndSet(Lcom/google/common/collect/Count;I)I
    .locals 1
    .parameter "i"
    .parameter "count"

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method private removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 6
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<TE;Lcom/google/common/collect/Count;>;"
    const/4 v1, 0x0

    .line 307
    #v1=(Null);
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Count;

    .line 308
    .local v0, frequency:Lcom/google/common/collect/Count;
    if-nez v0, :cond_0

    .line 313
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1

    .line 311
    :cond_0
    #v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v1

    .line 312
    .local v1, numberRemoved:I
    #v1=(Integer);
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v2=(LongLo);v3=(LongHi);
    int-to-long v4, v1

    #v4=(LongLo);v5=(LongHi);
    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 11
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    .line 228
    #v6=(Null);
    if-nez p2, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 246
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return v3

    .line 231
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(One);v6=(Null);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    if-lez p2, :cond_1

    move v4, v5

    :goto_1
    #v4=(Boolean);
    const-string v7, "occurrences cannot be negative: %s"

    #v7=(Reference);
    new-array v8, v5, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Count;

    .line 235
    .local v0, frequency:Lcom/google/common/collect/Count;
    if-nez v0, :cond_2

    .line 236
    const/4 v3, 0x0

    .line 237
    .local v3, oldCount:I
    #v3=(Null);
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v5, Lcom/google/common/collect/Count;

    #v5=(UninitRef);
    invoke-direct {v5, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    #v5=(Reference);
    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v4=(LongLo);v5=(LongHi);
    int-to-long v6, p2

    #v6=(LongLo);v7=(LongHi);
    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    .end local v0           #frequency:Lcom/google/common/collect/Count;
    .end local v3           #oldCount:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(One);v6=(Null);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    move v4, v6

    .line 231
    #v4=(Null);
    goto :goto_1

    .line 239
    .restart local v0       #frequency:Lcom/google/common/collect/Count;
    :cond_2
    #v0=(Reference);v4=(Reference);v7=(Reference);v8=(Reference);v9=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v3

    .line 240
    .restart local v3       #oldCount:I
    #v3=(Integer);
    int-to-long v7, v3

    #v7=(LongLo);v8=(LongHi);
    int-to-long v9, p2

    #v9=(LongLo);v10=(LongHi);
    add-long v1, v7, v9

    .line 241
    .local v1, newCount:J
    #v1=(LongLo);v2=(LongHi);
    const-wide/32 v7, 0x7fffffff

    cmp-long v4, v1, v7

    #v4=(Byte);
    if-gtz v4, :cond_3

    move v4, v5

    :goto_3
    #v4=(Boolean);
    const-string v7, "too many occurrences: %s"

    #v7=(Reference);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0, p2}, Lcom/google/common/collect/Count;->getAndAdd(I)I

    goto :goto_2

    :cond_3
    #v4=(Byte);v5=(One);v7=(LongLo);v8=(LongHi);
    move v4, v6

    .line 241
    #v4=(Null);
    goto :goto_3
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 138
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Count;

    .line 139
    .local v0, frequency:Lcom/google/common/collect/Count;
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v2}, Lcom/google/common/collect/Count;->set(I)V

    goto :goto_0

    .line 141
    .end local v0           #frequency:Lcom/google/common/collect/Count;
    :cond_0
    #v0=(Conflicted);v2=(Boolean);
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 142
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 143
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v2, 0x0

    .line 209
    :try_start_0
    #v2=(Null);
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Count;

    .line 210
    .local v1, frequency:Lcom/google/common/collect/Count;
    if-nez v1, :cond_0

    .line 214
    .end local v1           #frequency:Lcom/google/common/collect/Count;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    return v2

    .line 210
    .restart local v1       #frequency:Lcom/google/common/collect/Count;
    :cond_0
    #v0=(Uninit);v1=(Reference);v2=(Null);v3=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/Count;->get()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    #v2=(Integer);
    goto :goto_0

    .line 211
    .end local v1           #frequency:Lcom/google/common/collect/Count;
    :catch_0
    #v1=(Conflicted);v2=(Null);v3=(Conflicted);
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/NullPointerException;
    #v0=(Reference);
    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    #v0=(Uninit);
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/ClassCastException;
    #v0=(Reference);
    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    #v0=(Reference);
    return-object v0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, backingEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Lcom/google/common/collect/Count;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 8
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 250
    #v5=(Null);
    if-nez p2, :cond_1

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    .line 272
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Conflicted);
    return v5

    .line 253
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Null);v6=(Uninit);v7=(Uninit);
    if-lez p2, :cond_2

    move v3, v4

    :goto_1
    #v3=(Boolean);
    const-string v6, "occurrences cannot be negative: %s"

    #v6=(Reference);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Count;

    .line 256
    .local v0, frequency:Lcom/google/common/collect/Count;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v2

    .line 263
    .local v2, oldCount:I
    #v2=(Integer);
    if-le v2, p2, :cond_3

    .line 264
    move v1, p2

    .line 270
    .local v1, numberRemoved:I
    :goto_2
    #v1=(Integer);
    neg-int v3, v1

    #v3=(Integer);
    invoke-virtual {v0, v3}, Lcom/google/common/collect/Count;->addAndGet(I)I

    .line 271
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v3=(LongLo);v4=(LongHi);
    int-to-long v5, v1

    #v5=(LongLo);v6=(LongHi);
    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v5, v2

    .line 272
    #v5=(Integer);
    goto :goto_0

    .end local v0           #frequency:Lcom/google/common/collect/Count;
    .end local v1           #numberRemoved:I
    .end local v2           #oldCount:I
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Null);v6=(Uninit);v7=(Uninit);
    move v3, v5

    .line 253
    #v3=(Null);
    goto :goto_1

    .line 266
    .restart local v0       #frequency:Lcom/google/common/collect/Count;
    .restart local v2       #oldCount:I
    :cond_3
    #v0=(Reference);v2=(Integer);v3=(Reference);v4=(Reference);v6=(Reference);v7=(Reference);
    move v1, v2

    .line 267
    .restart local v1       #numberRemoved:I
    #v1=(Integer);
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method setBackingMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, backingMap:Ljava/util/Map;,"Ljava/util/Map<TE;Lcom/google/common/collect/Count;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const-string v2, "count"

    #v2=(Reference);
    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 281
    if-nez p2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Count;

    .line 283
    .local v0, existingCounter:Lcom/google/common/collect/Count;
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    .line 293
    .local v1, oldCount:I
    :cond_0
    :goto_0
    #v1=(Integer);v3=(Conflicted);
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v2=(LongLo);v3=(LongHi);
    sub-int v4, p2, v1

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 294
    return v1

    .line 285
    .end local v0           #existingCounter:Lcom/google/common/collect/Count;
    .end local v1           #oldCount:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Count;

    .line 286
    .restart local v0       #existingCounter:Lcom/google/common/collect/Count;
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    .line 288
    .restart local v1       #oldCount:I
    #v1=(Integer);
    if-nez v0, :cond_0

    .line 289
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v3, Lcom/google/common/collect/Count;

    #v3=(UninitRef);
    invoke-direct {v3, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    #v3=(Reference);
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 153
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
