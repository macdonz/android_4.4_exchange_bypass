.class public final Lcom/google/common/collect/DiscreteDomains;
.super Ljava/lang/Object;
.source "DiscreteDomains.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/DiscreteDomains$BigIntegerDomain;,
        Lcom/google/common/collect/DiscreteDomains$LongDomain;,
        Lcom/google/common/collect/DiscreteDomains$IntegerDomain;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
