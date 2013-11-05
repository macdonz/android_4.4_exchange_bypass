.class final Lcom/google/common/collect/Iterators$4;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;
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
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/common/collect/Iterators$4;->val$iterable:Ljava/lang/Iterable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 403
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->val$iterable:Ljava/lang/Iterable;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    .line 411
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
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
    .line 415
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$4;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 416
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 418
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    .line 419
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    const-string v1, "no calls to next() since last call to remove()"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 426
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    .line 427
    return-void

    .line 423
    :cond_0
    #v0=(Reference);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
