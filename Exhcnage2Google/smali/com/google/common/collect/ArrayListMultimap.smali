.class public final Lcom/google/common/collect/ArrayListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "ArrayListMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field transient expectedValuesPerKey:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 104
    #p0=(Reference);
    const/16 v0, 0xa

    #v0=(PosByte);
    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 105
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "stream"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 156
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 157
    .local v0, distinctKeys:I
    #v0=(Integer);
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 158
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ArrayListMultimap;->setMap(Ljava/util/Map;)V

    .line 159
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 160
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 147
    iget v0, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 148
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 149
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method createCollection()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    iget v1, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    #v1=(Integer);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ArrayListMultimap;,"Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
