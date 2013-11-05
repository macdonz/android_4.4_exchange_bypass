.class final Lcom/google/common/collect/Cut$AboveValue;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboveValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/Cut",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, endpoint:Ljava/lang/Comparable;,"TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 293
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 327
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    const/16 v0, 0x28

    #v0=(PosByte);
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    return-void
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 330
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    return-void
.end method

.method greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 343
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, value:Ljava/lang/Comparable;,"TC;"
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    #v0=(Integer);
    if-gez v0, :cond_0

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

.method leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 3
    .parameter "boundType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p2, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<TC;>;"
    sget-object v1, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    #v1=(Reference);
    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    #v2=(Integer);
    aget v1, v1, v2

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 312
    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #v1=(Reference);
    throw v1

    .line 309
    :pswitch_0
    #v1=(Integer);
    iget-object v1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v1=(Reference);
    invoke-virtual {p2, v1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 310
    .local v0, next:Ljava/lang/Comparable;,"TC;"
    #v0=(Reference);
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_0
    move-object p0, v1

    .end local v0           #next:Ljava/lang/Comparable;,"TC;"
    .end local p0           #this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    :pswitch_1
    #v0=(Conflicted);v1=(Conflicted);
    return-object p0

    .restart local v0       #next:Ljava/lang/Comparable;,"TC;"
    .restart local p0       #this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    :cond_0
    #v0=(Reference);v1=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 3
    .parameter "boundType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lcom/google/common/collect/Cut$AboveValue;,"Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p2, domain:Lcom/google/common/collect/DiscreteDomain;,"Lcom/google/common/collect/DiscreteDomain<TC;>;"
    sget-object v1, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    #v1=(Reference);
    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    #v2=(Integer);
    aget v1, v1, v2

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 323
    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #v1=(Reference);
    throw v1

    .line 318
    :pswitch_0
    #v1=(Integer);
    iget-object v1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    #v1=(Reference);
    invoke-virtual {p2, v1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 319
    .local v0, next:Ljava/lang/Comparable;,"TC;"
    #v0=(Reference);
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    .line 321
    .end local v0           #next:Ljava/lang/Comparable;,"TC;"
    :goto_0
    #v0=(Conflicted);
    return-object v1

    .line 319
    .restart local v0       #next:Ljava/lang/Comparable;,"TC;"
    :cond_0
    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_0

    .end local v0           #next:Ljava/lang/Comparable;,"TC;"
    :pswitch_1
    #v0=(Uninit);v1=(Integer);
    move-object v1, p0

    .line 321
    #v1=(Reference);
    goto :goto_0

    .line 316
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
