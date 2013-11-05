.class final Lcom/google/android/mail/common/base/CharEscapers$2;
.super Lcom/google/android/mail/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/google/android/mail/common/base/CharEscaper;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 4
    .parameter "c"

    .prologue
    .line 773
    const/16 v1, 0x7f

    #v1=(PosByte);
    if-gt p1, v1, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 787
    :goto_0
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 777
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 778
    .local v0, r:[C
    #v0=(Reference);
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    #v3=(Integer);
    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 779
    ushr-int/lit8 v1, p1, 0x4

    #v1=(Integer);
    int-to-char p1, v1

    .line 780
    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 781
    ushr-int/lit8 v1, p1, 0x4

    #v1=(Integer);
    int-to-char p1, v1

    .line 782
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 783
    ushr-int/lit8 v1, p1, 0x4

    #v1=(Integer);
    int-to-char p1, v1

    .line 784
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 785
    const/4 v1, 0x1

    #v1=(One);
    const/16 v2, 0x75

    #v2=(PosByte);
    aput-char v2, v0, v1

    .line 786
    const/4 v1, 0x0

    #v1=(Null);
    const/16 v2, 0x5c

    aput-char v2, v0, v1

    goto :goto_0
.end method
