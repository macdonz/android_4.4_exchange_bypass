.class public Lcom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "UnsignedLong.java"

# interfaces
.implements Ljava/io/Serializable;
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
        "Lcom/google/common/primitives/UnsignedLong;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ONE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    #v0=(UninitRef);
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ZERO:Lcom/google/common/primitives/UnsignedLong;

    .line 48
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    #v0=(UninitRef);
    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ONE:Lcom/google/common/primitives/UnsignedLong;

    .line 49
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    #v0=(UninitRef);
    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    #p0=(Reference);
    iput-wide p1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    .line 55
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/common/primitives/UnsignedLong;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 208
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->compareTo(Lcom/google/common/primitives/UnsignedLong;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public doubleValue()D
    .locals 6

    .prologue
    .line 188
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v2=(LongLo);v3=(LongHi);
    const-wide v4, 0x7fffffffffffffffL

    #v4=(LongLo);v5=(LongHi);
    and-long/2addr v2, v4

    long-to-double v0, v2

    .line 189
    .local v0, dValue:D
    #v0=(DoubleLo);v1=(DoubleHi);
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-gez v2, :cond_0

    .line 190
    const-wide/high16 v2, 0x43e0

    #v2=(LongLo);
    add-double/2addr v0, v2

    .line 192
    :cond_0
    #v2=(Conflicted);
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 219
    #v1=(Null);
    instance-of v2, p1, Lcom/google/common/primitives/UnsignedLong;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 220
    #v0=(Reference);
    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    .line 221
    .local v0, other:Lcom/google/common/primitives/UnsignedLong;
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 223
    .end local v0           #other:Lcom/google/common/primitives/UnsignedLong;
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1
.end method

.method public floatValue()F
    .locals 5

    .prologue
    .line 174
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v1=(LongLo);v2=(LongHi);
    const-wide v3, 0x7fffffffffffffffL

    #v3=(LongLo);v4=(LongHi);
    and-long/2addr v1, v3

    long-to-float v0, v1

    .line 175
    .local v0, fValue:F
    #v0=(Float);
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    #v1=(Byte);
    if-gez v1, :cond_0

    .line 176
    const/high16 v1, 0x5f00

    #v1=(Integer);
    add-float/2addr v0, v1

    .line 178
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
