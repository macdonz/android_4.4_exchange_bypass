.class Lcom/google/common/collect/RegularContiguousSet$1;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final last:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/RegularContiguousSet$1;,"Lcom/google/common/collect/RegularContiguousSet.1;"
    .local p2, x0:Ljava/lang/Comparable;,"TC;"
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$1;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    .line 70
    #p0=(Reference);
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$1;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$1;->last:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/RegularContiguousSet$1;,"Lcom/google/common/collect/RegularContiguousSet.1;"
    .local p1, previous:Ljava/lang/Comparable;,"TC;"
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$1;->last:Ljava/lang/Comparable;

    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$1;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/RegularContiguousSet$1;,"Lcom/google/common/collect/RegularContiguousSet.1;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularContiguousSet$1;->computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
