.class Lcom/google/android/mail/common/base/CharEscaper$1;
.super Ljava/lang/Object;
.source "CharEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/CharEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/mail/common/base/CharEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v5, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->this$0:Lcom/google/android/mail/common/base/CharEscaper;

    #v5=(Reference);
    invoke-virtual {v5, p1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(C)[C

    move-result-object v2

    .line 97
    .local v2, escaped:[C
    #v2=(Reference);
    if-nez v2, :cond_1

    .line 98
    iget-object v5, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v5, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 104
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object p0

    .line 100
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);
    move-object v0, v2

    .local v0, arr$:[C
    #v0=(Reference);
    array-length v4, v0

    .local v4, len$:I
    #v4=(Integer);
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    #v1=(Conflicted);v3=(Integer);
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 101
    .local v1, e:C
    #v1=(Char);
    iget-object v5, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v5, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 3
    .parameter "csq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->this$0:Lcom/google/android/mail/common/base/CharEscaper;

    #v1=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 87
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3
    .parameter "csq"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/android/mail/common/base/CharEscaper$1;->this$0:Lcom/google/android/mail/common/base/CharEscaper;

    #v1=(Reference);
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 92
    return-object p0
.end method
