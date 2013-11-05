.class Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeSetBuilder"
.end annotation


# instance fields
.field codePointSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    #p0=(Reference);
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/lib/base/StringUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3134
    invoke-direct {p0}, Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method addCodePoint(I)Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;
    .locals 2
    .parameter "c"

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    #v0=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3139
    return-object p0
.end method

.method addRange(II)Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3143
    move v0, p1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    if-gt v0, p2, :cond_0

    .line 3144
    iget-object v1, p0, Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    #v1=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3146
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object p0
.end method

.method create()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    #v0=(Reference);
    return-object v0
.end method
