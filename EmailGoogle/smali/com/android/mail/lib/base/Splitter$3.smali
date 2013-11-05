.class final Lcom/android/mail/lib/base/Splitter$3;
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
.field final synthetic val$separatorPattern:Ljava/util/regex/Pattern;


# virtual methods
.method public iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;
    .locals 2
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/mail/lib/base/Splitter$3;->val$separatorPattern:Ljava/util/regex/Pattern;

    #v1=(Reference);
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 211
    .local v0, matcher:Ljava/util/regex/Matcher;
    #v0=(Reference);
    new-instance v1, Lcom/android/mail/lib/base/Splitter$3$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/mail/lib/base/Splitter$3$1;-><init>(Lcom/android/mail/lib/base/Splitter$3;Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V

    #v1=(Reference);
    return-object v1
.end method

.method public bridge synthetic iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/lib/base/Splitter$3;->iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
