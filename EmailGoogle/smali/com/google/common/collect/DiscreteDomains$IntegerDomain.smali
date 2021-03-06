.class final Lcom/google/common/collect/DiscreteDomains$IntegerDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomains.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomains$IntegerDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$IntegerDomain;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$IntegerDomain;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->distance(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public distance(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 58
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->maxValue()Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public maxValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    const v0, 0x7fffffff

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->minValue()Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public minValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    const/high16 v0, -0x8000

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->next(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public next(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "value"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    .local v0, i:I
    #v0=(Integer);
    const v1, 0x7fffffff

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Integer);
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomains$IntegerDomain;->previous(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public previous(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "value"

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    .local v0, i:I
    #v0=(Integer);
    const/high16 v1, -0x8000

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Integer);
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method
