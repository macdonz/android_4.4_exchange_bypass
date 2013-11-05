.class final Lcom/google/common/cache/LocalCache$Values;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0
    .parameter

    .prologue
    .line 4497
    .local p0, this:Lcom/google/common/cache/LocalCache$Values;,"Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4521
    .local p0, this:Lcom/google/common/cache/LocalCache$Values;,"Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4522
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 4516
    .local p0, this:Lcom/google/common/cache/LocalCache$Values;,"Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4511
    .local p0, this:Lcom/google/common/cache/LocalCache$Values;,"Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4501
    .local p0, this:Lcom/google/common/cache/LocalCache$Values;,"Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/cache/LocalCache$ValueIterator;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$ValueIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4506
    .local p0, this:Lcom/google/common/cache/LocalCache$Values;,"Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
