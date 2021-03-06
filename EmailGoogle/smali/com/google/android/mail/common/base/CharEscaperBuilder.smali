.class public Lcom/google/android/mail/common/base/CharEscaperBuilder;
.super Ljava/lang/Object;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/base/CharEscaperBuilder$CharArrayDecorator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->max:I

    .line 74
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;
    .locals 2
    .parameter "c"
    .parameter "r"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget v0, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->max:I

    #v0=(Integer);
    if-le p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->max:I

    .line 85
    :cond_0
    return-object p0
.end method

.method public addEscapes([CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;
    .locals 4
    .parameter "cs"
    .parameter "r"

    .prologue
    .line 92
    move-object v0, p1

    .local v0, arr$:[C
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 93
    .local v1, c:C
    #v1=(Char);
    invoke-virtual {p0, v1, p2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1           #c:C
    :cond_0
    #v1=(Conflicted);
    return-object p0
.end method

.method public toArray()[[C
    .locals 5

    .prologue
    .line 106
    iget v3, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->max:I

    #v3=(Integer);
    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [[C

    .line 107
    .local v2, result:[[C
    #v2=(Reference);
    iget-object v3, p0, Lcom/google/android/mail/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    #v4=(Char);
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 110
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_0
    #v0=(Conflicted);v3=(Boolean);v4=(Conflicted);
    return-object v2
.end method

.method public toEscaper()Lcom/google/android/mail/common/base/CharEscaper;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/mail/common/base/CharEscaperBuilder$CharArrayDecorator;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    #v0=(Reference);
    return-object v0
.end method
