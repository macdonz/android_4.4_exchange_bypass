.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,
        Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
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
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, countMap:Ljava/util/concurrent/ConcurrentMap;,"Ljava/util/concurrent/ConcurrentMap<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 135
    #p0=(Reference);
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 136
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference);
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 576
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 578
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 580
    .local v0, deserializedCountMap:Ljava/util/concurrent/ConcurrentMap;,"Ljava/util/concurrent/ConcurrentMap<TE;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    #v1=(Reference);
    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method private safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v2, 0x0

    .line 159
    :try_start_0
    #v2=(Null);
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :goto_0
    #v0=(Conflicted);
    return-object v1

    .line 160
    :catch_0
    #v0=(Uninit);v1=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    #v0=(Reference);
    move-object v1, v2

    .line 161
    #v1=(Null);
    goto :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    #v0=(Uninit);v1=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    #v0=(Reference);
    move-object v1, v2

    .line 163
    #v1=(Null);
    goto :goto_0
.end method

.method private snapshot()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 200
    .local v4, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    #v4=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 201
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, element:Ljava/lang/Object;,"TE;"
    #v0=(Reference);
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    #v2=(Integer);
    if-lez v2, :cond_0

    .line 203
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 206
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v2           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-object v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 572
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 573
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 10
    .parameter
    .parameter "occurrences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x1

    #v6=(One);
    const/4 v7, 0x0

    .line 221
    #v7=(Null);
    if-nez p2, :cond_1

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v7

    .line 256
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Conflicted);
    return v7

    .line 224
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(One);v7=(Null);v8=(Uninit);v9=(Uninit);
    if-lez p2, :cond_4

    move v5, v6

    :goto_1
    #v5=(Boolean);
    const-string v8, "Invalid occurrences: %s"

    #v8=(Reference);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v6, v7

    invoke-static {v5, v8, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 228
    .local v0, existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v0=(Reference);
    if-nez v0, :cond_3

    .line 229
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v5=(Reference);
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #v6=(UninitRef);
    invoke-direct {v6, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #v6=(Reference);
    invoke-interface {v5, p1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    .restart local v0       #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v0, :cond_0

    .line 237
    :cond_3
    #v5=(Conflicted);
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 238
    .local v3, oldValue:I
    #v3=(Integer);
    if-eqz v3, :cond_5

    .line 240
    :try_start_0
    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v2

    .line 241
    .local v2, newValue:I
    #v2=(Integer);
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    move v7, v3

    .line 243
    #v7=(Integer);
    goto :goto_0

    .end local v0           #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2           #newValue:I
    .end local v3           #oldValue:I
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(One);v7=(Null);v8=(Uninit);v9=(Uninit);
    move v5, v7

    .line 224
    #v5=(Null);
    goto :goto_1

    .line 245
    .restart local v0       #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v3       #oldValue:I
    :catch_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v5=(Conflicted);v6=(Reference);v8=(Reference);v9=(Reference);
    move-exception v4

    .line 246
    .local v4, overflow:Ljava/lang/ArithmeticException;
    #v4=(Reference);
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #v5=(UninitRef);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "Overflow adding "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " occurrences to a count of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v5=(Reference);
    throw v5

    .line 253
    .end local v4           #overflow:Ljava/lang/ArithmeticException;
    :cond_5
    #v4=(Uninit);v5=(Conflicted);v7=(Null);
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #v1=(UninitRef);
    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 254
    .local v1, newCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v1=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v5=(Reference);
    invoke-interface {v5, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 523
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 524
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 149
    .local v0, existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Uninit);
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    #v1=(Integer);
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
    .line 446
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 447
    .local v0, delegate:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    #v1=(Reference);
    return-object v1
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 474
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
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
    .line 484
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    .line 502
    .local v0, readOnlyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 466
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 467
    .local v0, result:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .end local v0           #result:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    .restart local v0       #result:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 470
    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 478
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

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
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 276
    #v5=(Null);
    if-nez p2, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    .line 298
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Conflicted);
    return v5

    .line 279
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Null);v6=(Uninit);v7=(Uninit);
    if-lez p2, :cond_4

    move v3, v4

    :goto_1
    #v3=(Boolean);
    const-string v6, "Invalid occurrences: %s"

    #v6=(Reference);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 282
    .local v0, existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 286
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 287
    .local v2, oldValue:I
    #v2=(Integer);
    if-eqz v2, :cond_0

    .line 288
    sub-int v3, v2, p2

    #v3=(Integer);
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 289
    .local v1, newValue:I
    #v1=(Integer);
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 290
    if-nez v1, :cond_3

    .line 293
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference);
    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    #v3=(Conflicted);
    move v5, v2

    .line 295
    #v5=(Integer);
    goto :goto_0

    .end local v0           #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1           #newValue:I
    .end local v2           #oldValue:I
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Null);v6=(Uninit);v7=(Uninit);
    move v3, v5

    .line 279
    #v3=(Null);
    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
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
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v3, 0x0

    .line 349
    #v3=(Null);
    const-string v4, "count"

    #v4=(Reference);
    invoke-static {p2, v4}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 351
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 352
    .local v0, existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v0=(Reference);
    if-nez v0, :cond_3

    .line 353
    if-nez p2, :cond_2

    move v2, v3

    .line 384
    :cond_1
    :goto_0
    #v2=(Integer);v3=(Reference);
    return v2

    .line 356
    :cond_2
    #v2=(Conflicted);v3=(Null);
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference);
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    #v5=(UninitRef);
    invoke-direct {v5, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #v5=(Reference);
    invoke-interface {v4, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    .restart local v0       #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_3

    move v2, v3

    .line 358
    #v2=(Null);
    goto :goto_0

    .line 365
    :cond_3
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 366
    .local v2, oldValue:I
    #v2=(Integer);
    if-nez v2, :cond_6

    .line 367
    if-nez p2, :cond_4

    move v2, v3

    .line 368
    #v2=(Null);
    goto :goto_0

    .line 370
    :cond_4
    #v2=(Integer);
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #v1=(UninitRef);
    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 371
    .local v1, newCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v1=(Reference);
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference);
    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    :cond_5
    #v4=(Conflicted);
    move v2, v3

    .line 373
    #v2=(Null);
    goto :goto_0

    .line 378
    .end local v1           #newCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_6
    #v1=(Conflicted);v2=(Integer);
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 379
    if-nez p2, :cond_1

    .line 382
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference);
    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 7
    .parameter
    .parameter "expectedOldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    .line 403
    #v3=(One);
    const-string v5, "oldCount"

    #v5=(Reference);
    invoke-static {p2, v5}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 404
    const-string v5, "newCount"

    invoke-static {p3, v5}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 407
    .local v0, existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v0=(Reference);
    if-nez v0, :cond_2

    .line 408
    if-eqz p2, :cond_1

    move v3, v4

    .line 440
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v3

    .line 410
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Reference);v6=(Uninit);
    if-eqz p3, :cond_0

    .line 414
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #v6=(UninitRef);
    invoke-direct {v6, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #v6=(Reference);
    invoke-interface {v5, p1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move v3, v4

    #v3=(Null);
    goto :goto_0

    .line 417
    :cond_2
    #v3=(One);v6=(Uninit);
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 418
    .local v2, oldValue:I
    #v2=(Integer);
    if-ne v2, p2, :cond_7

    .line 419
    if-nez v2, :cond_6

    .line 420
    if-nez p3, :cond_3

    .line 422
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference);
    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_3
    #v4=(Null);
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #v1=(UninitRef);
    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 426
    .local v1, newCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    #v1=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    :cond_4
    #v5=(Conflicted);
    move v4, v3

    :cond_5
    #v4=(Boolean);
    move v3, v4

    #v3=(Boolean);
    goto :goto_0

    .line 430
    .end local v1           #newCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_6
    #v1=(Uninit);v3=(One);v4=(Null);v5=(Reference);
    invoke-virtual {v0, v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    .line 431
    if-nez p3, :cond_0

    .line 434
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference);
    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    #v4=(Null);v5=(Conflicted);
    move v3, v4

    .line 440
    #v3=(Null);
    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 174
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const-wide/16 v1, 0x0

    .line 175
    .local v1, sum:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 176
    .local v3, value:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v1, v4

    goto :goto_0

    .line 178
    .end local v3           #value:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    #v3=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    #v4=(Integer);
    return v4
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
