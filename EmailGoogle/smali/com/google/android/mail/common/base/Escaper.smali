.class public abstract Lcom/google/android/mail/common/base/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final asFunction:Lcom/google/android/mail/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/mail/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    #p0=(Reference);
    new-instance v0, Lcom/google/android/mail/common/base/Escaper$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/android/mail/common/base/Escaper$1;-><init>(Lcom/google/android/mail/common/base/Escaper;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/Escaper;->asFunction:Lcom/google/android/mail/common/base/Function;

    return-void
.end method
