.class Lcom/android/mail/lib/base/CharEscapers$FallThroughCharEscaper;
.super Lcom/android/mail/lib/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallThroughCharEscaper"
.end annotation


# instance fields
.field private final primary:Lcom/android/mail/lib/base/CharEscaper;

.field private final secondary:Lcom/android/mail/lib/base/CharEscaper;


# virtual methods
.method protected escape(C)[C
    .locals 2
    .parameter "c"

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/android/mail/lib/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/android/mail/lib/base/CharEscaper;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/mail/lib/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1094
    .local v0, result:[C
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/android/mail/lib/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/android/mail/lib/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/android/mail/lib/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1097
    :cond_0
    return-object v0
.end method
