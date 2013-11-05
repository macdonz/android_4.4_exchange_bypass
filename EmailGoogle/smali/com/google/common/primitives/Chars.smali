.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
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

.method static synthetic access$000([CCII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$100([CCII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static compare(CC)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 109
    sub-int v0, p0, p1

    #v0=(Integer);
    return v0
.end method

.method public static hashCode(C)I
    .locals 0
    .parameter "value"

    .prologue
    .line 64
    return p0
.end method

.method private static indexOf([CCII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 146
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, p3, :cond_1

    .line 147
    aget-char v1, p0, v0

    #v1=(Char);
    if-ne v1, p1, :cond_0

    .line 151
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 146
    .restart local v0       #i:I
    :cond_0
    #v1=(Char);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method private static lastIndexOf([CCII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 200
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, p2, :cond_1

    .line 201
    aget-char v1, p0, v0

    #v1=(Char);
    if-ne v1, p1, :cond_0

    .line 205
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 200
    .restart local v0       #i:I
    :cond_0
    #v1=(Char);
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 205
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method
