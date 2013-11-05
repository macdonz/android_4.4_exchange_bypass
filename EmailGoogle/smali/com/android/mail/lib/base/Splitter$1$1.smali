.class Lcom/android/mail/lib/base/Splitter$1$1;
.super Lcom/android/mail/lib/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/lib/base/Splitter$1;->iterator(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/lib/base/Splitter$1;


# direct methods
.method constructor <init>(Lcom/android/mail/lib/base/Splitter$1;Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/mail/lib/base/Splitter$1$1;->this$0:Lcom/android/mail/lib/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/lib/base/Splitter$SplittingIterator;-><init>(Lcom/android/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .locals 1
    .parameter "separatorPosition"

    .prologue
    .line 143
    add-int/lit8 v0, p1, 0x1

    #v0=(Integer);
    return v0
.end method

.method separatorStart(I)I
    .locals 2
    .parameter "start"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mail/lib/base/Splitter$1$1;->this$0:Lcom/android/mail/lib/base/Splitter$1;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/lib/base/Splitter$1;->val$separatorMatcher:Lcom/android/mail/lib/base/CharMatcher;

    iget-object v1, p0, Lcom/android/mail/lib/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-virtual {v0, v1, p1}, Lcom/android/mail/lib/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
