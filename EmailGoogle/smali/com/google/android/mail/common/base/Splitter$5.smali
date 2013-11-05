.class Lcom/google/android/mail/common/base/Splitter$5;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/mail/common/base/Splitter;

.field final synthetic val$sequence:Ljava/lang/CharSequence;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$5;->this$0:Lcom/google/android/mail/common/base/Splitter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/android/mail/common/base/Splitter;->access$000(Lcom/google/android/mail/common/base/Splitter;)Lcom/google/android/mail/common/base/Splitter$Strategy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/base/Splitter$5;->this$0:Lcom/google/android/mail/common/base/Splitter;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/android/mail/common/base/Splitter$5;->val$sequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Lcom/google/android/mail/common/base/Splitter$Strategy;->iterator(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
