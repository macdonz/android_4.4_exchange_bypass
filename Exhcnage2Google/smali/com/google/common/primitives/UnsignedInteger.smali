.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "UnsignedInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/common/primitives/UnsignedInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ZERO:Lcom/google/common/primitives/UnsignedInteger;

    .line 44
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ONE:Lcom/google/common/primitives/UnsignedInteger;

    .line 45
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 50
    #p0=(Reference);
    and-int/lit8 v0, p1, -0x1

    #v0=(Integer);
    iput v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 51
    return-void
.end method

.method public static asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/primitives/UnsignedInteger;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/common/primitives/UnsignedInteger;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v0=(Integer);
    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedInts;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedInteger;->compareTo(Lcom/google/common/primitives/UnsignedInteger;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    long-to-double v0, v0

    #v0=(DoubleLo);v1=(DoubleHi);
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 213
    #v1=(Null);
    instance-of v2, p1, Lcom/google/common/primitives/UnsignedInteger;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 214
    #v0=(Reference);
    check-cast v0, Lcom/google/common/primitives/UnsignedInteger;

    .line 215
    .local v0, other:Lcom/google/common/primitives/UnsignedInteger;
    iget v2, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v2=(Integer);
    iget v3, v0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 217
    .end local v0           #other:Lcom/google/common/primitives/UnsignedInteger;
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);
    return v1
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    long-to-float v0, v0

    #v0=(Float);
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v0=(Integer);
    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v0=(Integer);
    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v0=(Integer);
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0xa

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "radix"

    .prologue
    .line 234
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    #v0=(Integer);
    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
