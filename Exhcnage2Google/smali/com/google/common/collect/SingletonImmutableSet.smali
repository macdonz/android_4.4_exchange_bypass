.class final Lcom/google/common/collect/SingletonImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SingletonImmutableSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient cachedHashCode:I

.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 47
    #p0=(Reference);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter "hashCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 52
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 53
    iput p2, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 54
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 94
    #v1=(One);
    if-ne p1, p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 97
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    instance-of v3, p1, Ljava/util/Set;

    #v3=(Boolean);
    if-eqz v3, :cond_3

    move-object v0, p1

    .line 98
    #v0=(Reference);
    check-cast v0, Ljava/util/Set;

    .line 99
    .local v0, that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    #v3=(Integer);
    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v3=(Reference);
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :cond_2
    #v3=(Integer);v4=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0

    .end local v0           #that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_3
    #v0=(Uninit);v1=(One);v3=(Boolean);v4=(Uninit);
    move v1, v2

    .line 101
    #v1=(Null);
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 106
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 107
    .local v0, code:I
    #v0=(Integer);
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 110
    :cond_0
    #v1=(Conflicted);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    #v0=(Integer);
    if-eqz v0, :cond_0

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

.method isPartialView()Z
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v2=(Reference);
    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x1

    .line 82
    #v2=(One);
    array-length v1, p1

    #v1=(Integer);
    if-nez v1, :cond_1

    .line 83
    invoke-static {p1, v2}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 88
    :cond_0
    :goto_0
    move-object v0, p1

    .line 89
    .local v0, objectArray:[Ljava/lang/Object;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v2=(Reference);
    aput-object v2, v0, v1

    .line 90
    return-object p1

    .line 84
    .end local v0           #objectArray:[Ljava/lang/Object;
    :cond_1
    #v0=(Uninit);v1=(Integer);v2=(One);
    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 85
    const/4 v1, 0x0

    #v1=(Null);
    aput-object v1, p1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, elementToString:Ljava/lang/String;
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #v1=(Reference);
    const/16 v2, 0x5b

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
