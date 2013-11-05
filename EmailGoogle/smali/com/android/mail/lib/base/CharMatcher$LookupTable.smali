.class public Lcom/android/mail/lib/base/CharMatcher$LookupTable;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LookupTable"
.end annotation


# instance fields
.field data:[I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 702
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 703
    #p0=(Reference);
    const/16 v0, 0x800

    #v0=(PosShort);
    new-array v0, v0, [I

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->data:[I

    return-void
.end method


# virtual methods
.method get(C)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 709
    #v0=(One);
    iget-object v1, p0, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->data:[I

    #v1=(Reference);
    shr-int/lit8 v2, p1, 0x5

    #v2=(Char);
    aget v1, v1, v2

    #v1=(Integer);
    shl-int v2, v0, p1

    #v2=(Integer);
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method set(C)V
    .locals 4
    .parameter "index"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->data:[I

    #v0=(Reference);
    shr-int/lit8 v1, p1, 0x5

    #v1=(Char);
    aget v2, v0, v1

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    shl-int/2addr v3, p1

    #v3=(Integer);
    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 707
    return-void
.end method
