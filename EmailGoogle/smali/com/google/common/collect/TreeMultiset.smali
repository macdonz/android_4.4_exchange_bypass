.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;,
        Lcom/google/common/collect/TreeMultiset$SetCountModifier;,
        Lcom/google/common/collect/TreeMultiset$RemoveModifier;,
        Lcom/google/common/collect/TreeMultiset$AddModifier;,
        Lcom/google/common/collect/TreeMultiset$MultisetModifier;,
        Lcom/google/common/collect/TreeMultiset$Node;,
        Lcom/google/common/collect/TreeMultiset$LiveEntry;,
        Lcom/google/common/collect/TreeMultiset$Reference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DISTINCT_AGGREGATE:Lcom/google/common/collect/BstAggregate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstAggregate",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NODE_FACTORY:Lcom/google/common/collect/BstNodeFactory; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstNodeFactory",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SIZE_AGGREGATE:Lcom/google/common/collect/BstAggregate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstAggregate",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private final transient range:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$Reference",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$3;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/TreeMultiset;->DISTINCT_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    .line 430
    new-instance v0, Lcom/google/common/collect/TreeMultiset$4;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$4;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/TreeMultiset;->SIZE_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    .line 448
    new-instance v0, Lcom/google/common/collect/TreeMultiset$5;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$5;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/TreeMultiset;->NODE_FACTORY:Lcom/google/common/collect/BstNodeFactory;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$Reference;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/GeneralRange",
            "<TE;>;",
            "Lcom/google/common/collect/TreeMultiset$Reference",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, range:Lcom/google/common/collect/GeneralRange;,"Lcom/google/common/collect/GeneralRange<TE;>;"
    .local p2, root:Lcom/google/common/collect/TreeMultiset$Reference;,"Lcom/google/common/collect/TreeMultiset$Reference<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->comparator()Ljava/util/Comparator;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 134
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 135
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 136
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 128
    #p0=(Reference);
    invoke-static {p1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 129
    new-instance v0, Lcom/google/common/collect/TreeMultiset$Reference;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 130
    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/collect/TreeMultiset$Node;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/TreeMultiset$Node;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/TreeMultiset$Node;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private static countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, entry:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez p0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    #v0=(UninitRef);
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method private distinctAggregate()Lcom/google/common/collect/BstAggregate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstAggregate",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->DISTINCT_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    #v0=(Reference);
    return-object v0
.end method

.method private static distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, node:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$Node;->access$1000(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method private iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "direction"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, start:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)V

    .line 283
    .local v0, pathIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;>;"
    #v0=(Reference);
    new-instance v1, Lcom/google/common/collect/TreeMultiset$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/Iterator;)V

    #v1=(Reference);
    return-object v1
.end method

.method private mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>.MultisetModifier;)I"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    .local p2, modifier:Lcom/google/common/collect/TreeMultiset$MultisetModifier;,"Lcom/google/common/collect/TreeMultiset<TE;>.MultisetModifier;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->singleRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->nodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v4

    #v4=(Reference);
    invoke-static {p2, v3, v4}, Lcom/google/common/collect/BstMutationRule;->createRule(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)Lcom/google/common/collect/BstMutationRule;

    move-result-object v1

    .line 199
    .local v1, mutationRule:Lcom/google/common/collect/BstMutationRule;,"Lcom/google/common/collect/BstMutationRule<TE;Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/BstNode;

    invoke-static {v4, v1, v3, p1}, Lcom/google/common/collect/BstOperations;->mutate(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 201
    .local v0, mutationResult:Lcom/google/common/collect/BstMutationResult;,"Lcom/google/common/collect/BstMutationResult<TE;Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    #v0=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/BstMutationResult;->getOriginalRoot()Lcom/google/common/collect/BstNode;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/collect/BstMutationResult;->getChangedRoot()Lcom/google/common/collect/BstNode;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/TreeMultiset$Reference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 203
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #v3=(Reference);
    throw v3

    .line 205
    :cond_0
    #v3=(Boolean);
    invoke-virtual {v0}, Lcom/google/common/collect/BstMutationResult;->getOriginalTarget()Lcom/google/common/collect/BstNode;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    .line 206
    .local v2, original:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v3

    #v3=(Integer);
    return v3
.end method

.method private nodeFactory()Lcom/google/common/collect/BstNodeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstNodeFactory",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->NODE_FACTORY:Lcom/google/common/collect/BstNodeFactory;

    #v0=(Reference);
    return-object v0
.end method

.method private pathFactory()Lcom/google/common/collect/BstPathFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstPathFactory",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/BstInOrderPath;->inOrderFactory()Lcom/google/common/collect/BstPathFactory;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 560
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Comparator;

    .line 561
    const-class v1, Lcom/google/common/collect/AbstractSortedMultiset;

    #v1=(Reference);
    const-string v2, "comparator"

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    const-class v0, Lcom/google/common/collect/TreeMultiset;

    const-string v1, "rootReference"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/TreeMultiset$Reference;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>()V

    #v1=(Reference);
    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 567
    return-void
.end method

.method private sizeAggregate()Lcom/google/common/collect/BstAggregate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstAggregate",
            "<",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->SIZE_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    #v0=(Reference);
    return-object v0
.end method

.method private static sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, node:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<*>;"
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    #v0=(LongLo);v1=(LongHi);
    return-wide v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$Node;->access$900(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    goto :goto_0
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
    .line 550
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 551
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 552
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 553
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "occurrences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-nez p2, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 216
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .line 215
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AddModifier;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/TreeMultiset$AddModifier;-><init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    return-object p1
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 337
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/TreeMultiset$Node;

    .line 338
    .local v1, root:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->fullRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->nodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v2, v3, v4, v1}, Lcom/google/common/collect/BstRangeOps;->minusRange(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 341
    .local v0, cleared:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/TreeMultiset$Reference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 342
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #v2=(Reference);
    throw v2

    .line 344
    :cond_0
    #v2=(Boolean);
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 6
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v4, 0x0

    .line 180
    :try_start_0
    #v4=(Null);
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    .local v1, e:Ljava/lang/Object;,"TE;"
    #v1=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v5

    #v5=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/BstNode;

    invoke-static {v5, v3, v1}, Lcom/google/common/collect/BstOperations;->seek(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    .line 183
    .local v2, node:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 189
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #node:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v5=(Conflicted);
    return v3

    .restart local v1       #e:Ljava/lang/Object;,"TE;"
    :cond_0
    #v0=(Uninit);v1=(Reference);v2=(Uninit);v3=(Boolean);v5=(Uninit);
    move v3, v4

    .line 185
    #v3=(Null);
    goto :goto_0

    .line 186
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    #v0=(Reference);
    move v3, v4

    .line 187
    #v3=(Null);
    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    #v0=(Uninit);v3=(Conflicted);
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    #v0=(Reference);
    move v3, v4

    .line 189
    #v3=(Null);
    goto :goto_0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 5
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
    .line 263
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 264
    .local v0, root:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    sget-object v3, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    #v3=(Reference);
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->pathFactory()Lcom/google/common/collect/BstPathFactory;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v2, v3, v4, v0}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/BstInOrderPath;

    .line 266
    .local v1, startingPath:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method distinctElements()I
    .locals 3

    .prologue
    .line 167
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 168
    .local v0, root:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Lcom/google/common/collect/BstRangeOps;->totalInRange(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    #v1=(Integer);
    return v1
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 5
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
    .line 255
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 256
    .local v0, root:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    sget-object v3, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    #v3=(Reference);
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->pathFactory()Lcom/google/common/collect/BstPathFactory;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v2, v3, v4, v0}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/BstInOrderPath;

    .line 258
    .local v1, startingPath:Lcom/google/common/collect/BstInOrderPath;,"Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 3
    .parameter
    .parameter "boundType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, upperBound:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/AbstractSortedMultiset;->comparator:Ljava/util/Comparator;

    #v2=(Reference);
    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$Reference;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 5
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v2, 0x0

    .line 221
    #v2=(Null);
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 223
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);
    if-nez p2, :cond_2

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    goto :goto_0

    .line 227
    :cond_2
    :try_start_0
    #v2=(Null);
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    .local v1, e:Ljava/lang/Object;,"TE;"
    #v1=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/common/collect/TreeMultiset$RemoveModifier;

    #v3=(UninitRef);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v3, p0, p2, v4}, Lcom/google/common/collect/TreeMultiset$RemoveModifier;-><init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V

    #v3=(Reference);
    invoke-direct {p0, v1, v3}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    #v2=(Integer);
    goto :goto_0

    .line 229
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    :catch_0
    #v1=(Conflicted);v2=(Null);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/ClassCastException;
    #v0=(Reference);
    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 246
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SetCountModifier;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/TreeMultiset$SetCountModifier;-><init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 238
    new-instance v0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;-><init>(Lcom/google/common/collect/TreeMultiset;IILcom/google/common/collect/TreeMultiset$1;)V

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v0

    #v0=(Integer);
    if-ne v0, p2, :cond_0

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

.method public size()I
    .locals 3

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 174
    .local v0, root:Lcom/google/common/collect/TreeMultiset$Node;,"Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->sizeAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Lcom/google/common/collect/BstRangeOps;->totalInRange(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    #v1=(Integer);
    return v1
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 3
    .parameter
    .parameter "boundType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, lowerBound:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/AbstractSortedMultiset;->comparator:Ljava/util/Comparator;

    #v2=(Reference);
    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$Reference;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
