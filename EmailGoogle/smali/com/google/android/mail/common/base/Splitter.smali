.class public final Lcom/google/android/mail/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/base/Splitter$6;,
        Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,
        Lcom/google/android/mail/common/base/Splitter$SplittingIterator;,
        Lcom/google/android/mail/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/android/mail/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/android/mail/common/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/base/Splitter$Strategy;)V
    .locals 2
    .parameter "strategy"

    .prologue
    .line 99
    const/4 v0, 0x0

    #v0=(Null);
    sget-object v1, Lcom/google/android/mail/common/base/CharMatcher;->NONE:Lcom/google/android/mail/common/base/CharMatcher;

    #v1=(Reference);
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/mail/common/base/Splitter;-><init>(Lcom/google/android/mail/common/base/Splitter$Strategy;ZLcom/google/android/mail/common/base/CharMatcher;)V

    .line 100
    #p0=(Reference);
    return-void
.end method

.method private constructor <init>(Lcom/google/android/mail/common/base/Splitter$Strategy;ZLcom/google/android/mail/common/base/CharMatcher;)V
    .locals 0
    .parameter "strategy"
    .parameter "omitEmptyStrings"
    .parameter "trimmer"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/android/mail/common/base/Splitter;->strategy:Lcom/google/android/mail/common/base/Splitter$Strategy;

    .line 105
    iput-boolean p2, p0, Lcom/google/android/mail/common/base/Splitter;->omitEmptyStrings:Z

    .line 106
    iput-object p3, p0, Lcom/google/android/mail/common/base/Splitter;->trimmer:Lcom/google/android/mail/common/base/CharMatcher;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/mail/common/base/Splitter;)Lcom/google/android/mail/common/base/Splitter$Strategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter;->strategy:Lcom/google/android/mail/common/base/Splitter$Strategy;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/mail/common/base/Splitter;)Lcom/google/android/mail/common/base/CharMatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter;->trimmer:Lcom/google/android/mail/common/base/CharMatcher;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/mail/common/base/Splitter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/mail/common/base/Splitter;->omitEmptyStrings:Z

    #v0=(Boolean);
    return v0
.end method

.method public static on(C)Lcom/google/android/mail/common/base/Splitter;
    .locals 1
    .parameter "separator"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/android/mail/common/base/Splitter;->on(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public static on(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/Splitter;
    .locals 2
    .parameter "separatorMatcher"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/google/android/mail/common/base/Splitter;

    #v0=(UninitRef);
    new-instance v1, Lcom/google/android/mail/common/base/Splitter$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/google/android/mail/common/base/Splitter$1;-><init>(Lcom/google/android/mail/common/base/CharMatcher;)V

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/Splitter;-><init>(Lcom/google/android/mail/common/base/Splitter$Strategy;)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/google/android/mail/common/base/Splitter;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/google/android/mail/common/base/Splitter;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/android/mail/common/base/Splitter;->strategy:Lcom/google/android/mail/common/base/Splitter$Strategy;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    iget-object v3, p0, Lcom/google/android/mail/common/base/Splitter;->trimmer:Lcom/google/android/mail/common/base/CharMatcher;

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mail/common/base/Splitter;-><init>(Lcom/google/android/mail/common/base/Splitter$Strategy;ZLcom/google/android/mail/common/base/CharMatcher;)V

    #v0=(Reference);
    return-object v0
.end method
