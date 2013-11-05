.class public abstract Lcom/google/common/collect/AbstractLinkedIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "AbstractLinkedIterator.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private nextOrNull:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/AbstractLinkedIterator;,"Lcom/google/common/collect/AbstractLinkedIterator<TT;>;"
    .local p1, firstOrNull:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 54
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method protected abstract computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/google/common/collect/AbstractLinkedIterator;,"Lcom/google/common/collect/AbstractLinkedIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/google/common/collect/AbstractLinkedIterator;,"Lcom/google/common/collect/AbstractLinkedIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractLinkedIterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 76
    :cond_0
    :try_start_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractLinkedIterator;->computeNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;

    return-object v0

    :catchall_0
    #v0=(Boolean);v1=(Uninit);
    move-exception v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractLinkedIterator;->computeNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractLinkedIterator;->nextOrNull:Ljava/lang/Object;

    throw v0
.end method
