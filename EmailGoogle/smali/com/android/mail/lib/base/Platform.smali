.class final Lcom/android/mail/lib/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/android/mail/lib/base/Platform$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/base/Platform$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static charBufferFromThreadLocal()[C
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/mail/lib/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method static precomputeCharMatcher(Lcom/android/mail/lib/base/CharMatcher;)Lcom/android/mail/lib/base/CharMatcher;
    .locals 1
    .parameter "matcher"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/mail/lib/base/CharMatcher;->precomputedInternal()Lcom/android/mail/lib/base/CharMatcher;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
