.class final Lcom/google/common/collect/TreeMultiset$Node;
.super Lcom/google/common/collect/BstNode;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/BstNode",
        "<TE;",
        "Lcom/google/common/collect/TreeMultiset$Node",
        "<TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final distinct:I

.field private final size:J


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter "elemCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x0

    .line 389
    #v0=(Null);
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)V

    .line 390
    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 370
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;I)V

    #p0=(Reference);
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)V
    .locals 4
    .parameter
    .end parameter
    .parameter "elemCount"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    .local p3, left:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    .local p4, right:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/common/collect/BstNode;-><init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)V

    .line 377
    #p0=(Reference);
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 378
    int-to-long v0, p2

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p3}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    invoke-static {p4}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->size:J

    .line 379
    invoke-static {p3}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    invoke-static {p4}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->distinct:I

    .line 380
    return-void

    .line 377
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 370
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$1000(Lcom/google/common/collect/TreeMultiset$Node;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 370
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->distinct:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$900(Lcom/google/common/collect/TreeMultiset$Node;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->size:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method


# virtual methods
.method elemCount()I
    .locals 7

    .prologue
    .line 383
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-wide v3, p0, Lcom/google/common/collect/TreeMultiset$Node;->size:J

    #v3=(LongLo);v4=(LongHi);
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/google/common/collect/TreeMultiset$Node;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    sub-long/2addr v3, v5

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v2}, Lcom/google/common/collect/TreeMultiset$Node;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 385
    .local v0, result:J
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    #v2=(Integer);
    return v2
.end method
