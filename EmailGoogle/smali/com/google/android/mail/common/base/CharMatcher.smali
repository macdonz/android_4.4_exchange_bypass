.class public abstract Lcom/google/android/mail/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/android/mail/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/base/CharMatcher$LookupTable;,
        Lcom/google/android/mail/common/base/CharMatcher$Or;,
        Lcom/google/android/mail/common/base/CharMatcher$And;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/mail/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final JAVA_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final LEGACY_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NONE:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/android/mail/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x600

    #v13=(PosShort);
    const/16 v12, 0x20

    #v12=(PosByte);
    const/16 v11, 0x7f

    #v11=(PosByte);
    const/16 v10, 0x2000

    #v10=(PosShort);
    const/4 v9, 0x0

    .line 68
    #v9=(Null);
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    #v6=(Reference);
    invoke-static {v6}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200a

    #v7=(PosShort);
    invoke-static {v10, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 80
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v6}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    #v7=(PosShort);
    invoke-static {v10, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    #v7=(PosShort);
    const/16 v8, 0x200a

    #v8=(PosShort);
    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 89
    invoke-static {v9, v11}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->ASCII:Lcom/google/android/mail/common/base/CharMatcher;

    .line 98
    const/16 v6, 0x30

    #v6=(PosByte);
    const/16 v7, 0x39

    #v7=(PosByte);
    invoke-static {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v2

    .line 99
    .local v2, digit:Lcom/google/android/mail/common/base/CharMatcher;
    #v2=(Reference);
    const-string v5, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 103
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

    .line 104
    .local v1, base:C
    #v1=(Char);
    add-int/lit8 v6, v1, 0x9

    #v6=(Integer);
    int-to-char v6, v6

    #v6=(Char);
    invoke-static {v1, v6}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v2, v6}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v2

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v1           #base:C
    :cond_0
    #v1=(Conflicted);v6=(Conflicted);
    sput-object v2, Lcom/google/android/mail/common/base/CharMatcher;->DIGIT:Lcom/google/android/mail/common/base/CharMatcher;

    .line 115
    const/16 v6, 0x9

    #v6=(PosByte);
    const/16 v7, 0xd

    invoke-static {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0x1c

    invoke-static {v7, v12}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1680

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x180e

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    #v7=(PosShort);
    invoke-static {v10, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    #v7=(PosShort);
    const/16 v8, 0x200b

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    #v7=(PosShort);
    const/16 v8, 0x2029

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 131
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$1;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$1;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/android/mail/common/base/CharMatcher;

    .line 143
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$2;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$2;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/android/mail/common/base/CharMatcher;

    .line 153
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$3;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$3;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/android/mail/common/base/CharMatcher;

    .line 163
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$4;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$4;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 173
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$5;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$5;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 183
    const/16 v6, 0x1f

    #v6=(PosByte);
    invoke-static {v9, v6}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0x9f

    #v7=(PosShort);
    invoke-static {v11, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/android/mail/common/base/CharMatcher;

    .line 192
    invoke-static {v9, v12}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xa0

    #v7=(PosShort);
    invoke-static {v11, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xad

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x603

    #v7=(PosShort);
    invoke-static {v13, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200f

    #v7=(PosShort);
    invoke-static {v10, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    #v7=(PosShort);
    const/16 v8, 0x202f

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    #v7=(PosShort);
    const/16 v8, 0x2064

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x206a

    #v7=(PosShort);
    const/16 v8, 0x206f

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xd800

    #v7=(Char);
    const v8, 0xf8ff

    #v8=(Char);
    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->INVISIBLE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 213
    const/16 v6, 0x4f9

    #v6=(PosShort);
    invoke-static {v9, v6}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0x5be

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5d0

    #v7=(PosShort);
    const/16 v8, 0x5ea

    #v8=(PosShort);
    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f3

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f4

    #v7=(PosShort);
    invoke-static {v7}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x6ff

    #v7=(PosShort);
    invoke-static {v13, v7}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x750

    #v7=(PosShort);
    const/16 v8, 0x77f

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xe00

    #v7=(PosShort);
    const/16 v8, 0xe7f

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1e00

    #v7=(PosShort);
    const/16 v8, 0x20af

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2100

    #v7=(PosShort);
    const/16 v8, 0x213a

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfb50

    #v7=(Char);
    const v8, 0xfdff

    #v8=(Char);
    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfe70

    #v7=(Char);
    const v8, 0xfeff

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xff61

    #v7=(Char);
    const v8, 0xffdc

    invoke-static {v7, v8}, Lcom/google/android/mail/common/base/CharMatcher;->inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/base/CharMatcher;->or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/android/mail/common/base/CharMatcher;

    .line 237
    const-string v6, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v6}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mail/common/base/CharMatcher;->precomputed()Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 242
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$6;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$6;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->ANY:Lcom/google/android/mail/common/base/CharMatcher;

    .line 309
    new-instance v6, Lcom/google/android/mail/common/base/CharMatcher$7;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/google/android/mail/common/base/CharMatcher$7;-><init>()V

    #v6=(Reference);
    sput-object v6, Lcom/google/android/mail/common/base/CharMatcher;->NONE:Lcom/google/android/mail/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 702
    #p0=(Reference);
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;
    .locals 5
    .parameter "sequence"

    .prologue
    const/4 v4, 0x0

    .line 436
    #v4=(Null);
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 459
    .local v0, chars:[C
    #v0=(Reference);
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 461
    new-instance v3, Lcom/google/android/mail/common/base/CharMatcher$11;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Lcom/google/android/mail/common/base/CharMatcher$11;-><init>([C)V

    .end local v0           #chars:[C
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    return-object v3

    .line 438
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);
    sget-object v3, Lcom/google/android/mail/common/base/CharMatcher;->NONE:Lcom/google/android/mail/common/base/CharMatcher;

    #v3=(Reference);
    goto :goto_0

    .line 440
    :pswitch_1
    #v3=(Integer);
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    #v3=(Char);
    invoke-static {v3}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v3

    #v3=(Reference);
    goto :goto_0

    .line 442
    :pswitch_2
    #v3=(Integer);
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 443
    .local v1, match1:C
    #v1=(Char);
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 444
    .local v2, match2:C
    #v2=(Char);
    new-instance v3, Lcom/google/android/mail/common/base/CharMatcher$10;

    #v3=(UninitRef);
    invoke-direct {v3, v1, v2}, Lcom/google/android/mail/common/base/CharMatcher$10;-><init>(CC)V

    #v3=(Reference);
    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static inRange(CC)Lcom/google/android/mail/common/base/CharMatcher;
    .locals 1
    .parameter "startInclusive"
    .parameter "endInclusive"

    .prologue
    .line 490
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/android/mail/common/base/Preconditions;->checkArgument(Z)V

    .line 491
    new-instance v0, Lcom/google/android/mail/common/base/CharMatcher$12;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/android/mail/common/base/CharMatcher$12;-><init>(CC)V

    #v0=(Reference);
    return-object v0

    .line 490
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static is(C)Lcom/google/android/mail/common/base/CharMatcher;
    .locals 1
    .parameter "match"

    .prologue
    .line 380
    new-instance v0, Lcom/google/android/mail/common/base/CharMatcher$8;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/android/mail/common/base/CharMatcher$8;-><init>(C)V

    #v0=(Reference);
    return-object v0
.end method

.method public static isNot(C)Lcom/google/android/mail/common/base/CharMatcher;
    .locals 1
    .parameter "match"

    .prologue
    .line 414
    new-instance v0, Lcom/google/android/mail/common/base/CharMatcher$9;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/android/mail/common/base/CharMatcher$9;-><init>(C)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .parameter "character"

    .prologue
    .line 1122
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    #v0=(Char);
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1062
    .local v2, first:I
    #v2=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-ne v2, v5, :cond_0

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1084
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);
    return-object v5

    .line 1068
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Byte);v6=(Uninit);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    #v6=(Integer);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-interface {p1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1071
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const/4 v4, 0x1

    .line 1072
    .local v4, in:Z
    #v4=(One);
    add-int/lit8 v3, v2, 0x1

    .local v3, i:I
    :goto_1
    #v1=(Conflicted);v3=(Integer);v4=(Boolean);v5=(Conflicted);
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    #v5=(Integer);
    if-ge v3, v5, :cond_3

    .line 1073
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1074
    .local v1, c:C
    #v1=(Char);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p0, v5}, Lcom/google/android/mail/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 1075
    if-nez v4, :cond_1

    .line 1076
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1077
    const/4 v4, 0x1

    .line 1072
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1080
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_2

    .line 1084
    .end local v1           #c:C
    :cond_3
    #v1=(Conflicted);v4=(Boolean);v5=(Integer);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    goto :goto_0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "sequence"

    .prologue
    .line 765
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 766
    .local v1, length:I
    #v1=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, v1, :cond_1

    .line 767
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    #v2=(Char);
    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 771
    .end local v0           #i:I
    :goto_1
    #v2=(Conflicted);
    return v0

    .line 766
    .restart local v0       #i:I
    :cond_0
    #v2=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_1
    #v2=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 791
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 792
    .local v1, length:I
    #v1=(Integer);
    invoke-static {p2, v1}, Lcom/google/android/mail/common/base/Preconditions;->checkPositionIndex(II)I

    .line 793
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, v1, :cond_1

    .line 794
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    #v2=(Char);
    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 798
    .end local v0           #i:I
    :goto_1
    #v2=(Conflicted);
    return v0

    .line 793
    .restart local v0       #i:I
    :cond_0
    #v2=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_1
    #v2=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public negate()Lcom/google/android/mail/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    .line 543
    .local v0, original:Lcom/google/android/mail/common/base/CharMatcher;
    #v0=(Reference);
    new-instance v1, Lcom/google/android/mail/common/base/CharMatcher$14;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/android/mail/common/base/CharMatcher$14;-><init>(Lcom/google/android/mail/common/base/CharMatcher;Lcom/google/android/mail/common/base/CharMatcher;)V

    #v1=(Reference);
    return-object v1
.end method

.method public or(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;
    .locals 4
    .parameter "other"

    .prologue
    .line 599
    new-instance v1, Lcom/google/android/mail/common/base/CharMatcher$Or;

    #v1=(UninitRef);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v2, v0, [Lcom/google/android/mail/common/base/CharMatcher;

    #v2=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aput-object p0, v2, v0

    const/4 v3, 0x1

    #v3=(One);
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/android/mail/common/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mail/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    #v1=(Reference);
    return-object v1
.end method

.method public precomputed()Lcom/google/android/mail/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 643
    invoke-static {p0}, Lcom/google/android/mail/common/base/Platform;->precomputeCharMatcher(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method precomputedInternal()Lcom/google/android/mail/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 659
    new-instance v0, Lcom/google/android/mail/common/base/CharMatcher$LookupTable;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/android/mail/common/base/CharMatcher$LookupTable;-><init>()V

    .line 660
    .local v0, table:Lcom/google/android/mail/common/base/CharMatcher$LookupTable;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/CharMatcher;->setBits(Lcom/google/android/mail/common/base/CharMatcher$LookupTable;)V

    .line 662
    new-instance v1, Lcom/google/android/mail/common/base/CharMatcher$15;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/google/android/mail/common/base/CharMatcher$15;-><init>(Lcom/google/android/mail/common/base/CharMatcher;Lcom/google/android/mail/common/base/CharMatcher$LookupTable;)V

    #v1=(Reference);
    return-object v1
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .parameter "sequence"

    .prologue
    .line 842
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, string:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/android/mail/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 844
    .local v1, pos:I
    #v1=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-ne v1, v4, :cond_0

    .line 867
    .end local v3           #string:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return-object v3

    .line 848
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    #v0=(Uninit);v2=(Uninit);v5=(Uninit);
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 849
    .local v0, chars:[C
    #v0=(Reference);
    const/4 v2, 0x1

    .line 854
    .local v2, spread:I
    :goto_1
    #v2=(Integer);v5=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    .line 856
    :goto_2
    #v4=(Integer);
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 867
    new-instance v3, Ljava/lang/String;

    .end local v3           #string:Ljava/lang/String;
    #v3=(UninitRef);
    const/4 v4, 0x0

    #v4=(Null);
    sub-int v5, v1, v2

    #v5=(Integer);
    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    #v3=(Reference);
    goto :goto_0

    .line 859
    .restart local v3       #string:Ljava/lang/String;
    :cond_1
    #v4=(Integer);v5=(Conflicted);
    aget-char v4, v0, v1

    #v4=(Char);
    invoke-virtual {p0, v4}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 862
    :cond_2
    sub-int v4, v1, v2

    #v4=(Integer);
    aget-char v5, v0, v1

    #v5=(Char);
    aput-char v5, v0, v4

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 5
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 901
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, string:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/google/android/mail/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 903
    .local v2, pos:I
    #v2=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-ne v2, v4, :cond_0

    .line 913
    .end local v3           #string:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Integer);
    return-object v3

    .line 906
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v4=(Byte);
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 907
    .local v0, chars:[C
    #v0=(Reference);
    aput-char p2, v0, v2

    .line 908
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_1
    #v1=(Integer);
    array-length v4, v0

    #v4=(Integer);
    if-ge v1, v4, :cond_2

    .line 909
    aget-char v4, v0, v1

    #v4=(Char);
    invoke-virtual {p0, v4}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 910
    aput-char p2, v0, v1

    .line 908
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 913
    :cond_2
    #v4=(Integer);
    new-instance v3, Ljava/lang/String;

    .end local v3           #string:Ljava/lang/String;
    #v3=(UninitRef);
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    #v3=(Reference);
    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    const/4 v10, -0x1

    .line 934
    #v10=(Byte);
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 935
    .local v4, replacementLen:I
    #v4=(Integer);
    if-nez v4, :cond_1

    .line 936
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 960
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v5

    .line 938
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const/4 v6, 0x1

    #v6=(One);
    if-ne v4, v6, :cond_2

    .line 939
    const/4 v6, 0x0

    #v6=(Null);
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    #v6=(Char);
    invoke-virtual {p0, p1, v6}, Lcom/google/android/mail/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    goto :goto_0

    .line 942
    :cond_2
    #v5=(Uninit);v6=(One);
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, string:Ljava/lang/String;
    #v5=(Reference);
    invoke-virtual {p0, v5}, Lcom/google/android/mail/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 944
    .local v3, pos:I
    #v3=(Integer);
    if-eq v3, v10, :cond_0

    .line 948
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 949
    .local v1, len:I
    #v1=(Integer);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    int-to-double v6, v1

    #v6=(DoubleLo);v7=(DoubleHi);
    const-wide/high16 v8, 0x3ff8

    #v8=(LongLo);v9=(LongHi);
    mul-double/2addr v6, v8

    double-to-int v6, v6

    #v6=(Integer);
    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 951
    .local v0, buf:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const/4 v2, 0x0

    .line 953
    .local v2, oldpos:I
    :cond_3
    #v2=(Integer);
    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 955
    add-int/lit8 v2, v3, 0x1

    .line 956
    invoke-virtual {p0, v5, v2}, Lcom/google/android/mail/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 957
    if-ne v3, v10, :cond_3

    .line 959
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected setBits(Lcom/google/android/mail/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, c:C
    :goto_0
    #v0=(Char);v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/CharMatcher$LookupTable;->set(C)V

    .line 689
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

    .line 693
    return-void

    :cond_1
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 6
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/CharMatcher;->negate()Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5, p1}, Lcom/google/android/mail/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1094
    .local v2, first:I
    #v2=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-ne v2, v5, :cond_0

    .line 1095
    const-string v5, ""

    .line 1111
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);
    return-object v5

    .line 1097
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Byte);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    #v5=(Integer);
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1098
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const/4 v4, 0x0

    .line 1099
    .local v4, inMatchingGroup:Z
    #v4=(Null);
    move v3, v2

    .local v3, i:I
    :goto_1
    #v1=(Conflicted);v3=(Integer);v4=(Boolean);
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1100
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1101
    .local v1, c:C
    #v1=(Char);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p0, v5}, Lcom/google/android/mail/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 1102
    const/4 v4, 0x1

    .line 1099
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1104
    :cond_1
    if-eqz v4, :cond_2

    .line 1105
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1106
    const/4 v4, 0x0

    .line 1108
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1111
    .end local v1           #c:C
    :cond_3
    #v1=(Conflicted);v5=(Integer);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    goto :goto_0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "sequence"

    .prologue
    .line 979
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 983
    .local v2, len:I
    #v2=(Integer);
    const/4 v0, 0x0

    .local v0, first:I
    :goto_0
    #v0=(Integer);v3=(Conflicted);
    if-ge v0, v2, :cond_0

    .line 984
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    #v3=(Char);
    invoke-virtual {p0, v3}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 988
    :cond_0
    #v3=(Conflicted);
    add-int/lit8 v1, v2, -0x1

    .local v1, last:I
    :goto_1
    #v1=(Integer);
    if-le v1, v0, :cond_1

    .line 989
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    #v3=(Char);
    invoke-virtual {p0, v3}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 994
    :cond_1
    #v3=(Conflicted);
    add-int/lit8 v3, v1, 0x1

    #v3=(Integer);
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 983
    .end local v1           #last:I
    :cond_2
    #v1=(Uninit);v3=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    .restart local v1       #last:I
    :cond_3
    #v1=(Integer);
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
