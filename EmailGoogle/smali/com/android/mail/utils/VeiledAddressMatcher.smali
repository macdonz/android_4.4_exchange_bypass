.class public final Lcom/android/mail/utils/VeiledAddressMatcher;
.super Ljava/lang/Object;
.source "VeiledAddressMatcher.java"


# instance fields
.field private mMatcher:Ljava/util/regex/Pattern;

.field private final mObserver:Lcom/android/mail/providers/AccountObserver;

.field private mProfilePatternLastHash:I

.field protected mVeiledMatchingEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mMatcher:Ljava/util/regex/Pattern;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mVeiledMatchingEnabled:Z

    .line 79
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mProfilePatternLastHash:I

    .line 81
    new-instance v0, Lcom/android/mail/utils/VeiledAddressMatcher$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/utils/VeiledAddressMatcher$1;-><init>(Lcom/android/mail/utils/VeiledAddressMatcher;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mObserver:Lcom/android/mail/providers/AccountObserver;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/utils/VeiledAddressMatcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mail/utils/VeiledAddressMatcher;->loadPattern(Ljava/lang/String;)V

    return-void
.end method

.method private final loadPattern(Ljava/lang/String;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 104
    .local v0, hashCode:I
    #v0=(Integer);
    iget v1, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mProfilePatternLastHash:I

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 105
    iput v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mProfilePatternLastHash:I

    .line 106
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mMatcher:Ljava/util/regex/Pattern;

    .line 108
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mVeiledMatchingEnabled:Z

    .line 111
    .end local v0           #hashCode:I
    :cond_0
    #v0=(Conflicted);v1=(Integer);
    return-void
.end method

.method public static final newInstance(Landroid/content/res/Resources;)Lcom/android/mail/utils/VeiledAddressMatcher;
    .locals 2
    .parameter "resources"

    .prologue
    .line 118
    new-instance v0, Lcom/android/mail/utils/VeiledAddressMatcher;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/utils/VeiledAddressMatcher;-><init>()V

    .line 119
    .local v0, instance:Lcom/android/mail/utils/VeiledAddressMatcher;
    #v0=(Reference);
    const v1, 0x7f0d0005

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, v0, Lcom/android/mail/utils/VeiledAddressMatcher;->mVeiledMatchingEnabled:Z

    .line 120
    iget-boolean v1, v0, Lcom/android/mail/utils/VeiledAddressMatcher;->mVeiledMatchingEnabled:Z

    if-eqz v1, :cond_0

    .line 121
    const v1, 0x7f0a010e

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/mail/utils/VeiledAddressMatcher;->loadPattern(Ljava/lang/String;)V

    .line 123
    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method


# virtual methods
.method public final initialize(Lcom/android/mail/ui/AccountController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mObserver:Lcom/android/mail/providers/AccountObserver;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    .line 133
    return-void
.end method

.method public final isVeiledAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mVeiledMatchingEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mMatcher:Ljava/util/regex/Pattern;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 145
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    .line 147
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/mail/utils/VeiledAddressMatcher;->mMatcher:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method
