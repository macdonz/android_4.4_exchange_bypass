.class public final enum Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;
.super Ljava/lang/Enum;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

.field public static final enum NORMALIZE:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

.field public static final enum PRESERVE_ALL:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

.field public static final enum PRESERVE_VALID:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 84
    #v2=(Null);
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(UninitRef);
    const-string v1, "NORMALIZE"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->NORMALIZE:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(UninitRef);
    const-string v1, "PRESERVE_VALID"

    invoke-direct {v0, v1, v3}, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->PRESERVE_VALID:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(UninitRef);
    const-string v1, "PRESERVE_ALL"

    invoke-direct {v0, v1, v4}, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->PRESERVE_ALL:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->NORMALIZE:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->PRESERVE_VALID:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->PRESERVE_ALL:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->$VALUES:[Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;
    .locals 1
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    return-object v0
.end method

.method public static values()[Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->$VALUES:[Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    return-object v0
.end method
