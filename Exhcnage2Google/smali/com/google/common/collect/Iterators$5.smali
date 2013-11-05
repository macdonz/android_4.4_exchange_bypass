.class final Lcom/google/common/collect/Iterators$5;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$inputs:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 529
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 543
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    #v1=(Reference);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .local v0, currentHasNext:Z
    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    goto :goto_0

    .line 546
    :cond_0
    #v1=(Conflicted);
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 553
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    .line 554
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    const-string v1, "no calls to next() since last call to remove()"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 561
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    .line 562
    return-void

    .line 558
    :cond_0
    #v0=(Reference);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
