.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$LookupTable;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$And;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x200a

    #v12=(PosShort);
    const/16 v11, 0x600

    #v11=(PosShort);
    const/16 v10, 0x2000

    #v10=(PosShort);
    const/16 v8, 0x7f

    #v8=(PosByte);
    const/4 v9, 0x0

    .line 75
    #v9=(Null);
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    #v6=(Reference);
    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-static {v10, v12}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 87
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    #v7=(PosShort);
    invoke-static {v10, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    #v7=(PosShort);
    invoke-static {v7, v12}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 96
    invoke-static {v9, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 105
    const/16 v6, 0x30

    #v6=(PosByte);
    const/16 v7, 0x39

    #v7=(PosByte);
    invoke-static {v6, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 106
    .local v2, digit:Lcom/google/common/base/CharMatcher;
    #v2=(Reference);
    const-string v5, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 110
    .local v5, zeroes:Ljava/lang/String;
    #v5=(Reference);
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    #v0=(Reference);
    array-length v4, v0

    .local v4, len$:I
    #v4=(Integer);
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    #v1=(Conflicted);v3=(Integer);v6=(Conflicted);
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 111
    .local v1, base:C
    #v1=(Char);
    add-int/lit8 v6, v1, 0x9

    #v6=(Integer);
    int-to-char v6, v6

    #v6=(Char);
    invoke-static {v1, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v2, v6}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1           #base:C
    :cond_0
    #v1=(Conflicted);v6=(Conflicted);
    invoke-virtual {v2}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 120
    new-instance v6, Lcom/google/common/base/CharMatcher$1;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 131
    new-instance v6, Lcom/google/common/base/CharMatcher$2;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$2;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 141
    new-instance v6, Lcom/google/common/base/CharMatcher$3;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$3;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 151
    new-instance v6, Lcom/google/common/base/CharMatcher$4;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$4;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 161
    new-instance v6, Lcom/google/common/base/CharMatcher$5;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$5;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 171
    const/16 v6, 0x1f

    #v6=(PosByte);
    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0x9f

    #v7=(PosShort);
    invoke-static {v8, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 179
    const/16 v6, 0x20

    #v6=(PosByte);
    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0xa0

    #v7=(PosShort);
    invoke-static {v8, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xad

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x603

    #v7=(PosShort);
    invoke-static {v11, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200f

    #v7=(PosShort);
    invoke-static {v10, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    #v7=(PosShort);
    const/16 v8, 0x202f

    #v8=(PosShort);
    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    #v7=(PosShort);
    const/16 v8, 0x2064

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x206a

    #v7=(PosShort);
    const/16 v8, 0x206f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xd800

    #v7=(Char);
    const v8, 0xf8ff

    #v8=(Char);
    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 201
    const/16 v6, 0x4f9

    #v6=(PosShort);
    invoke-static {v9, v6}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0x5be

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5d0

    #v7=(PosShort);
    const/16 v8, 0x5ea

    #v8=(PosShort);
    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f3

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f4

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x6ff

    #v7=(PosShort);
    invoke-static {v11, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x750

    #v7=(PosShort);
    const/16 v8, 0x77f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xe00

    #v7=(PosShort);
    const/16 v8, 0xe7f

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1e00

    #v7=(PosShort);
    const/16 v8, 0x20af

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2100

    #v7=(PosShort);
    const/16 v8, 0x213a

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfb50

    #v7=(Char);
    const v8, 0xfdff

    #v8=(Char);
    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfe70

    #v7=(Char);
    const v8, 0xfeff

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xff61

    #v7=(Char);
    const v8, 0xffdc

    invoke-static {v7, v8}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 217
    new-instance v6, Lcom/google/common/base/CharMatcher$6;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$6;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 297
    new-instance v6, Lcom/google/common/base/CharMatcher$7;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/common/base/CharMatcher$7;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .locals 5
    .parameter "sequence"

    .prologue
    const/4 v4, 0x0

    .line 441
    #v4=(Null);
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 466
    .local v0, chars:[C
    #v0=(Reference);
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 468
    new-instance v3, Lcom/google/common/base/CharMatcher$11;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Lcom/google/common/base/CharMatcher$11;-><init>([C)V

    .end local v0           #chars:[C
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    return-object v3

    .line 443
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);
    sget-object v3, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    #v3=(Reference);
    goto :goto_0

    .line 445
    :pswitch_1
    #v3=(Integer);
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    #v3=(Char);
    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    #v3=(Reference);
    goto :goto_0

    .line 447
    :pswitch_2
    #v3=(Integer);
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 448
    .local v1, match1:C
    #v1=(Char);
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 449
    .local v2, match2:C
    #v2=(Char);
    new-instance v3, Lcom/google/common/base/CharMatcher$10;

    #v3=(UninitRef);
    invoke-direct {v3, v1, v2}, Lcom/google/common/base/CharMatcher$10;-><init>(CC)V

    #v3=(Reference);
    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter "startInclusive"
    .parameter "endInclusive"

    .prologue
    .line 497
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 498
    new-instance v0, Lcom/google/common/base/CharMatcher$12;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$12;-><init>(CC)V

    #v0=(Reference);
    return-object v0

    .line 497
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter "match"

    .prologue
    .line 380
    new-instance v0, Lcom/google/common/base/CharMatcher$8;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$8;-><init>(C)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .parameter "character"

    .prologue
    .line 1146
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    #v0=(Char);
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 814
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 815
    .local v1, length:I
    #v1=(Integer);
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 816
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, v1, :cond_1

    .line 817
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    #v2=(Char);
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 821
    .end local v0           #i:I
    :goto_1
    #v2=(Conflicted);
    return v0

    .line 816
    .restart local v0       #i:I
    :cond_0
    #v2=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    #v2=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 4
    .parameter "other"

    .prologue
    .line 615
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    #v1=(UninitRef);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v2, v0, [Lcom/google/common/base/CharMatcher;

    #v2=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aput-object p0, v2, v0

    const/4 v3, 0x1

    #v3=(One);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    #v1=(Reference);
    return-object v1
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 672
    new-instance v0, Lcom/google/common/base/CharMatcher$LookupTable;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$LookupTable;-><init>(Lcom/google/common/base/CharMatcher$1;)V

    .line 673
    .local v0, table:Lcom/google/common/base/CharMatcher$LookupTable;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V

    .line 675
    new-instance v1, Lcom/google/common/base/CharMatcher$15;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$15;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher$LookupTable;)V

    #v1=(Reference);
    return-object v1
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, c:C
    :goto_0
    #v0=(Char);v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 701
    :cond_0
    add-int/lit8 v2, v0, 0x1

    #v2=(Integer);
    int-to-char v1, v2

    .end local v0           #c:C
    .local v1, c:C
    #v1=(Char);
    const v2, 0xffff

    #v2=(Char);
    if-ne v0, v2, :cond_1

    .line 705
    return-void

    :cond_1
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_0
.end method
