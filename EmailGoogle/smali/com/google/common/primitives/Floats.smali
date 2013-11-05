.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000([FFII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$100([FFII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static compare(FF)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static hashCode(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 65
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private static indexOf([FFII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 129
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, p3, :cond_1

    .line 130
    aget v1, p0, v0

    #v1=(Integer);
    cmpl-float v1, v1, p1

    #v1=(Byte);
    if-nez v1, :cond_0

    .line 134
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 129
    .restart local v0       #i:I
    :cond_0
    #v1=(Byte);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method private static lastIndexOf([FFII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 187
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, p2, :cond_1

    .line 188
    aget v1, p0, v0

    #v1=(Integer);
    cmpl-float v1, v1, p1

    #v1=(Byte);
    if-nez v1, :cond_0

    .line 192
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 187
    .restart local v0       #i:I
    :cond_0
    #v1=(Byte);
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 192
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method
