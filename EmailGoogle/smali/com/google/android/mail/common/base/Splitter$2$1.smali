.class Lcom/google/android/mail/common/base/Splitter$2$1;
.super Lcom/google/android/mail/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/mail/common/base/Splitter$2;->iterator(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/mail/common/base/Splitter$2;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/Splitter$2;Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/mail/common/base/Splitter$2$1;->this$0:Lcom/google/android/mail/common/base/Splitter$2;

    invoke-direct {p0, p2, p3}, Lcom/google/android/mail/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 1
    .parameter "separatorPosition"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$2$1;->this$0:Lcom/google/android/mail/common/base/Splitter$2;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/android/mail/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    add-int/2addr v0, p1

    return v0
.end method

.method public separatorStart(I)I
    .locals 6
    .parameter "start"

    .prologue
    .line 167
    iget-object v4, p0, Lcom/google/android/mail/common/base/Splitter$2$1;->this$0:Lcom/google/android/mail/common/base/Splitter$2;

    #v4=(Reference);
    iget-object v4, v4, Lcom/google/android/mail/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 170
    .local v0, delimeterLength:I
    #v0=(Integer);
    move v3, p1

    .local v3, p:I
    #v3=(Integer);
    iget-object v4, p0, Lcom/google/android/mail/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    #v4=(Integer);
    sub-int v2, v4, v0

    .line 171
    .local v2, last:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v5=(Conflicted);
    if-gt v3, v2, :cond_1

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);
    if-ge v1, v0, :cond_2

    .line 173
    iget-object v4, p0, Lcom/google/android/mail/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    #v4=(Reference);
    add-int v5, v1, v3

    #v5=(Integer);
    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    #v4=(Char);
    iget-object v5, p0, Lcom/google/android/mail/common/base/Splitter$2$1;->this$0:Lcom/google/android/mail/common/base/Splitter$2;

    #v5=(Reference);
    iget-object v5, v5, Lcom/google/android/mail/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    #v5=(Char);
    if-eq v4, v5, :cond_0

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v1           #i:I
    :cond_1
    #v1=(Conflicted);v4=(Integer);v5=(Conflicted);
    const/4 v3, -0x1

    .end local v3           #p:I
    :cond_2
    return v3
.end method
