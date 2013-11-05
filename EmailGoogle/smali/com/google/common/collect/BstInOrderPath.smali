.class final Lcom/google/common/collect/BstInOrderPath;
.super Lcom/google/common/collect/BstPath;
.source "BstInOrderPath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BstInOrderPath$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode",
        "<*TN;>;>",
        "Lcom/google/common/collect/BstPath",
        "<TN;",
        "Lcom/google/common/collect/BstInOrderPath",
        "<TN;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private transient nextInOrder:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private transient prevInOrder:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private final sideExtension:Lcom/google/common/collect/BstSide;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/common/collect/BstInOrderPath;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/common/collect/BstInOrderPath;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V
    .locals 3
    .parameter
    .end parameter
    .parameter "sideExtension"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    .local p1, tip:Lcom/google/common/collect/BstNode;,"TN;"
    .local p3, tail:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 63
    #v1=(Null);
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/BstPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstPath;)V

    .line 64
    #p0=(Reference);
    iput-object p2, p0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    .line 65
    sget-boolean v2, Lcom/google/common/collect/BstInOrderPath;->$assertionsDisabled:Z

    #v2=(Boolean);
    if-nez v2, :cond_2

    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    #v0=(Boolean);
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #v0=(Reference);
    throw v0

    :cond_0
    #v0=(One);
    move v2, v1

    #v2=(Null);
    goto :goto_0

    :cond_1
    #v2=(Boolean);
    move v0, v1

    #v0=(Null);
    goto :goto_1

    .line 66
    :cond_2
    #v0=(Boolean);
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstInOrderPath$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .locals 4
    .parameter "side"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3, p1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 70
    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v2

    .line 71
    .local v2, path:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    #v2=(Reference);
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    .line 72
    .local v1, otherSide:Lcom/google/common/collect/BstSide;
    :goto_0
    #v1=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3, v1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 73
    invoke-static {v2, v1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 82
    .end local v1           #otherSide:Lcom/google/common/collect/BstSide;
    .end local v2           #path:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    return-object v3

    .line 77
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);
    move-object v0, p0

    .line 78
    .local v0, current:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    :goto_2
    #v0=(Reference);v3=(Conflicted);
    iget-object v3, v0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    #v3=(Reference);
    if-ne v3, p1, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getPrefix()Lcom/google/common/collect/BstPath;

    move-result-object v0

    .end local v0           #current:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .restart local v0       #current:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->prefixOrNull()Lcom/google/common/collect/BstPath;

    move-result-object v0

    .end local v0           #current:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 82
    .restart local v0       #current:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_1
.end method

.method private static extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 3
    .parameter
    .parameter "side"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, path:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 54
    .local v0, tip:Lcom/google/common/collect/BstNode;,"TN;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/BstInOrderPath;

    #v1=(UninitRef);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v1, v2, p1, p0}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    #v1=(Reference);
    return-object v1
.end method

.method public static inOrderFactory()Lcom/google/common/collect/BstPathFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>()",
            "Lcom/google/common/collect/BstPathFactory",
            "<TN;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/collect/BstInOrderPath$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/BstInOrderPath$1;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method private nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .locals 3
    .parameter "side"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    sget-object v1, Lcom/google/common/collect/BstInOrderPath$2;->$SwitchMap$com$google$common$collect$BstSide:[I

    #v1=(Reference);
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v2

    #v2=(Integer);
    aget v1, v1, v2

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 96
    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #v1=(Reference);
    throw v1

    .line 90
    :pswitch_0
    #v1=(Integer);
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->prevInOrder:Lcom/google/common/base/Optional;

    .line 91
    .local v0, result:Lcom/google/common/base/Optional;,"Lcom/google/common/base/Optional<Lcom/google/common/collect/BstInOrderPath<TN;>;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/google/common/collect/BstInOrderPath;->prevInOrder:Lcom/google/common/base/Optional;

    .line 94
    :goto_0
    return-object v1

    :cond_0
    #v1=(Integer);
    move-object v1, v0

    .line 91
    #v1=(Reference);
    goto :goto_0

    .line 93
    .end local v0           #result:Lcom/google/common/base/Optional;,"Lcom/google/common/base/Optional<Lcom/google/common/collect/BstInOrderPath<TN;>;>;"
    :pswitch_1
    #v0=(Uninit);v1=(Integer);
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->nextInOrder:Lcom/google/common/base/Optional;

    .line 94
    .restart local v0       #result:Lcom/google/common/base/Optional;,"Lcom/google/common/base/Optional<Lcom/google/common/collect/BstInOrderPath<TN;>;>;"
    #v0=(Reference);
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/google/common/collect/BstInOrderPath;->nextInOrder:Lcom/google/common/base/Optional;

    goto :goto_0

    :cond_1
    #v1=(Integer);
    move-object v1, v0

    #v1=(Reference);
    goto :goto_0

    .line 88
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hasNext(Lcom/google/common/collect/BstSide;)Z
    .locals 1
    .parameter "side"

    .prologue
    .line 104
    .local p0, this:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public next(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1
    .parameter "side"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->hasNext(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 116
    :cond_0
    #v0=(Boolean);
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    return-object v0
.end method
