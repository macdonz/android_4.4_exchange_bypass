.class public abstract Lcom/android/mail/lib/base/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final asFunction:Lcom/android/mail/lib/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/lib/base/Function",
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
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/lib/base/Escaper$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/lib/base/Escaper$1;-><init>(Lcom/android/mail/lib/base/Escaper;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/base/Escaper;->asFunction:Lcom/android/mail/lib/base/Function;

    return-void
.end method
