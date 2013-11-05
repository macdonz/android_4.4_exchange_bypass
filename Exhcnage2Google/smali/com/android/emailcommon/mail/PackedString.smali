.class public Lcom/android/emailcommon/mail/PackedString;
.super Ljava/lang/Object;
.source "PackedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/PackedString$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExploded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/PackedString;->EMPTY_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/emailcommon/mail/PackedString;->mString:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method private static explode(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "packed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v8, -0x1

    .line 81
    #v8=(Byte);
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    #v7=(Integer);
    if-nez v7, :cond_2

    .line 82
    :cond_0
    #v7=(Conflicted);
    sget-object v3, Lcom/android/emailcommon/mail/PackedString;->EMPTY_MAP:Ljava/util/HashMap;

    .line 113
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v3

    .line 84
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);
    new-instance v3, Ljava/util/HashMap;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v3=(Reference);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 87
    .local v2, length:I
    #v2=(Integer);
    const/4 v1, 0x0

    .line 88
    .local v1, elementStartIndex:I
    #v1=(Null);
    const/4 v0, 0x0

    .line 89
    .local v0, elementEndIndex:I
    #v0=(Null);
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 91
    .local v5, tagEndIndex:I
    :goto_0
    #v0=(Integer);v1=(Integer);v4=(Conflicted);v5=(Integer);v6=(Conflicted);
    if-ge v1, v2, :cond_1

    .line 92
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 93
    if-ne v0, v8, :cond_3

    .line 94
    move v0, v2

    .line 98
    :cond_3
    if-eq v5, v8, :cond_4

    if-gt v0, v5, :cond_5

    .line 101
    :cond_4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, value:Ljava/lang/String;
    #v6=(Reference);
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, tag:Ljava/lang/String;
    :goto_1
    #v4=(Reference);
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v1, v0, 0x1

    .line 111
    goto :goto_0

    .line 104
    .end local v4           #tag:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    #v4=(Conflicted);v6=(Conflicted);v7=(One);
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 105
    .restart local v6       #value:Ljava/lang/String;
    #v6=(Reference);
    add-int/lit8 v7, v5, 0x1

    #v7=(Integer);
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 107
    .restart local v4       #tag:Ljava/lang/String;
    #v4=(Reference);
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tag"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/PackedString;->explode(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
