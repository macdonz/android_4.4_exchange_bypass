.class final Lcom/android/mail/lib/base/CharEscapers$1;
.super Lcom/android/mail/lib/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mail/lib/base/CharEscaper;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "string"

    .prologue
    .line 43
    invoke-static {p1}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object p1
.end method

.method protected escape(C)[C
    .locals 1
    .parameter "c"

    .prologue
    .line 77
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method
