.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static smear(I)I
    .locals 2
    .parameter "hashCode"

    .prologue
    .line 40
    ushr-int/lit8 v0, p0, 0x14

    #v0=(Char);
    ushr-int/lit8 v1, p0, 0xc

    #v1=(Integer);
    xor-int/2addr v0, v1

    #v0=(Integer);
    xor-int/2addr p0, v0

    .line 41
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method
