.class final Lcom/google/common/collect/Cut$AboveAll;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboveAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Cut",
        "<",
        "Ljava/lang/Comparable",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/google/common/collect/Cut$AboveAll;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/Cut$AboveAll;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 184
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/Cut$AboveAll;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    #v0=(Reference);
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/common/collect/Cut;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, o:Lcom/google/common/collect/Cut;,"Lcom/google/common/collect/Cut<Ljava/lang/Comparable<*>;>;"
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$AboveAll;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/AssertionError;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 209
    const-string v0, "+\u221e)"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    return-void
.end method

.method greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, value:Ljava/lang/Comparable;,"Ljava/lang/Comparable<*>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    new-instance v0, Ljava/lang/AssertionError;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 2
    .parameter "boundType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    new-instance v0, Ljava/lang/AssertionError;

    #v0=(UninitRef);
    const-string v1, "this statement should be unreachable"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #v0=(Reference);
    throw v0
.end method

.method withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .parameter "boundType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #v0=(Reference);
    throw v0
.end method
