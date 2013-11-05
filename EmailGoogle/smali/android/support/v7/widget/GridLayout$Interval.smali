.class final Landroid/support/v7/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2201
    #p0=(Reference);
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2202
    iput p2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 2203
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 2225
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 2242
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 2228
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 2229
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v3=(Reference);v4=(Reference);
    move-object v0, p1

    .line 2232
    #v0=(Reference);
    check-cast v0, Landroid/support/v7/widget/GridLayout$Interval;

    .line 2234
    .local v0, interval:Landroid/support/v7/widget/GridLayout$Interval;
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v3=(Integer);
    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v4=(Integer);
    if-eq v3, v4, :cond_4

    move v1, v2

    .line 2235
    #v1=(Null);
    goto :goto_0

    .line 2238
    :cond_4
    #v1=(One);
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 2239
    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2247
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2248
    .local v0, result:I
    #v0=(Integer);
    mul-int/lit8 v1, v0, 0x1f

    #v1=(Integer);
    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v2=(Integer);
    add-int v0, v1, v2

    .line 2249
    return v0
.end method

.method inverse()Landroid/support/v7/widget/GridLayout$Interval;
    .locals 3

    .prologue
    .line 2210
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    #v0=(UninitRef);
    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v1=(Integer);
    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    #v0=(Reference);
    return-object v0
.end method

.method size()I
    .locals 2

    .prologue
    .line 2206
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v0=(Integer);
    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v1=(Integer);
    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "["

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
