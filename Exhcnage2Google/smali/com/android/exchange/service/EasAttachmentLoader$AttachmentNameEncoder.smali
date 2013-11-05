.class Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;
.super Lcom/android/exchange/utility/UriCodec;
.source "EasAttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EasAttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentNameEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/exchange/utility/UriCodec;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/service/EasAttachmentLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 124
    const/16 v0, 0x5f

    #v0=(PosByte);
    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
