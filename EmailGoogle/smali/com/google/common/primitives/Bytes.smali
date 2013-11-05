.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000([BBII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$100([BBII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static hashCode(B)I
    .locals 0
    .parameter "value"

    .prologue
    .line 58
    return p0
.end method

.method private static indexOf([BBII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 95
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, p3, :cond_1

    .line 96
    aget-byte v1, p0, v0

    #v1=(Byte);
    if-ne v1, p1, :cond_0

    .line 100
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 95
    .restart local v0       #i:I
    :cond_0
    #v1=(Byte);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method private static lastIndexOf([BBII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 149
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, p2, :cond_1

    .line 150
    aget-byte v1, p0, v0

    #v1=(Byte);
    if-ne v1, p1, :cond_0

    .line 154
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 149
    .restart local v0       #i:I
    :cond_0
    #v1=(Byte);
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method
