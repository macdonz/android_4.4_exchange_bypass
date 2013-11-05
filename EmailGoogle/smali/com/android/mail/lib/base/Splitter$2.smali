.class final Lcom/android/mail/lib/base/Splitter$2;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/android/mail/lib/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separator:Ljava/lang/String;


# virtual methods
.method public iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 165
    new-instance v0, Lcom/android/mail/lib/base/Splitter$2$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/lib/base/Splitter$2$1;-><init>(Lcom/android/mail/lib/base/Splitter$2;Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/lib/base/Splitter$2;->iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
