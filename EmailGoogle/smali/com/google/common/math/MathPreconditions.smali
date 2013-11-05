.class final Lcom/google/common/math/MathPreconditions;
.super Ljava/lang/Object;
.source "MathPreconditions.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static checkNoOverflow(Z)V
    .locals 2
    .parameter "condition"

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/ArithmeticException;

    #v0=(UninitRef);
    const-string v1, "overflow"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 90
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    return-void
.end method
