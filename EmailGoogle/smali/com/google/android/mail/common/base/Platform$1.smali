.class final Lcom/google/android/mail/common/base/Platform$1;
.super Ljava/lang/ThreadLocal;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Platform$1;->initialValue()[C

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected initialValue()[C
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x400

    #v0=(PosShort);
    new-array v0, v0, [C

    #v0=(Reference);
    return-object v0
.end method
