.class final Lcom/android/mail/lib/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/android/mail/lib/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/lib/base/Splitter;->on(Lcom/android/mail/lib/base/CharMatcher;)Lcom/android/mail/lib/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lcom/android/mail/lib/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/android/mail/lib/base/CharMatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/mail/lib/base/Splitter$1;->val$separatorMatcher:Lcom/android/mail/lib/base/CharMatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 137
    new-instance v0, Lcom/android/mail/lib/base/Splitter$1$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/lib/base/Splitter$1$1;-><init>(Lcom/android/mail/lib/base/Splitter$1;Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/lib/base/Splitter$1;->iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
