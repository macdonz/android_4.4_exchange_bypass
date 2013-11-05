.class Lcom/google/android/mail/common/base/Splitter$4$1;
.super Lcom/google/android/mail/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/mail/common/base/Splitter$4;->iterator(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/mail/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/Splitter$4;Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/mail/common/base/Splitter$4$1;->this$0:Lcom/google/android/mail/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lcom/google/android/mail/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 0
    .parameter "separatorPosition"

    .prologue
    .line 266
    return p1
.end method

.method public separatorStart(I)I
    .locals 2
    .parameter "start"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/android/mail/common/base/Splitter$4$1;->this$0:Lcom/google/android/mail/common/base/Splitter$4;

    #v1=(Reference);
    iget v1, v1, Lcom/google/android/mail/common/base/Splitter$4;->val$length:I

    #v1=(Integer);
    add-int v0, p1, v1

    .line 262
    .local v0, nextChunkStart:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/google/android/mail/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .end local v0           #nextChunkStart:I
    :goto_0
    return v0

    .restart local v0       #nextChunkStart:I
    :cond_0
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method
